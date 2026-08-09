#!/bin/bash

# ============= IMM 25.12.x 推荐插件清单 =============
# ============= x86软路由（稳定精简版）=============
# ============= OpenClash + PassWall2 + iStore =======


# ===================================================
# iStore
# ===================================================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-store"

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-quickstart-zh-cn"


# ===================================================
# 文件管理
# ===================================================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filebrowser-go-zh-cn"

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filebrowser-zh-cn"


# ===================================================
# Aurora主题
# ===================================================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-aurora luci-app-aurora-config luci-i18n-aurora-config-zh-cn"


# ===================================================
# 分区扩容
# ===================================================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-partexp luci-i18n-partexp-zh-cn"


# ===================================================
# Bandix流量监控
# ===================================================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES bandix luci-app-bandix luci-i18n-bandix-zh-cn"


# ===================================================
# PassWall2
# ===================================================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES geoview xray-core sing-box hysteria kmod-nft-socket kmod-nft-tproxy luci-app-passwall2 luci-i18n-passwall2-zh-cn"


# ===================================================
# OpenClash Meta
# ===================================================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-openclash luci-compat kmod-tun kmod-inet-diag kmod-nft-tproxy bash curl ip-full unzip"


# ===================================================
# WireGuard
# ===================================================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-proto-wireguard"


# ===================================================
# ZeroTier
# ===================================================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-zerotier-zh-cn"


# ===================================================
# DDNS-Go
# ===================================================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ddns-go-zh-cn"


# ===================================================
# FRPC
# ===================================================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-frpc-zh-cn"


# ===================================================
# Samba
# ===================================================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-samba4-zh-cn"


# ===================================================
# KMS
# ===================================================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES vlmcsd"

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-vlmcsd"

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vlmcsd-zh-cn"


# ===================================================
# Web终端
# ===================================================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ttyd-zh-cn"


# ===================================================
# Wake On LAN
# ===================================================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wol-zh-cn"


# ===================================================
# 自动重启
# ===================================================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-autoreboot-zh-cn"


# ===================================================
# Advanced Reboot
# ===================================================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-advanced-reboot-zh-cn"


# ===================================================
# UPnP
# ===================================================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-upnp-zh-cn"
