#!/bin/bash
# =====================================================
# IMMortalWrt 25.12.x 推荐增强版
#
# iStore + OpenClash Meta + PassWall2
# KMS + 文件服务 + DDNS + VPN
#
# 家庭软路由优化配置
# =====================================================


# ================= iStore 软件中心 =================
# 软件管理中心

CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
luci-app-store 



# ================= 首页/网络向导 =================
# 依赖 iStore

CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
luci-i18n-quickstart-zh-cn"



# ================= 文件管理 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
bash \
quickfile \
luci-app-quickfile \
luci-i18n-quickfile-zh-cn"



# ================= 主题 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
luci-theme-aurora \
luci-app-aurora-config \
luci-i18n-aurora-config-zh-cn"



# ================= 分区扩容 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
luci-app-partexp \
luci-i18n-partexp-zh-cn"



# ================= 流量监控 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
bandix \
luci-app-bandix \
luci-i18n-bandix-zh-cn"



# =====================================================
# 代理核心
# =====================================================


# ================= PassWall2 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
geoview \
xray-core \
sing-box \
hysteria \
kmod-nft-socket \
kmod-nft-tproxy \
luci-app-passwall2 \
luci-i18n-passwall2-zh-cn"



# ================= OpenClash Meta =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
luci-app-openclash \
luci-compat \
kmod-tun \
kmod-inet-diag \
kmod-nft-tproxy \
bash \
curl \
ip-full \
unzip"



# ================= VPN =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
luci-proto-wireguard"



# ================= 内网穿透 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
luci-i18n-zerotier-zh-cn \
luci-i18n-frpc-zh-cn \
luci-i18n-ddns-go-zh-cn"



# ================= 文件服务 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
luci-i18n-samba4-zh-cn \
luci-i18n-filebrowser-go-zh-cn"



# ================= 下载工具 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
luci-i18n-aria2-zh-cn"



# ================= KMS服务 =================
# Windows / Office KMS激活服务

CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
vlmcsd \
luci-app-vlmcsd \
luci-i18n-vlmcsd-zh-cn"



# ================= 网络优化 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
luci-i18n-adblock-fast-zh-cn \
luci-i18n-smartdns-zh-cn \
luci-i18n-statistics-zh-cn"



# ================= Web终端 =================
# 方便维护

CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
luci-i18n-ttyd-zh-cn"



# ================= 网络唤醒 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
luci-i18n-wol-zh-cn"



# ================= 自动重启 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
luci-i18n-autoreboot-zh-cn"



# ================= UPnP =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
luci-i18n-upnp-zh-cn"



# ================= 磁盘管理 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
luci-i18n-diskman-zh-cn"



echo "CUSTOM_PACKAGES=$CUSTOM_PACKAGES"
