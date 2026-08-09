#!/bin/bash
# ============= IMM 25.12.x 推荐插件清单 =============
# ============= iStore + OpenClash + PassWall2 + KMS =============
# ============= 按IMM官方CUSTOM_PACKAGES格式 =============


# ================= iStore =================
# 软件中心

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-store"


# 首页和网络向导
# 注意依赖iStore

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-quickstart-zh-cn"



# ================= 文件管理 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES bash quickfile luci-app-quickfile luci-i18n-quickfile-zh-cn"



# ================= 主题 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-aurora luci-app-aurora-config luci-i18n-aurora-config-zh-cn"



# ================= 分区扩容 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-partexp luci-i18n-partexp-zh-cn"



# ================= 流量监控 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES bandix luci-app-bandix luci-i18n-bandix-zh-cn"



# =====================================================
# 代理相关
# =====================================================


# PassWall2

CUSTOM_PACKAGES="$CUSTOM_PACKAGES geoview xray-core sing-box hysteria kmod-nft-socket kmod-nft-tproxy luci-app-passwall2 luci-i18n-passwall2-zh-cn"



# OpenClash Meta

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-openclash luci-compat kmod-tun kmod-inet-diag kmod-nft-tproxy bash curl ip-full unzip"



# ================= VPN =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-proto-wireguard"



# ================= 内网穿透 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-zerotier-zh-cn"

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-frpc-zh-cn"

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ddns-go-zh-cn"



# ================= 文件服务 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-samba4-zh-cn"

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filebrowser-go-zh-cn"



# ================= 下载 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-aria2-zh-cn"



# ================= KMS =================
# Windows / Office KMS服务

CUSTOM_PACKAGES="$CUSTOM_PACKAGES vlmcsd"

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-vlmcsd"



# ================= DNS/广告过滤 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-adblock-fast-zh-cn"

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-smartdns-zh-cn"



# ================= 网页终端 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ttyd-zh-cn"



# ================= 网络唤醒 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wol-zh-cn"



# ================= 自动重启 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-autoreboot-zh-cn"



# ================= UPnP =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-upnp-zh-cn"



# ================= 磁盘管理 =================

CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-diskman-zh-cn"
