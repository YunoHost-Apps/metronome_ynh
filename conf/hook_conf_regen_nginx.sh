#!/bin/bash

# This script is expeced to be called xx-nginx_$app
app=$(basename $0 | cut -d_ -f2-)
domain=$(yunohost app setting get $app domain)
data_dir=$(yunohost app setting get $app data_dir)
port_http=$(yunohost app setting get $app port_http)
action=$1
pending_dir=$4
nginx_domain_conf="${pending_dir}/../nginx/etc/nginx/conf.d/$domain.conf"

[[ "$action" == "pre" ]] || exit 0
[[ -e "$nginx_domain_conf" ]] || exit 0

# Add muc.$domain and xmpp-upload.$domain to the HTTP server
# such that we can obtain the SSL cert via acme-challenge
sed -zE "s/(listen \S*80;\n\s*server_name) [^\n]*;/\1 $domain muc.$domain xmpp-upload.$domain;/g" -i "$nginx_domain_conf"

cat << EOF >> $nginx_domain_conf
# XMPP-upload
server {
    listen 443 ssl http2;
    listen [::]:443 ssl http2;
    server_name xmpp-upload.$domain;
    root /dev/null;

    location /upload/ {
        alias $data_dir/xmpp-upload;
        # Pass all requests to metronome, except for GET and HEAD requests.
        limit_except GET HEAD {
          proxy_pass http://localhost:$port_http;
        }

        include proxy_params;
        add_header 'Access-Control-Allow-Origin' '*';
        add_header 'Access-Control-Allow-Methods' 'HEAD, GET, PUT, OPTIONS';
        add_header 'Access-Control-Allow-Headers' 'Authorization';
        add_header 'Access-Control-Allow-Credentials' 'true';
        client_max_body_size 105M; # Choose a value a bit higher than the max upload configured in XMPP server
    }

    include /etc/nginx/conf.d/security.conf.inc;

    ssl_certificate /etc/yunohost/certs/$domain/crt.pem;
    ssl_certificate_key /etc/yunohost/certs/$domain/key.pem;

    more_set_headers "Strict-Transport-Security : max-age=63072000; includeSubDomains; preload";
    # OCSP settings
    ssl_stapling on;
    ssl_stapling_verify on;
    ssl_trusted_certificate /etc/yunohost/certs/$domain/crt.pem;
    resolver 1.1.1.1 9.9.9.9 valid=300s;
    resolver_timeout 5s;

    access_log /var/log/nginx/xmpp-upload.$domain-access.log;
    error_log /var/log/nginx/xmpp-upload.$domain-error.log;
}
EOF
