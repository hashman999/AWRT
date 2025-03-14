#!/bin/bash

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' ./feeds.conf.default
#sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' ./feeds.conf.default
sed -i '$a src-git helloworld https://github.com/fw876/helloworld.git' ./feeds.conf.default
sed -i '$a src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main' ./feeds.conf.default
sed -i '$a src-git NueXini_Packages https://github.com/NueXini/NueXini_Packages.git' ./feeds.conf.default
sed -i '$a src-git modem https://github.com/FUjr/modem_feeds.git' ./feeds.conf.default
sed -i '$a src-git 5GModem https://github.com/mdsdtech/5G-Modem-Packages.git' ./feeds.conf.default

# homeproxy
git clone --depth=1 https://github.com/immortalwrt/homeproxy.git package/homeproxy
