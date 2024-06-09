<!--
N.B.: This README was automatically generated by <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
It shall NOT be edited by hand.
-->

# Metronome for YunoHost

[![Integration level](https://dash.yunohost.org/integration/metronome.svg)](https://dash.yunohost.org/appci/app/metronome) ![Working status](https://ci-apps.yunohost.org/ci/badges/metronome.status.svg) ![Maintenance status](https://ci-apps.yunohost.org/ci/badges/metronome.maintain.svg)

[![Install Metronome with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=metronome)

*[Read this README in other languages.](./ALL_README.md)*

> *This package allows you to install Metronome quickly and simply on a YunoHost server.*  
> *If you don't have YunoHost, please consult [the guide](https://yunohost.org/install) to learn how to install it.*

## Overview

Metronome is a light-weight [XMPP](https://en.wikipedia.org/wiki/XMPP) instant-messaging server written in Lua and based on Prosody. It's aimed to provide advanced features while maintaining a modest resource usage. More details on [the official website](https://archon.im/metronome-im/).

To use Metronome / XMPP, you will also need a client, for example:

- [Movim](https://movim.eu) - Web - available as a YunoHost app
- [ConverseJS](https://conversejs.org) - Web - available as a YunoHost app
- [Gajim](https://gajim.org/) - Linux, Windows
- [Dino](https://dino.im) - Linux
- [Thunderbird](https://www.thunderbird.net/fr/) - Linux, Windows, MacOS
- [Conversations](https://conversations.im/) - Android

You will be able to connect using `your_yunohost_username@domain.tld` + your password (i.e. your credentials are the same as for email, but for instant messaging)


**Shipped version:** 4.0.3~ynh1
## Documentation and resources

- Official app website: <https://archon.im/metronome-im/>
- Official admin documentation: <https://archon.im/metronome-im/documentation/>
- Upstream app code repository: <https://github.com/maranda/metronome>
- YunoHost Store: <https://apps.yunohost.org/app/metronome>
- Report a bug: <https://github.com/YunoHost-Apps/metronome_ynh/issues>

## Developer info

Please send your pull request to the [`testing` branch](https://github.com/YunoHost-Apps/metronome_ynh/tree/testing).

To try the `testing` branch, please proceed like that:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/metronome_ynh/tree/testing --debug
or
sudo yunohost app upgrade metronome -u https://github.com/YunoHost-Apps/metronome_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>
