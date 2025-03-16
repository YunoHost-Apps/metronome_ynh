<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# Metronome voor Yunohost

[![Integratieniveau](https://apps.yunohost.org/badge/integration/metronome)](https://ci-apps.yunohost.org/ci/apps/metronome/)
![Mate van functioneren](https://apps.yunohost.org/badge/state/metronome)
![Onderhoudsstatus](https://apps.yunohost.org/badge/maintained/metronome)

[![Metronome met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=metronome)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je Metronome snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

Metronome is a light-weight [XMPP](https://en.wikipedia.org/wiki/XMPP) instant-messaging server written in Lua and based on Prosody. It's aimed to provide advanced features while maintaining a modest resource usage. More details on [the official website](https://archon.im/metronome-im/).

To use Metronome / XMPP, you will also need a client, for example:

- [Movim](https://movim.eu) - Web - available as a YunoHost app
- [ConverseJS](https://conversejs.org) - Web - available as a YunoHost app
- [Gajim](https://gajim.org/) - Linux, Windows
- [Dino](https://dino.im) - Linux
- [Thunderbird](https://www.thunderbird.net/fr/) - Linux, Windows, MacOS
- [Conversations](https://conversations.im/) - Android

You will be able to connect using `your_yunohost_username@domain.tld` + your password (i.e. your credentials are the same as for email, but for instant messaging)


**Geleverde versie:** 4.0.4~ynh1
## Documentatie en bronnen

- Officiele website van de app: <https://archon.im/metronome-im/>
- Officiele beheerdersdocumentatie: <https://archon.im/metronome-im/documentation/>
- Upstream app codedepot: <https://github.com/maranda/metronome>
- YunoHost-store: <https://apps.yunohost.org/app/metronome>
- Meld een bug: <https://github.com/YunoHost-Apps/metronome_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/metronome_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/metronome_ynh/tree/testing --debug
of
sudo yunohost app upgrade metronome -u https://github.com/YunoHost-Apps/metronome_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>
