#!/bin/bash

# =================================================
# IMM 25.12.x
# OpenWrt 24.10
# 家庭软路由完整版
# iStore + OpenClash方案
# =================================================


# =========================
# iStore 软件中心
# =========================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-store"



# =========================
# LuCI主题美化
# =========================


# 首页和网络向导
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-quickstart-zh-cn"


# Argon主题
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-argon luci-app-argon-config luci-i18n-argon-config-zh-cn"


# Aurora极光主题
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


CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-zerotier-zh-cn"


CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-frpc-zh-cn"



# =========================
# VPN
# =========================


CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-proto-wireguard"


CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-tailscale-community luci-i18n-tailscale-community-zh-cn"



# =========================
# 网络唤醒
# =========================


CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wol-zh-cn"



# =========================
# 网络优化
# =========================


CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-turboacc"



echo "CUSTOM_PACKAGES:"
echo "$CUSTOM_PACKAGES"
