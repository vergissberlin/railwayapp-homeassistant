# Home Assistant

Deploy Home Assistant on Railway using the official container image.

## Environment variables

```bash
TZ=Europe/Berlin
```

## Persistent storage

Attach a Railway volume and mount to:

- `/config`

## Notes

- Home Assistant is usually run in a home network environment with local discovery.
- On Railway, cloud-only integrations work best.
