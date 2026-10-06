# Changelog

## [0.2.0](https://github.com/vergissberlin/railwayapp-homeassistant/compare/railwayapp-homeassistant-v0.1.0...railwayapp-homeassistant-v0.2.0) (2026-08-20)


### Features

* add railway-template.json metadata ([1f45279](https://github.com/vergissberlin/railwayapp-homeassistant/commit/1f45279367370b35fbaaa42b42d918c13c06268f))


### Bug Fixes

* actually wipe dotfiles (.storage) too, not just visible entries ([24cc53c](https://github.com/vergissberlin/railwayapp-homeassistant/commit/24cc53cdae42f3207218851f90e9bb6db1932353))
* add missing MIT LICENSE file ([#8](https://github.com/vergissberlin/railwayapp-homeassistant/issues/8)) ([7c59c6b](https://github.com/vergissberlin/railwayapp-homeassistant/commit/7c59c6b62a34f94fe3d53c5b1fcd6c176abd4559))
* dedupe footer marker and resync badge footer ([#6](https://github.com/vergissberlin/railwayapp-homeassistant/issues/6)) ([3fb6300](https://github.com/vergissberlin/railwayapp-homeassistant/commit/3fb63007857a9435b21ffe861b1e8f4bb13d204d))
* enforce persistent volume guidance for Railway deploys ([f91e575](https://github.com/vergissberlin/railwayapp-homeassistant/commit/f91e575992cae33fdadae20c52786aabb7264de6))
* force socat to IPv4 so trusted_proxies 127.0.0.1 actually matches ([bac5b31](https://github.com/vergissberlin/railwayapp-homeassistant/commit/bac5b31b67affa50c94a53c24001888a6ba7f359))
* make Home Assistant Railway-ready behind proxy ([cdcb24f](https://github.com/vergissberlin/railwayapp-homeassistant/commit/cdcb24f4d71fd9ef40e391588b357e03a996299a))
* make proxy config block idempotent against persisted stale state ([e585e5a](https://github.com/vergissberlin/railwayapp-homeassistant/commit/e585e5a06946b0dd25b740d0a3a48b2939502ba2))
* pin to 2026.7.4 to avoid HTTP-integration YAML-to-UI migration break ([b5bcd23](https://github.com/vergissberlin/railwayapp-homeassistant/commit/b5bcd23c46c8e27cf59b7033d4934c13bcba80b3))
* trust 127.0.0.1 proxy hop to fix 400 Bad Request behind socat ([74ec34b](https://github.com/vergissberlin/railwayapp-homeassistant/commit/74ec34bd735f807a9c2982b368206546e27997c0))
* wipe volume contents in place instead of removing the mount point ([207d7e7](https://github.com/vergissberlin/railwayapp-homeassistant/commit/207d7e71252e0f3b27dd66732ccd93f19d9e18cb))


### Documentation

* add AGENT guide for template maintenance ([2773a61](https://github.com/vergissberlin/railwayapp-homeassistant/commit/2773a61fc6731a52153fae11e3fb05bd158f79b6))
* add app icon asset and README preview ([0767fba](https://github.com/vergissberlin/railwayapp-homeassistant/commit/0767fba9e198f2a2317dbdbf28b5b81c399b2917))
* add architecture diagram to README ([#7](https://github.com/vergissberlin/railwayapp-homeassistant/issues/7)) ([3996fa5](https://github.com/vergissberlin/railwayapp-homeassistant/commit/3996fa53297f546e14ca2caa74eb2749684986d9))
* add flat template header banner with software logo ([8b9fe89](https://github.com/vergissberlin/railwayapp-homeassistant/commit/8b9fe89b3c064d5132d5fccc2fcb31d5a877bdbc))
* add referral code to deploy button ([eae52bc](https://github.com/vergissberlin/railwayapp-homeassistant/commit/eae52bcc63b07b0c87f8bf1a13a1bb6ca809b4fb))
* add software badge footer to template README ([66c7797](https://github.com/vergissberlin/railwayapp-homeassistant/commit/66c7797f9858815eb7af24bdf867b66185ed88db))
* add template docs for Railway publishing ([1f56f51](https://github.com/vergissberlin/railwayapp-homeassistant/commit/1f56f512ca71dca898e128b92ddcebdccd3718f1))
* normalize deploy button links to referral schema ([a659a11](https://github.com/vergissberlin/railwayapp-homeassistant/commit/a659a11f58832fb509165185e63c8ca0ebd6f17d))
* refresh shared template footer badges ([e5a0e7c](https://github.com/vergissberlin/railwayapp-homeassistant/commit/e5a0e7c05eeea87b3a22e8431c2df89b67dd9cd3))
* replace README footer with shared badge footer ([80d0e6b](https://github.com/vergissberlin/railwayapp-homeassistant/commit/80d0e6b1f7b0334c0bffead5764826a349a1adbe))
* sync template header and cross-repo footer badges ([3228813](https://github.com/vergissberlin/railwayapp-homeassistant/commit/32288133193189a38925e0bd6b36ee809b808e00))
* sync template header and cross-repo footer badges ([b2c0055](https://github.com/vergissberlin/railwayapp-homeassistant/commit/b2c00556bdc497e1b7156e0c5c937420b32e5e6a))
* update footer section in README with consistent formatting and badge links ([1d6ddb6](https://github.com/vergissberlin/railwayapp-homeassistant/commit/1d6ddb6dbcc1ed90355ab1a25ea17daa6bf9699a))
* update README to use HTML for Home Assistant icon display ([6e8795e](https://github.com/vergissberlin/railwayapp-homeassistant/commit/6e8795ef0f1b0e5f98d056bcaa8c1c3f0058355c))
* use condensed shared footer badges in README ([36df57b](https://github.com/vergissberlin/railwayapp-homeassistant/commit/36df57b56acabde0e861fa586acdddafbbb3c18c))


### Chores

* add initial Railway template for homeassistant ([6dec330](https://github.com/vergissberlin/railwayapp-homeassistant/commit/6dec330b57749a894d2cafdc31f6a5167a8d3393))
* add release-please workflow and template polish ([50ea08b](https://github.com/vergissberlin/railwayapp-homeassistant/commit/50ea08b6073e93abcaf72007da37715203f9fd8f))
* Configure Renovate ([77e9563](https://github.com/vergissberlin/railwayapp-homeassistant/commit/77e9563b821abedfdc2392d85ad758cd2b057a7e))
* initialize github directory ([fb2a6b2](https://github.com/vergissberlin/railwayapp-homeassistant/commit/fb2a6b24d713e01b701721c8d667b598c1d08971))
* remove obsolete README from GitHub configuration ([b77352e](https://github.com/vergissberlin/railwayapp-homeassistant/commit/b77352eca2303fe41045d38637ea0ed77d2ffe46))
* remove temporary workspace-wipe hack ([433d3e4](https://github.com/vergissberlin/railwayapp-homeassistant/commit/433d3e4dbec1534019bd5107cd43b7ffaf758b4a))
* temporarily wipe stale 2026.8-era volume state before version downgrade ([2bf9c4f](https://github.com/vergissberlin/railwayapp-homeassistant/commit/2bf9c4f1852159d9ee2ce2488591da77f27b4831))
* update shared template footer ([4f86877](https://github.com/vergissberlin/railwayapp-homeassistant/commit/4f868772235229832fa23bfab9bde455c84ec1e5))
* update shared template footer ([4ad686e](https://github.com/vergissberlin/railwayapp-homeassistant/commit/4ad686e2655b1561a7ed2c1599e062e5c3e177e2))
