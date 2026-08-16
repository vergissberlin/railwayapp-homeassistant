#!/usr/bin/env sh
set -eu

CONFIG_DIR="${CONFIG_DIR:-/config}"
CONFIG_FILE="${CONFIG_DIR}/configuration.yaml"

mkdir -p "${CONFIG_DIR}"
touch "${CONFIG_FILE}"

# Railway traffic is forwarded through an internal reverse proxy, then relayed to Home
# Assistant's internal port by the socat hop below. That hop makes 127.0.0.1 the peer address
# Home Assistant actually sees, so it must be trusted alongside Railway's edge range - otherwise
# the still-genuine X-Forwarded-For header from Railway's edge is rejected as coming from an
# untrusted proxy and every request gets a 400 Bad Request.
if ! grep -q "RAILWAY_PROXY_CONFIG_START" "${CONFIG_FILE}"; then
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
fi

# Home Assistant binds to 8123 internally; expose Railway's dynamic PORT.
socat TCP-LISTEN:"${PORT}",fork,reuseaddr TCP:127.0.0.1:8123 &

exec /init
