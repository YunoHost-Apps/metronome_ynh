To be able to effectively use Metronome / your XMPP server, you need:
- to expose port 5222 and 5269. You probably don't need to do anything if your server is a VPS, but if you are self-hosting at home, you need [to configure port-forwarding](https://yunohost.org/isp_box_config) on your internet router like you probably already did for port 80, 443, etc.
- to add the following DNS records (they are also part of the recommended YunoHost configuration for `__DOMAIN__`):

```text
# Mandatory
_xmpp-client._tcp 3600 IN SRV 0 5 5222 __DOMAIN__.
_xmpp-server._tcp 3600 IN SRV 0 5 5269 __DOMAIN__.

# For muc (chatrooms) and file uploads
muc 3600 IN CNAME __DOMAIN__.
xmpp-upload 3600 IN CNAME __DOMAIN__.
```

- for the MUC/chatrooms and file upload features to be fully functional, you will need to force-regenerate the certificate for `__DOMAIN__` after configuring the DNS records.
