#!/bin/bash
cd openwrt
cat >> .config <<EOF
CONFIG_TARGET_rockchip=y
CONFIG_TARGET_rockchip_armv8=y
CONFIG_TARGET_rockchip_armv8_DEVICE_fastrhino_r66s=y

CONFIG_TARGET_KERNEL_PARTSIZE=50
CONFIG_TARGET_ROOTFS_PARTSIZE=450
# CONFIG_TARGET_ROOTFS_EXT4FS is not set
CONFIG_LIBMBEDTLS_HAVE_ARMV8CE_AES=y
CONFIG_HAS_TESTING_KERNEL=y
CONFIG_TESTING_KERNEL=y
CONFIG_LINUX_5_15=y

CONFIG_PACKAGE_6in4=y
# CONFIG_PACKAGE_adguardhome is not set
CONFIG_PACKAGE_bash=y
CONFIG_PACKAGE_blkid=y
CONFIG_PACKAGE_boost=y
CONFIG_PACKAGE_boost-date_time=y
CONFIG_PACKAGE_boost-program_options=y
CONFIG_PACKAGE_boost-system=y
CONFIG_PACKAGE_brook=y
CONFIG_PACKAGE_chinadns-ng=y
CONFIG_PACKAGE_coreutils-nohup=y
CONFIG_PACKAGE_haproxy=y
CONFIG_PACKAGE_hysteria=y
CONFIG_PACKAGE_ip6tables=y
CONFIG_PACKAGE_ip6tables-mod-nat=y
CONFIG_PACKAGE_iptables-mod-ipopt=y
CONFIG_PACKAGE_ipv6helper=y
CONFIG_PACKAGE_kcptun-client=y
CONFIG_PACKAGE_kcptun-config=y
CONFIG_PACKAGE_kmod-crypto-kpp=y
CONFIG_PACKAGE_kmod-crypto-lib-chacha20=y
CONFIG_PACKAGE_kmod-crypto-lib-chacha20poly1305=y
CONFIG_PACKAGE_kmod-crypto-lib-curve25519=y
CONFIG_PACKAGE_kmod-crypto-lib-poly1305=y
CONFIG_PACKAGE_kmod-inet-diag=y
CONFIG_PACKAGE_kmod-ipt-ipopt=y
CONFIG_PACKAGE_kmod-ipt-nat6=y
CONFIG_PACKAGE_kmod-iptunnel=y
CONFIG_PACKAGE_kmod-iptunnel4=y
CONFIG_PACKAGE_kmod-nf-nat6=y
CONFIG_PACKAGE_kmod-sit=y
CONFIG_PACKAGE_kmod-udptunnel4=y
CONFIG_PACKAGE_kmod-udptunnel6=y
CONFIG_PACKAGE_kmod-usb-printer=y
# CONFIG_PACKAGE_kmod-wireguard is not set
CONFIG_PACKAGE_libatomic=y
CONFIG_PACKAGE_libcap=y
CONFIG_PACKAGE_libcap-bin=y
CONFIG_PACKAGE_libcap-bin-capsh-shell="/bin/sh"
CONFIG_PACKAGE_libcares=y
CONFIG_PACKAGE_libevent2=y
CONFIG_PACKAGE_libgmp=y
CONFIG_PACKAGE_libltdl=y
CONFIG_PACKAGE_liblua5.3=y
CONFIG_PACKAGE_libmaxminddb=y
CONFIG_PACKAGE_libmbedtls=y
CONFIG_PACKAGE_libminiupnpc=y
CONFIG_PACKAGE_libmount=y
CONFIG_PACKAGE_libnatpmp=y
CONFIG_PACKAGE_libparted=y
CONFIG_PACKAGE_libreadline=y
CONFIG_PACKAGE_libruby=y
CONFIG_PACKAGE_libstdcpp=y
CONFIG_PACKAGE_libuv=y
CONFIG_PACKAGE_libwebsockets-full=y
CONFIG_PACKAGE_libyaml=y
CONFIG_PACKAGE_lsblk=y
CONFIG_PACKAGE_lua-maxminddb=y

# CONFIG_PACKAGE_luci-app-adguardhome is not set
# CONFIG_PACKAGE_luci-app-aliyundrive-fuse is not set
# CONFIG_PACKAGE_luci-app-mwan3 is not set
# CONFIG_PACKAGE_luci-app-mwan3helper is not set
# CONFIG_PACKAGE_luci-app-cpufreq is not set
# CONFIG_PACKAGE_luci-app-ddns is not set
# CONFIG_PACKAGE_luci-app-wireguard is not set
# CONFIG_PACKAGE_luci-i18n-aliyundrive-fuse-zh-cn is not set
# CONFIG_PACKAGE_luci-i18n-cpufreq-zh-cn is not set
# CONFIG_PACKAGE_luci-i18n-mwan3-zh-cn is not set
# CONFIG_PACKAGE_luci-i18n-mwan3helper-zh-cn is not set
# CONFIG_PACKAGE_luci-i18n-wireguard-zh-cn is not set
# CONFIG_PACKAGE_luci-proto-wireguard is not set
# CONFIG_PACKAGE_luci-app-argon-config is not set
# CONFIG_PACKAGE_mwan3 is not set
# CONFIG_PACKAGE_luci-app-alist is not set
CONFIG_PACKAGE_luci-app-diskman=y
CONFIG_PACKAGE_luci-app-netdata=y
CONFIG_PACKAGE_luci-app-ramfree=y
CONFIG_PACKAGE_luci-app-zerotier=y
CONFIG_PACKAGE_luci-compat=y
CONFIG_PACKAGE_luci-app-bypass=y
CONFIG_PACKAGE_luci-app-bypass_INCLUDE_Hysteria=y
CONFIG_PACKAGE_luci-app-bypass_INCLUDE_Kcptun=y
CONFIG_PACKAGE_luci-app-bypass_INCLUDE_NaiveProxy=y
CONFIG_PACKAGE_luci-app-bypass_INCLUDE_Socks5_Proxy=y
CONFIG_PACKAGE_luci-app-bypass_INCLUDE_V2ray_plugin=y
CONFIG_PACKAGE_luci-app-passwall=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_brook=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_chinadns-ng=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_dns2socks=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_dns2tcp=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_gn=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_hysteria=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_ipt2socks=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_microsocks=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_naiveproxy=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_pdnsd-alt=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_shadowsocks-rust=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_shadowsocksr-libev=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_simple-obfs=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_sing-box=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_ssocks=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_tcping=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_trojan=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_trojan-go=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_trojan-plus=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_v2ray-core=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_v2ray-plugin=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_xray-core=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_xray-plugin=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_v2ray-geoip=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_v2ray-geosite=y

CONFIG_PACKAGE_luci-app-openclash=y
CONFIG_PACKAGE_luci-app-ssr-plus=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_NONE_V2RAY=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_V2ray=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_Xray=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_ChinaDNS_NG=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_Hysteria=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_TUIC-Client=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_Shadow-TLS=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_IPT2Socks=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_Kcptun=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_NaiveProxy=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_Redsocks2=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_NONE_Client=y 
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Libev_Client=y 
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Client=y 
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_NONE_Server=y 
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Libev_Server=y 
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Server=y 
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Simple_Obfs=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_V2ray_Plugin=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Client=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Server=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Trojan=y

CONFIG_PACKAGE_luci-app-vssr=y
CONFIG_PACKAGE_luci-app-vssr_INCLUDE_Xray=y
CONFIG_PACKAGE_luci-app-vssr_INCLUDE_Trojan=y
CONFIG_PACKAGE_luci-app-vssr_INCLUDE_Kcptun=y
CONFIG_PACKAGE_luci-app-vssr_INCLUDE_Xray_plugin=y
CONFIG_PACKAGE_luci-app-vssr_INCLUDE_ShadowsocksR_Server=y

CONFIG_PACKAGE_luci-app-ttyd=y
# CONFIG_PACKAGE_luci-app-unblockmusic_INCLUDE_UnblockNeteaseMusic_Go is not set
CONFIG_PACKAGE_luci-app-usb-printer=y

CONFIG_PACKAGE_luci-i18n-vssr-zh-cn=y
CONFIG_PACKAGE_luci-i18n-ssr-plus-zh-cn=y
CONFIG_PACKAGE_luci-i18n-bypass-zh-cn=y
CONFIG_PACKAGE_luci-i18n-diskman-zh-cn=y
CONFIG_PACKAGE_luci-i18n-netdata-zh-cn=y
CONFIG_PACKAGE_luci-i18n-passwall-zh-cn=y
CONFIG_PACKAGE_luci-i18n-ramfree-zh-cn=y
CONFIG_PACKAGE_luci-i18n-ttyd-zh-cn=y
CONFIG_PACKAGE_luci-i18n-usb-printer-zh-cn=y
CONFIG_PACKAGE_luci-i18n-zerotier-zh-cn=y

CONFIG_PACKAGE_luci-proto-ipv6=y
CONFIG_PACKAGE_luci-theme-argon=y
CONFIG_PACKAGE_naiveproxy=y
CONFIG_PACKAGE_netdata=y
CONFIG_PACKAGE_odhcp6c=y
CONFIG_PACKAGE_odhcp6c_ext_cer_id=0
CONFIG_PACKAGE_odhcpd-ipv6only=y
CONFIG_PACKAGE_odhcpd_ipv6only_ext_cer_id=0
CONFIG_PACKAGE_p910nd=y
CONFIG_PACKAGE_parted=y
CONFIG_PACKAGE_redsocks2=y
CONFIG_PACKAGE_ruby=y
CONFIG_PACKAGE_ruby-bigdecimal=y
CONFIG_PACKAGE_ruby-date=y
CONFIG_PACKAGE_ruby-digest=y
CONFIG_PACKAGE_ruby-enc=y
CONFIG_PACKAGE_ruby-forwardable=y
CONFIG_PACKAGE_ruby-pstore=y
CONFIG_PACKAGE_ruby-psych=y
CONFIG_PACKAGE_ruby-stringio=y
CONFIG_PACKAGE_ruby-strscan=y
CONFIG_PACKAGE_ruby-yaml=y
CONFIG_PACKAGE_luci-app-smartdns=y
CONFIG_PACKAGE_luci-i18n-smartdns-zh-cn=y
CONFIG_PACKAGE_smartdns=y
CONFIG_PACKAGE_shadowsocks-libev-ss-local=y
CONFIG_PACKAGE_shadowsocks-libev-ss-redir=y
CONFIG_PACKAGE_shadowsocks-libev-ss-server=y
CONFIG_PACKAGE_shadowsocksr-libev-ssr-server=y
CONFIG_PACKAGE_smartmontools=y
CONFIG_PACKAGE_trojan=y
CONFIG_PACKAGE_trojan-go=y
CONFIG_PACKAGE_trojan-plus=y
CONFIG_PACKAGE_ttyd=y
CONFIG_PACKAGE_unzip=y
CONFIG_PACKAGE_v2ray-core=y
CONFIG_PACKAGE_v2ray-plugin=y
# CONFIG_PACKAGE_wireguard-tools is not set
CONFIG_PACKAGE_xray-plugin=y
CONFIG_PACKAGE_zerotier=y
CONFIG_PARTED_READLINE=y
CONFIG_boost-compile-visibility-hidden=y
CONFIG_boost-runtime-shared=y
CONFIG_boost-static-and-shared-libs=y
CONFIG_boost-variant-release=y
EOF
