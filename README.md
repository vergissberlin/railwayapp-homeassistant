# Home Assistant

![Template Header](./template-header.svg)


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
<!-- footer -->
[![Airbyte](https://img.shields.io/badge/Airbyte-615EFF?style=for-the-badge&logo=airbyte&logoColor=white)](https://github.com/vergissberlin/railwayapp-airbyte)
[![Apache Airflow](https://img.shields.io/badge/Apache%20Airflow-017CEE?style=for-the-badge&logo=apacheairflow&logoColor=white)](https://github.com/vergissberlin/railwayapp-airflow)
[![CodiMD](https://img.shields.io/badge/CodiMD-0F766E?style=for-the-badge&logo=markdown&logoColor=white)](https://github.com/vergissberlin/railwayapp-codimd)
[![Email Service](https://img.shields.io/badge/Email%20Service-2563EB?style=for-the-badge&logo=maildotru&logoColor=white)](https://github.com/vergissberlin/railwayapp-email)
[![GitLab CE](https://img.shields.io/badge/GitLab%20CE-FC6D26?style=for-the-badge&logo=gitlab&logoColor=white)](https://github.com/vergissberlin/railwayapp-gitlab)
[![Grafana](https://img.shields.io/badge/Grafana-F46800?style=for-the-badge&logo=grafana&logoColor=white)](https://github.com/vergissberlin/railwayapp-grafana)
[![Home Assistant](https://img.shields.io/badge/Home%20Assistant-18BCF2?style=for-the-badge&logo=homeassistant&logoColor=white)](https://github.com/vergissberlin/railwayapp-homeassistant)
[![InfluxDB](https://img.shields.io/badge/InfluxDB-22ADF6?style=for-the-badge&logo=influxdb&logoColor=white)](https://github.com/vergissberlin/railwayapp-influxdb)
[![Mosquitto MQTT](https://img.shields.io/badge/Mosquitto%20MQTT-3C5280?style=for-the-badge&logo=eclipsemosquitto&logoColor=white)](https://github.com/vergissberlin/railwayapp-mqtt)
[![Node-RED](https://img.shields.io/badge/Node--RED-8F0000?style=for-the-badge&logo=nodered&logoColor=white)](https://github.com/vergissberlin/railwayapp-nodered)
[![OpenSearch](https://img.shields.io/badge/OpenSearch-005EB8?style=for-the-badge&logo=opensearch&logoColor=white)](https://github.com/vergissberlin/railwayapp-opensearch)
[![TYPO3 CMS](https://img.shields.io/badge/TYPO3%20CMS-FF8700?style=for-the-badge&logo=typo3&logoColor=white)](https://github.com/vergissberlin/railwayapp-typo3)
