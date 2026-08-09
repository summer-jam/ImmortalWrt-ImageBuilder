#!/bin/bash

# =================================================
# IMM 25.12.x 精选家庭软路由插件合集
# =================================================


# =========================
# LuCI 美化主题
# =========================

# Argon主题
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-argon luci-app-argon-config luci-i18n-argon-config-zh-cn"


# Aurora极光主题
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-aurora luci-app-aurora-config luci-i18n-aurora-config-zh-cn"



# =========================
# 代理插件
# =========================


# OpenClash Meta
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-openclash luci-compat kmod-tun kmod-inet-diag kmod-nft-tproxy bash curl ip-full unzip"


# PassWall2备用
CUSTOM_PACKAGES="$CUSTOM_PACKAGES geoview xray-core sing-box hysteria kmod-nft-socket kmod-nft-tproxy luci-app-passwall2 luci-i18n-passwall2-zh-cn"



# =========================
# 去广告
# =========================


# Adblock-fast
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-adblock-fast-zh-cn"



# =========================
# 文件管理
# =========================


# QuickFile by sbwml
CUSTOM_PACKAGES="$CUSTOM_PACKAGES bash quickfile luci-app-quickfile luci-i18n-quickfile-zh-cn"



# =========================
# 系统管理
# =========================


# 自动重启
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-autoreboot-zh-cn"


# 高级重启
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-advanced-reboot-zh-cn"



# =========================
# KMS激活
# =========================


CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vlmcsd-zh-cn"



# =========================
# DDNS
# =========================


# DDNS-GO
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ddns-go-zh-cn"



# =========================
# 流量统计
# =========================


CUSTOM_PACKAGES="$CUSTOM_PACKAGES bandix luci-app-bandix luci-i18n-bandix-zh-cn"


CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vnstat2-zh-cn"



# =========================
# 计划任务
# =========================


CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-taskplan luci-i18n-taskplan-zh-cn"



# =========================
# 内网穿透
# =========================


# ZeroTier
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-zerotier-zh-cn"


# FRP客户端
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-frpc-zh-cn"



# =========================
# VPN
# =========================


# WireGuard
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-proto-wireguard"



# Tailscale
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-tailscale-community luci-i18n-tailscale-community-zh-cn"



# =========================
# 网络唤醒
# =========================


CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wol-zh-cn"



# =========================
# 网络工具
# =========================


# 网络诊断工具
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-netdata-zh-cn"


# HTTPS DNS代理备用
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-https-dns-proxy-zh-cn"



echo "Custom packages loaded:"
echo "$CUSTOM_PACKAGES"
