#!/bin/bash

# 添加额外 feed 源
sed -i '$a src-git helloworld https://github.com/fw876/helloworld.git' ./feeds.conf.default
sed -i '$a src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main' ./feeds.conf.default
sed -i '$a src-git NueXini_Packages https://github.com/NueXini/NueXini_Packages.git' ./feeds.conf.default
sed -i '$a src-git modem https://github.com/FUjr/modem_feeds.git' ./feeds.conf.default
sed -i '$a src-git 5GModem https://github.com/mdsdtech/5G-Modem-Packages.git' ./feeds.conf.default
sed -i '$a src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git' ./feeds.conf.default
sed -i '$a src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall.git' ./feeds.conf.default
sed -i '$a src-git openclash https://github.com/vernesong/OpenClash.git' ./feeds.conf.default
sed -i '$a src-git kenzok8 https://github.com/kenzok8/openwrt-packages.git' ./feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small.git' ./feeds.conf.default
sed -i '$a src-git argon https://github.com/jerrykuku/openwrt-package.git' ./feeds.conf.default
sed -i '$a src-git lucithemedesign https://github.com/gngpp/luci-theme-design.git' ./feeds.conf.default
sed -i '$a src-git HomeRedirect https://github.com/NueXini/HomeRedirect.git' ./feeds.conf.default
sed -i '$a src-git telegrambot https://github.com/NueXini/telegrambot-openwrt.git' ./feeds.conf.default
sed -i '$a src-git xmmmodem https://github.com/NueXini/xmm-modem.git' ./feeds.conf.default
sed -i '$a src-git cdnspeedtest https://github.com/mingxiaoyu/cdnspeedtest-openwrt.git' ./feeds.conf.default
sed -i '$a src-git openappfilter https://github.com/destan19/OpenAppFilter.git' ./feeds.conf.default
sed -i '$a src-git smartdns https://github.com/pymumu/luci-app-smartdns.git' ./feeds.conf.default
sed -i '$a src-git mosdns https://github.com/sbwml/luci-app-mosdns.git' ./feeds.conf.default
sed -i '$a src-git dockerman https://github.com/lisaac/luci-app-dockerman.git' ./feeds.conf.default

# 克隆额外插件到 package 目录
git clone --depth=1 https://github.com/immortalwrt/homeproxy.git package/homeproxy
