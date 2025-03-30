#!/bin/bash

# 添加额外 feed 源
sed -i '$a src-git helloworld https://github.com/fw876/helloworld.git' ./feeds.conf.default
#sed -i '$a src-git 5gmodem https://github.com/Siriling/5G-Modem-Support.git' ./feeds.conf.default
sed -i '$a src-git modem https://github.com/FUjr/modem_feeds.git' ./feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages.git' ./feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small-package.git' ./feeds.conf.default
sed -i '$a src-git fancontrol https://github.com/JiaY-shi/fancontrol.git' ./feeds.conf.default
#sed -i '$a src-git jell https://github.com/kenzok8/jell.git' ./feeds.conf.default

# ===== 【重点】锁定 NodeJS 版本到 20.17.0，避免 cares_wrap.h 报错 =====
echo "回退 NodeJS feed 到 v20.17.0，防止 c-ares API 编译失败"
cd feeds/packages/lang/node
git checkout 5f06f36
cd ../../../..
