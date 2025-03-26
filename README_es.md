<!--
Este archivo README esta generado automaticamente<https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
No se debe editar a mano.
-->

# Metronome para YunoHost

[![Nivel de integración](https://apps.yunohost.org/badge/integration/metronome)](https://ci-apps.yunohost.org/ci/apps/metronome/)
![Estado funcional](https://apps.yunohost.org/badge/state/metronome)
![Estado En Mantención](https://apps.yunohost.org/badge/maintained/metronome)

[![Instalar Metronome con Yunhost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=metronome)

*[Leer este README en otros idiomas.](./ALL_README.md)*

> *Este paquete le permite instalarMetronome rapidamente y simplement en un servidor YunoHost.*  
> *Si no tiene YunoHost, visita [the guide](https://yunohost.org/install) para aprender como instalarla.*

## Descripción general

Metronome is a light-weight [XMPP](https://en.wikipedia.org/wiki/XMPP) instant-messaging server written in Lua and based on Prosody. It's aimed to provide advanced features while maintaining a modest resource usage. More details on [the official website](https://archon.im/metronome-im/).

To use Metronome / XMPP, you will also need a client, for example:

- [Movim](https://movim.eu) - Web - available as a YunoHost app
- [ConverseJS](https://conversejs.org) - Web - available as a YunoHost app
- [Gajim](https://gajim.org/) - Linux, Windows
- [Dino](https://dino.im) - Linux
- [Thunderbird](https://www.thunderbird.net/fr/) - Linux, Windows, MacOS
- [Conversations](https://conversations.im/) - Android

You will be able to connect using `your_yunohost_username@domain.tld` + your password (i.e. your credentials are the same as for email, but for instant messaging)


**Versión actual:** 4.0.4~ynh1
## Documentaciones y recursos

- Sitio web oficial: <https://archon.im/metronome-im/>
- Documentación administrador oficial: <https://archon.im/metronome-im/documentation/>
- Repositorio del código fuente oficial de la aplicación : <https://github.com/maranda/metronome>
- Catálogo YunoHost: <https://apps.yunohost.org/app/metronome>
- Reportar un error: <https://github.com/YunoHost-Apps/metronome_ynh/issues>

## Información para desarrolladores

Por favor enviar sus correcciones a la [rama `testing`](https://github.com/YunoHost-Apps/metronome_ynh/tree/testing).

Para probar la rama `testing`, sigue asÍ:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/metronome_ynh/tree/testing --debug
o
sudo yunohost app upgrade metronome -u https://github.com/YunoHost-Apps/metronome_ynh/tree/testing --debug
```

**Mas informaciones sobre el empaquetado de aplicaciones:** <https://yunohost.org/packaging_apps>
