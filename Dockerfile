# Pinned to the last release before the 2026.8 HTTP-integration migration: starting in 2026.8,
# trusted_proxies moved from configuration.yaml to the UI and only takes effect once an admin
# confirms the imported settings within 5 minutes of the first restart - impossible on a headless
# first deploy where no admin account exists yet, so YAML-configured proxies were silently
# reverted and every request behind Railway's proxy got a 400 "untrusted proxy" rejection.
FROM ghcr.io/home-assistant/home-assistant:2026.7.4

COPY --chmod=0755 docker-entrypoint.sh /usr/local/bin/railway-homeassistant-entrypoint
