FROM openwrtorg/rootfs:x86_64-19.07.4

RUN sed -i 's|http://downloads.openwrt.org|http://mirrors.internal.skyzh.xyz/openwrt|g' /etc/opkg/distfeeds.conf
RUN mkdir /var/lock

CMD opkg update && opkg install shadowsocks-libev-ss-local shadowsocks-libev-ss-redir shadowsocks-libev-ss-rules shadowsocks-libev-ss-tunnel luci-app-shadowsocks-libev
