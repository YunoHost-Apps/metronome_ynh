Pour pouvoir utiliser Metronome / votre serveur XMPP, il est nécessaire:
- d'exposer les port 5222 et 5269. Il n'y a sans doute rien à faire si votre serveur est un VPS, mais si vous êtes hébergés "à la maison", il faut [configurer des redirections de port](https://yunohost.org/isp_box_config) sur votre box Internet comme vous l'avez sans doute fait pour les ports 80, 443, etc.
- d'ajouter les enregistrements DNS suivants (ils sont aussi maintenant ajoutés à la configuration DNS recommandée pour `__DOMAIN__`):

```text
# Obligatoires
_xmpp-client._tcp 3600 IN SRV 0 5 5222 __DOMAIN__.
_xmpp-server._tcp 3600 IN SRV 0 5 5269 __DOMAIN__.

# Pour le muc (salons) et partage de fichier:
muc 3600 IN CNAME __DOMAIN__.
xmpp-upload 3600 IN CNAME __DOMAIN__.
```

- pour que les fonctionnalités de MUC/salons et partage de fichier fonctionnent, il vous forcer la regénération du certificat pour `__DOMAIN__` après que les enregistrements DNS aient été configurés.
