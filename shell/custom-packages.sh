#!/bin/bash
# ============= IMM 25.12.x CUSTOM_PACKAGES 推荐配置 =============
# ============= x86软路由推荐版 ================================
# ============= 硬路由请注意闪存空间 =============================


# ===============================================================
# iStore / 快速设置
# ===============================================================

# 首页和网络向导
# 注意：quickstart依赖iStore环境
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-quickstart-zh-cn"


# iStore 商店
# IMM部分版本包名可能为 luci-app-store
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-store"



# ===============================================================
# 文件管理
# ===============================================================

# FileBrowser GO
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filebrowser-go-zh-cn"

# FileBrowser
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filebrowser-zh-cn"



# ===============================================================
# 系统美化
# ===============================================================

# Aurora主题
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-aurora luci-app-aurora-config luci-i18n-aurora-config-zh-cn"



# ===============================================================
# 系统增强
# ===============================================================

# 分区扩容
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-partexp luci-i18n-partexp-zh-cn"


# 流量监控
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES bandix luci-app-bandix luci-i18n-bandix-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vnstat2-zh-cn"


# ===============================================================
# KMS 激活服务
# ===============================================================

# vlmcsd KMS服务
CUSTOM_PACKAGES="$CUSTOM_PACKAGES vlmcsd luci-app-vlmcsd luci-i18n-vlmcsd-zh-cn"



# ===============================================================
# 科学上网
# ===============================================================


# OpenClash Meta
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-openclash luci-compat kmod-tun kmod-inet-diag kmod-nft-tproxy bash curl ip-full unzip"



# PassWall2
CUSTOM_PACKAGES="$CUSTOM_PACKAGES geoview xray-core sing-box hysteria kmod-nft-socket kmod-nft-tproxy luci-app-passwall2 luci-i18n-passwall2-zh-cn"



# SSR Plus+
# 与PassWall2二选一即可
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES kmod-nft-tproxy kmod-nft-socket xray-core naiveproxy luci-app-ssr-plus luci-i18n-ssr-plus-zh-cn"



# Nikki
# OpenClash和Nikki不要同时安装
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nikki-zh-cn"



# HomeProxy
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-homeproxy-zh-cn"



# dae
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dae-zh-cn"



# ===============================================================
# VPN
# ===============================================================


# WireGuard
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-proto-wireguard"


# Tailscale
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-tailscale-community luci-i18n-tailscale-community-zh-cn"



# ===============================================================
# 内网穿透
# ===============================================================


# ZeroTier
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-zerotier-zh-cn"


# frpc
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-frpc-zh-cn"


# DDNS-Go
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ddns-go-zh-cn"



# ===============================================================
# 下载 / 存储
# ===============================================================


# OpenList网盘聚合
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-openlist-zh-cn"


# Aria2
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-aria2-zh-cn"


# Transmission
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-transmission-zh-cn"


# qBittorrent
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-qbittorrent-zh-cn"



# ===============================================================
# 网络服务
# ===============================================================


# Samba共享
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-samba4-zh-cn"


# UPnP
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-upnp-zh-cn"


# Wake On LAN
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wol-zh-cn"

# 看门狗watchdog by sirpdboy
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-watchdog luci-i18n-watchdog-zh-cn"



# ===============================================================
# DNS / 广告过滤
# ===============================================================


# 去广告adghome
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-adguardhome"

# Adblock
# CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-adblock-fast-zh-cn"


# SmartDNS
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-smartdns-zh-cn"


# NextDNS
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nextdns-zh-cn"



# ===============================================================
# 其他常用
# ===============================================================


# 网络统计
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-statistics-zh-cn"


# 自动重启
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-autoreboot-zh-cn"


# 高级重启
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-advanced-reboot-zh-cn"


# 网络诊断
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ttyd-zh-cn"



