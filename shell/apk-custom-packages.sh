#!/bin/bash
# ============= imm 25.12.x仓库外的第三方插件apk==========
# ============= 若启用 则打开注释 ========================
# ============= 但此文件也可以处理仓库内的软件去留 本质上是做了一个PACKAGES字符串的拼接 ================

# ===================== 核心功能插件 =====================

# ----- 代理相关（保留 SSR-Plus 和 DAE）-----
# SSR-Plus - 传统代理支持（含xray-core）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES kmod-nft-tproxy kmod-nft-socket xray-core naiveproxy luci-app-ssr-plus luci-i18n-ssr-plus-zh-cn"

# DAE - 代理增强
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dae-zh-cn"

# 新增passwall2 apk
CUSTOM_PACKAGES="$CUSTOM_PACKAGES geoview xray-core sing-box hysteria kmod-nft-socket kmod-nft-tproxy luci-app-passwall2 luci-i18n-passwall2-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-openclash luci-compat kmod-tun kmod-inet-diag kmod-nft-tproxy bash curl ip-full unzip"


# ----- VPN相关 -----
# WireGuard VPN
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-proto-wireguard"
# Tailscale 社区版
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-tailscale-community luci-i18n-tailscale-community-zh-cn"
# OpenVPN（注意：仅luci界面，服务端配置有bug请勿集成luci-app-openvpn-server）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-openvpn-zh-cn"


# ----- 去广告 -----
# AdBlock - 广告屏蔽
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-adblock-zh-cn"
# AdBlock Fast - 快速广告屏蔽
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-adblock-fast-zh-cn"


# ----- 重启/计划任务 -----
# 自动重启
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-autoreboot-zh-cn"
# 任务计划器 - Taskplan（可视化Cron）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-taskplan luci-i18n-taskplan-zh-cn"


# ----- 文件管理 -----
# QuickFile - 快速文件管理器（注意：与run安装器冲突，请勿同时启用luci-app-run）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES bash quickfile luci-app-quickfile luci-i18n-quickfile-zh-cn"
# FileBrowser Go版本
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filebrowser-go-zh-cn"
# FileManager
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filemanager-zh-cn"


# ----- KMS服务（Windows/Office激活）-----
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vlmcsd-zh-cn"


# ----- DDNS动态域名（标准版 + GO增强版）-----
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ddns-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ddns-go-zh-cn"


# ----- 内网穿透（便于远程管理）-----
# ZeroTier
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-zerotier-zh-cn"
# FRP内网穿透客户端
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-frpc-zh-cn"


# ----- 分区扩容（方便扩展存储）-----
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-partexp luci-i18n-partexp-zh-cn"


# ----- 流量监控/统计 -----
# Bandix - 实时流量监控
CUSTOM_PACKAGES="$CUSTOM_PACKAGES bandix luci-app-bandix luci-i18n-bandix-zh-cn"
# NLBWMon - 网络流量统计
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nlbwmon-zh-cn"


# ----- 网络唤醒（WOL）-----
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wol-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-timewol-zh-cn"


# ===================== 可选增强插件（按需保留）=====================

# 网盘聚合 - 方便管理网盘
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-openlist-zh-cn"

# 自定义命令
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-commands-zh-cn"

# 主题美化 - 极光主题
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-aurora luci-app-aurora-config luci-i18n-aurora-config-zh-cn"

# 首页和网络向导（依赖于iStore商店）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-quickstart-zh-cn"

# Lucky大吉 - 多功能工具
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-lucky lucky luci-i18n-lucky-zh-cn"
