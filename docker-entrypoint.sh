#!/usr/bin/env sh
set -eu

CONFIG_DIR="${CONFIG_DIR:-/config}"
CONFIG_FILE="${CONFIG_DIR}/configuration.yaml"

# TEMPORARY one-time reset: this volume already booted several times on Home Assistant 2026.8.x,
# which can write .storage in a format the 2026.7.4 downgrade below doesn't understand. No real
# configuration exists yet (onboarding was never completed), so wipe it once for a clean first
# boot on the pinned version. Remove this block after the next successful deploy.
rm -rf "${CONFIG_DIR:?}"/*

mkdir -p "${CONFIG_DIR}"
touch "${CONFIG_FILE}"

# Railway traffic is forwarded through an internal reverse proxy, then relayed to Home
# Assistant's internal port by the socat hop below. That hop makes 127.0.0.1 the peer address
# Home Assistant actually sees, so it must be trusted alongside Railway's edge range - otherwise
# the still-genuine X-Forwarded-For header from Railway's edge is rejected as coming from an
# untrusted proxy and every request gets a 400 Bad Request.
# configuration.yaml lives on the persistent volume, so a stale block from an older image
# would survive untouched forever if we only appended-when-missing. Strip any previous
# RAILWAY_PROXY_CONFIG block first so redeploys always pick up the current trusted-proxies list.
if grep -q "RAILWAY_PROXY_CONFIG_START" "${CONFIG_FILE}"; then
  sed -i '/# RAILWAY_PROXY_CONFIG_START/,/# RAILWAY_PROXY_CONFIG_END/d' "${CONFIG_FILE}"
fi

cat >> "${CONFIG_FILE}" <<'EOF'

# RAILWAY_PROXY_CONFIG_START
http:
  use_x_forwarded_for: true
  trusted_proxies:
    - 100.64.0.0/10
    - 127.0.0.1
    - ::1
# RAILWAY_PROXY_CONFIG_END
EOF

# Home Assistant binds to 8123 internally; expose Railway's dynamic PORT.
# Forced to IPv4 (-4): on a dual-stack socket, an IPv4 connection to 127.0.0.1 is otherwise seen
# by Home Assistant as the IPv4-mapped IPv6 peer "::ffff:127.0.0.1", which doesn't match a plain
# "127.0.0.1" trusted_proxies entry - Home Assistant then still logs the forwarded header as
# coming from an untrusted proxy even though 127.0.0.1 is listed above.
socat -4 TCP-LISTEN:"${PORT}",fork,reuseaddr TCP:127.0.0.1:8123 &

exec /init
