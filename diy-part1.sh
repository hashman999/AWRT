#!/bin/bash

# 添加额外 feed 源
sed -i '$a src-git helloworld https://github.com/fw876/helloworld.git' ./feeds.conf.default
#sed -i '$a src-git NueXini_Packages https://github.com/NueXini/NueXini_Packages.git' ./feeds.conf.default
sed -i '$a src-git modem https://github.com/FUjr/modem_feeds.git' ./feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages.git' ./feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small-package.git' ./feeds.conf.default
sed -i '$a src-git src-git jell https://github.com/kenzok8/jell.git' ./feeds.conf.default

