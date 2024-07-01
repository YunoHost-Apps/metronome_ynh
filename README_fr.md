<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Metronome pour YunoHost

[![Niveau d’intégration](https://dash.yunohost.org/integration/metronome.svg)](https://ci-apps.yunohost.org/ci/apps/metronome/) ![Statut du fonctionnement](https://ci-apps.yunohost.org/ci/badges/metronome.status.svg) ![Statut de maintenance](https://ci-apps.yunohost.org/ci/badges/metronome.maintain.svg)

[![Installer Metronome avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=metronome)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Metronome rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

Metronome est un serveur de messagerie instantannée [XMPP](https://fr.wikipedia.org/wiki/XMPP) écrit en Lua et basé sur Prosody. Il vise à fournir des fonctionnalités avancées tout en restant modeste en terme d'utilisation des ressources. Plus de détails sur [le site officiel](https://archon.im/metronome-im/).

Pour utiliser Metronome / XMPP, vous aurez également besoin d'un client, par exemple :

- [Movim](https://movim.eu) - Web - disponible en tant qu'app YunoHost
- [ConverseJS](https://conversejs.org) - Web - disponible en tant qu'app YunoHost
- [Gajim](https://gajim.org/) - Linux, Windows
- [Dino](https://dino.im) - Linux
- [Thunderbird](https://www.thunderbird.net/fr/) - Linux, Windows, MacOS
- [Conversations](https://conversations.im/) - Android

Vous pourrez ensuite vous connecter avec `votre_identifiant_yunohost@domaine.tld` + votre mot de passe (c-à-d vos identifiants sont les même que pour le mail, mais pour la messagerie instantannée)


**Version incluse :** 4.0.3~ynh1
## Documentations et ressources

- Site officiel de l’app : <https://archon.im/metronome-im/>
- Documentation officielle de l’admin : <https://archon.im/metronome-im/documentation/>
- Dépôt de code officiel de l’app : <https://github.com/maranda/metronome>
- YunoHost Store : <https://apps.yunohost.org/app/metronome>
- Signaler un bug : <https://github.com/YunoHost-Apps/metronome_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/metronome_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/metronome_ynh/tree/testing --debug
ou
sudo yunohost app upgrade metronome -u https://github.com/YunoHost-Apps/metronome_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
