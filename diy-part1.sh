#!/bin/bash

# 添加额外 feed 源
sed -i '$a src-git helloworld https://github.com/fw876/helloworld.git' ./feeds.conf.default
#sed -i '$a src-git NueXini_Packages https://github.com/NueXini/NueXini_Packages.git' ./feeds.conf.default
#sed -i '$a src-git modem https://github.com/FUjr/modem_feeds.git' ./feeds.conf.default
#sed -i '$a src-git 5GModem https://github.com/mdsdtech/5G-Modem-Packages.git' ./feeds.conf.default
#sed -i '$a src-git small https://github.com/kenzok8/small-package.git' ./feeds.conf.default
#sed -i '$a src-git openappfilter https://github.com/destan19/OpenAppFilter.git' ./feeds.conf.default

