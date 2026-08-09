#!/bin/bash

# =================================================
# IMM 25.12.x
# OpenWrt 24.10
# 家庭软路由精选插件
# =================================================


# =========================
# LuCI主题
# =========================


# Argon主题（主推荐）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-argon luci-app-argon-config luci-i18n-argon-config-zh-cn"


# Aurora主题（备用）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-aurora luci-app-aurora-config luci-i18n-aurora-config-zh-cn"



# =========================
# 代理核心
# =========================


# OpenClash Meta
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-openclash luci-compat kmod-tun kmod-inet-diag kmod-nft-tproxy bash curl ip-full unzip"


# PassWall2备用
CUSTOM_PACKAGES="$CUSTOM_PACKAGES geoview xray-core sing-box hysteria kmod-nft-socket kmod-nft-tproxy luci-app-passwall2 luci-i18n-passwall2-zh-cn"



# =========================
# DNS / 去广告
# =========================


# AdGuard Home
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-adguardhome"


# Adblock-fast
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-adblock-fast-zh-cn"


# MosDNS
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-mosdns luci-i18n-mosdns-zh-cn"



# =========================
# 文件管理
# =========================


# FileBrowser
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filebrowser-zh-cn"



# =========================
# 系统维护
# =========================


# 高级重启
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-advanced-reboot-zh-cn"


# 看门狗
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-watchdog luci-i18n-watchdog-zh-cn"



# =========================
# KMS
# =========================


CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vlmcsd-zh-cn"



# =========================
# DDNS
# =========================


CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ddns-go-zh-cn"



# =========================
# 流量统计
# =========================


CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-bandix luci-i18n-bandix-zh-cn"


CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vnstat2-zh-cn"



# =========================
# Task计划
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
# 网络优化
# =========================


CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-turboacc"



echo $CUSTOM_PACKAGES
