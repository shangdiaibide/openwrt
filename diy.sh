#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
git clone https://github.com/tty228/luci-app-serverchan.git package/serverchan
./scripts/feeds update -a
./scripts/feeds install -a
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate
