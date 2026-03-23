# Home Assistant

<img src="./railwayapp-homeassistant.svg" alt="Home Assistant Icon" width="144" />

Deploy Home Assistant on Railway using the official container image with Railway-ready proxy handling.

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/Ovsuk-?referralCode=2_sIT9&utm_medium=integration&utm_source=template&utm_campaign=generic)

## Files in this template

- `Dockerfile` uses `ghcr.io/home-assistant/home-assistant:stable`.
- `docker-entrypoint.sh` configures trusted reverse proxies and forwards Railway's dynamic `$PORT` to Home Assistant's internal `8123`.
- `railway.toml` defines start command, health check path, and restart policy.

## Environment variables

```bash
TZ=Europe/Berlin
```

Railway provides `PORT` automatically at runtime.

## Domain and health check

- Public domain is routed to service target port `8123`.
- Health check uses `/manifest.json`.
- First startup can take several minutes while Home Assistant initializes.

## Persistent storage

Attach a Railway volume and mount to:

- `/config`

## Notes

- Home Assistant expects reverse-proxy headers when deployed behind Railway edge.
- Local network auto-discovery integrations are limited in cloud environments.
- Keep `/config` on a persistent volume before adding integrations.

<!-- footer -->
[![Home Assistant](https://img.shields.io/badge/Home%20Assistant-18BCF2?style=for-the-badge&logo=homeassistant&logoColor=white)](https://github.com/vergissberlin/railwayapp-homeassistant)
