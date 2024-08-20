<!--
NOTA: Este README foi creado automáticamente por <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON debe editarse manualmente.
-->

# Metronome para YunoHost

[![Nivel de integración](https://dash.yunohost.org/integration/metronome.svg)](https://ci-apps.yunohost.org/ci/apps/metronome/) ![Estado de funcionamento](https://ci-apps.yunohost.org/ci/badges/metronome.status.svg) ![Estado de mantemento](https://ci-apps.yunohost.org/ci/badges/metronome.maintain.svg)

[![Instalar Metronome con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=metronome)

*[Le este README en outros idiomas.](./ALL_README.md)*

> *Este paquete permíteche instalar Metronome de xeito rápido e doado nun servidor YunoHost.*  
> *Se non usas YunoHost, le a [documentación](https://yunohost.org/install) para saber como instalalo.*

## Vista xeral

Metronome is a light-weight [XMPP](https://en.wikipedia.org/wiki/XMPP) instant-messaging server written in Lua and based on Prosody. It's aimed to provide advanced features while maintaining a modest resource usage. More details on [the official website](https://archon.im/metronome-im/).

To use Metronome / XMPP, you will also need a client, for example:

- [Movim](https://movim.eu) - Web - available as a YunoHost app
- [ConverseJS](https://conversejs.org) - Web - available as a YunoHost app
- [Gajim](https://gajim.org/) - Linux, Windows
- [Dino](https://dino.im) - Linux
- [Thunderbird](https://www.thunderbird.net/fr/) - Linux, Windows, MacOS
- [Conversations](https://conversations.im/) - Android

You will be able to connect using `your_yunohost_username@domain.tld` + your password (i.e. your credentials are the same as for email, but for instant messaging)


**Versión proporcionada:** 4.0.3~ynh2
## Documentación e recursos

- Web oficial da app: <https://archon.im/metronome-im/>
- Documentación oficial para admin: <https://archon.im/metronome-im/documentation/>
- Repositorio de orixe do código: <https://github.com/maranda/metronome>
- Tenda YunoHost: <https://apps.yunohost.org/app/metronome>
- Informar dun problema: <https://github.com/YunoHost-Apps/metronome_ynh/issues>

## Info de desenvolvemento

Envía a túa colaboración á [rama `testing`](https://github.com/YunoHost-Apps/metronome_ynh/tree/testing).

Para probar a rama `testing`, procede deste xeito:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/metronome_ynh/tree/testing --debug
ou
sudo yunohost app upgrade metronome -u https://github.com/YunoHost-Apps/metronome_ynh/tree/testing --debug
```

**Máis info sobre o empaquetado da app:** <https://yunohost.org/packaging_apps>
