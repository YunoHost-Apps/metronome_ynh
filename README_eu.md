<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Metronome YunoHost-erako

[![Integrazio maila](https://apps.yunohost.org/badge/integration/metronome)](https://ci-apps.yunohost.org/ci/apps/metronome/)
![Funtzionamendu egoera](https://apps.yunohost.org/badge/state/metronome)
![Mantentze egoera](https://apps.yunohost.org/badge/maintained/metronome)

[![Instalatu Metronome YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=metronome)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Metronome YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

Metronome is a light-weight [XMPP](https://en.wikipedia.org/wiki/XMPP) instant-messaging server written in Lua and based on Prosody. It's aimed to provide advanced features while maintaining a modest resource usage. More details on [the official website](https://archon.im/metronome-im/).

To use Metronome / XMPP, you will also need a client, for example:

- [Movim](https://movim.eu) - Web - available as a YunoHost app
- [ConverseJS](https://conversejs.org) - Web - available as a YunoHost app
- [Gajim](https://gajim.org/) - Linux, Windows
- [Dino](https://dino.im) - Linux
- [Thunderbird](https://www.thunderbird.net/fr/) - Linux, Windows, MacOS
- [Conversations](https://conversations.im/) - Android

You will be able to connect using `your_yunohost_username@domain.tld` + your password (i.e. your credentials are the same as for email, but for instant messaging)


**Paketatutako bertsioa:** 4.0.4~ynh2
## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://archon.im/metronome-im/>
- Administratzaileen dokumentazio ofiziala: <https://archon.im/metronome-im/documentation/>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/maranda/metronome>
- YunoHost Denda: <https://apps.yunohost.org/app/metronome>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/metronome_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/metronome_ynh/tree/testing).

`testing` abarra probatzeko, honakoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/metronome_ynh/tree/testing --debug
edo
sudo yunohost app upgrade metronome -u https://github.com/YunoHost-Apps/metronome_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
