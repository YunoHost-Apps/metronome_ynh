VirtualHost "__DOMAIN__"
  enable = true
  ssl = {
    key = "/etc/yunohost/certs/__DOMAIN__/key.pem";
    certificate = "/etc/yunohost/certs/__DOMAIN__/crt.pem";
  }
  authentication = "ldap2"
  ldap = {
     hostname      = "localhost",
     user = {
       basedn        = "ou=users,dc=yunohost,dc=org",
       filter        = "(&(objectClass=posixAccount)(mail=*@__DOMAIN__)(permission=cn=__APP__.main,ou=permission,dc=yunohost,dc=org))",
       usernamefield = "mail",
       namefield     = "cn",
       },
  }

  -- Discovery items
  disco_items = {
    { "muc.__DOMAIN__" },
    { "pubsub.__DOMAIN__" },
    { "vjud.__DOMAIN__" },
    { "xmpp-upload.__DOMAIN__" },
  };

------ Components ------
-- You can specify components to add hosts that provide special services,
-- like multi-user conferences, and transports.

---Set up a MUC (multi-user chat) room server
Component "muc.__DOMAIN__" "muc"
  name = "__DOMAIN__ Chatrooms"

  ssl = {
    key = "/etc/yunohost/certs/__DOMAIN__/key.pem";
    certificate = "/etc/yunohost/certs/__DOMAIN__/crt.pem";
  }

  modules_enabled = {
    "muc_limits";
    "muc_log";
    "muc_log_mam";
    "muc_log_http";
    "muc_vcard";
  }

  muc_event_rate = 0.5
  muc_burst_factor = 10
  room_default_config = {
    logging = true,
    persistent = true
  };

---Set up a PubSub server
Component "pubsub.__DOMAIN__" "pubsub"
  name = "__DOMAIN__ Publish/Subscribe"

  unrestricted_node_creation = true -- Anyone can create a PubSub node (from any server)

---Set up a HTTP Upload service
Component "xmpp-upload.__DOMAIN__" "http_upload"
  name = "__DOMAIN__ Sharing Service"

  http_file_path = "__DATA_DIR__/xmpp-upload/"
  http_external_url = "https://xmpp-upload.__DOMAIN__:443"
  http_file_base_path = "/upload"
  http_file_size_limit = 6*1024*1024
  http_file_quota = 60*1024*1024
  http_upload_file_size_limit = 100 * 1024 * 1024 -- bytes
  http_upload_quota = 10 * 1024 * 1024 * 1024 -- bytes

  http_file_add_mime_types = {
    ["pdf"] = "application/pdf",
    ["doc"] = "application/msword",
    ["docx"] = "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
    ["xlsx"] = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
    ["pptx"] = "application/vnd.openxmlformats-officedocument.presentationml.presentation",
    ["json"] = "application/json",
    ["md"] = "text/markdown",
    ["zip"] = "application/zip",
    ["rar"] = "application/x-rar-compressed",
    ["svg"] = "image/svg+xml",
    ["webp"] = "image/webp"
  }

---Set up a VJUD service
Component "vjud.__DOMAIN__" "vjud"
  vjud_disco_name = "__DOMAIN__ User Directory"
