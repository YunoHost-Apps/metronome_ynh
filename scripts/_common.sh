#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

if [[ $(lsb_release --codename --short) == "bookworm" ]]; then
	luaversion="5.4"
else
	luaversion="5.2"
fi

#=================================================
# PERSONAL HELPERS
#=================================================

_build_metronome() {
	pushd "$install_dir/sources"
		cp docker/config.unix ./
		sed -i '/CFLAGS=.*/s/$/ -Wno-deprecated-declarations/' config.unix
		make generate_log.install send_mail.install install \
			DESTDIR="$install_dir" \
			BIN="$install_dir/bin" \
			CONFIG="$install_dir/conf" \
			MODULES="$install_dir/modules" \
			SOURCE="$install_dir/lib" \
			DATA="$data_dir" \
			INSTALLEDCONFIG="$install_dir/conf" \
			INSTALLEDMODULES="$install_dir/modules" \
			INSTALLEDSOURCE="$install_dir/lib" \
			INSTALLEDDATA="$data_dir"
	popd
}

_metronome_nginx_read_permissions() {
	# nginx needs read access to metronome files for HTTP upload
	mkdir -p /home/yunohost.app/metronome/xmpp-upload
	chown metronome:www-data /home/yunohost.app/metronome
	chmod 750 /home/yunohost.app/metronome
	chown metronome:www-data /home/yunohost.app/metronome/xmpp-upload
	chmod 750 /home/yunohost.app/metronome/xmpp-upload
	chmod g+s /home/yunohost.app/metronome/xmpp-upload
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
