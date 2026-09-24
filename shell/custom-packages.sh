#!/bin/bash
# ============= imm仓库外的第三方插件==============
# ============= 若启用 则打开注释 ================
# ============= 但此文件也可以处理仓库内的软件去留 本质上是做了一个PACKAGES字符串的拼接 ================

# 各位注意 如果你构建的固件是硬路由 此文件的注释要酌情考虑是否打开 因为硬路由的闪存空间有限 若构建出来过大或者构建失败 记得调整本文件的注释
# 考虑到istore商店的集成与否 属于高频操作 故 目前已将集成store的操作放置在 工作流的UI 选项 用户自行勾选 则集成  不勾选则不集成 以减少修改此文件的次数

# =============== 以下为按需求启用的配置 (24.10.x x86-64 软路由) ===============
# =============== 硬性需求: 美化(Aurora) + PassWall2 + OpenClash + KMS + 定时重启 + 文件管理 ===============
# =============== 保留: 常规实用插件 (mosdns / adguardhome / lucky / turboacc / watchdog / netwizard / quickstart / dashboard) ===============

# ---------- 系统美化 (Aurora 主题, 与 build24.sh 默认 Argon 不冲突, 开机后 LuCI 里切) ----------
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-aurora luci-app-aurora-config luci-i18n-aurora-config-zh-cn"

# ---------- 文件管理 (build24.sh 已默认装 filemanager 中文, 这里再叠 filebrowser-go 作补充) ----------
CUSTOM_PACKAGES="$CUSTOM_PACKAGES filebrowser-go luci-i18n-filebrowser-go-zh-cn"

# ---------- KMS 激活服务 ----------
CUSTOM_PACKAGES="$CUSTOM_PACKAGES vlmcsd luci-i18n-vlmcsd-zh-cn"

# ---------- 分区扩容 / 流量监控 / 看门狗 / 高级卸载 ----------
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-partexp luci-i18n-partexp-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-bandix luci-i18n-bandix-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-watchdog luci-i18n-watchdog-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-uninstall"

# ---------- 定时重启 (autoreboot + advanced-reboot) ----------
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-autoreboot luci-i18n-autoreboot-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-advanced-reboot luci-i18n-advanced-reboot-zh-cn"

# ---------- 网络诊断 / 终端访问 ----------
CUSTOM_PACKAGES="$CUSTOM_PACKAGES ttyd luci-i18n-ttyd-zh-cn"

# ---------- 科学上网 (硬性: OpenClash + PassWall2 同编译, 实际只启用其一) ----------
# OpenClash (含内核与依赖, 严格按原版写法)
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-openclash luci-compat kmod-tun kmod-inet-diag kmod-nft-tproxy bash curl ip-full unzip"
# PassWall2 (含内核模块与核心)
CUSTOM_PACKAGES="$CUSTOM_PACKAGES geoview xray-core sing-box hysteria kmod-nft-socket kmod-nft-tproxy luci-app-passwall2 luci-i18n-passwall2-zh-cn"
# PassWall (旧版): 注释, 不要与 OpenClash / PassWall2 同时保留
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES geoview xray-core sing-box hysteria luci-i18n-passwall-zh-cn"
# SSR Plus+: 注释 (与 passwall2 功能重叠)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES kmod-nft-tproxy kmod-nft-socket xray-core naiveproxy luci-app-ssr-plus luci-i18n-ssr-plus-zh-cn"
# Nikki / momo / nekobox / clashoo / homeproxy / dae: 注释 (与 openclash 冲突或功能重叠)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nikki-zh-cn"
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES momo luci-app-momo luci-i18n-momo-zh-cn"
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-nekobox"
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES clashoo luci-app-clashoo luci-i18n-clashoo-zh-cn"
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-homeproxy-zh-cn"
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dae-zh-cn"
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-daed-zh-cn"

# ---------- VPN / 远程接入 (常规) ----------
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-proto-wireguard"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-tailscale-community luci-i18n-tailscale-community-zh-cn"

# ---------- 内网穿透 / 远程访问 ----------
CUSTOM_PACKAGES="$CUSTOM_PACKAGES zerotier luci-i18n-zerotier-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES frpc luci-i18n-frpc-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES ddns-go luci-i18n-ddns-go-zh-cn"

# ---------- 网络服务 ----------
CUSTOM_PACKAGES="$CUSTOM_PACKAGES samba4 luci-i18n-samba4-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES miniupnpd luci-i18n-upnp-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES timewol luci-i18n-timewol-zh-cn"

# ---------- DNS / 广告过滤 (mosdns + adguardhome, 与 OpenClash 共存时注意 DNS 接管) ----------
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-mosdns luci-i18n-mosdns-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-adguardhome"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES adblock-fast luci-i18n-adblock-fast-zh-cn"

# ---------- 加速 / 流量统计 (实用热门) ----------
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-turboacc"

# ---------- 公网神器 / 端口转发 / 反向代理 ----------
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-lucky lucky"

# ---------- 首页与网络向导 (quickstart) ----------
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-quickstart luci-i18n-quickstart-zh-cn"

# ---------- 网络配置向导 / 仪表盘 (实用) ----------
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-netwizard luci-i18n-netwizard-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-dashboard luci-i18n-dashboard-zh-cn"

# ---------- 任务计划 / 命令执行 (实用) ----------
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-taskplan luci-i18n-taskplan-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-commands luci-i18n-commands-zh-cn"

# ---------- 网络测速 (实用) ----------
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-netspeedtest luci-i18n-netspeedtest-zh-cn"

# ---------- 组网 (EasyTier, 实用) ----------
CUSTOM_PACKAGES="$CUSTOM_PACKAGES easytier luci-app-easytier"

# ---------- 应用过滤 (openappfilter, 实用) ----------
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-appfilter luci-i18n-appfilter-zh-cn"

# ---------- iStore 商店 (保留, 在工作流 UI 勾选, 不在此文件强制添加) ----------
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-store"

# =============== 以下为默认注释的可选包 (按需自行打开, 每行已备注作用) ===============

# ---------- 下载 / 存储 ----------
# openlist: 网盘聚合 (对接 AList 后端, 统一访问 BT/夸克/阿里云盘等)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-openlist luci-i18n-openlist-zh-cn"
# aria2: 多协议下载器 (HTTP/FTP/BT/磁力, 支持 Web UI 管理)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES aria2 luci-i18n-aria2-zh-cn"
# transmission: 轻量 BT 下载器 (经典 Web UI, 资源占用低)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES transmission luci-i18n-transmission-zh-cn"
# qbittorrent: 功能最全的 BT 下载器 (Web UI, 支持 RSS/自动管理)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES qbittorrent luci-i18n-qbittorrent-zh-cn"
# syncthing: 双向文件同步 (多设备文件夹实时同步, 无中心服务器)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES syncthing luci-i18n-syncthing-zh-cn"
# rclone: 命令行云盘同步工具 (支持 50+ 云存储, 可配合 taskplan 定时同步)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES rclone luci-i18n-rclone-zh-cn"
# unishare: 统一文件共享 (WebDAV 服务器, 对外暴露文件目录)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES webdav2 luci-app-unishare"
# diskman: 磁盘管理 (LuCI 里管理分区/挂载/磁盘)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-diskman luci-i18n-diskman-zh-cn"

# ---------- DNS / 其他 ----------
# smartdns: 高性能 DNS 分流器 (比 mosdns 更轻量, 支持 DoH)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-smartdns-zh-cn"
# nextdns: 基于 NextDNS 云服务的 DNS (自带广告过滤 + 统计)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nextdns-zh-cn"
# unbound: 权威/递归 DNS 服务器 (本地缓存, 隐私保护)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-unbound-zh-cn"
# https-dns-proxy: DoH/DoT 代理 (把普通 DNS 请求转成加密 DNS)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-https-dns-proxy-zh-cn"

# ---------- 网络管理 / 监控 ----------
# statistics: 系统统计 (基于 collectd 的 CPU/内存/流量/网络图表)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-statistics-zh-cn"
# nlbwmon: 实时网络带宽监控 (Web 页面显示各接口流量)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nlbwmon-zh-cn"
# vnstat2: 按接口统计历史流量 (长期记录, 查月用量)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vnstat2-zh-cn"
# netdata: 全功能性能监控 (CPU/内存/磁盘/网络实时图表, 端口 19999)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-netdata-zh-cn"
# cshark: 抓包分析 (简化版 Wireshark, Web UI 看 TCP/IP 包)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cshark-zh-cn"
# bcp38: 防火墙审计日志 (记录被拦截的流量, 安全排查)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-bcp38-zh-cn"
# eqos: 基于 SQM 的 QoS 队列管理 (游戏/视频优先级)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-eqos-zh-cn"
# qos: 经典流量整形 (按接口限速, 保证带宽分配)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-qos-zh-cn"
# sqm: 智能队列管理 (CAVA/FQ 调度, 低延迟游戏加速)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sqm-zh-cn"

# ---------- 高级设置 / 防火墙 ----------
# advancedplus: 进阶设置 (一键修改防火墙/NAT/路由等高级选项, 与 Argon 主题冲突需排除)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-advancedplus luci-i18n-advancedplus-zh-cn -luci-app-argon-config -luci-i18n-argon-config-zh-cn"
# acl: 防火墙高级 ACL (细粒度包过滤规则)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-acl-zh-cn"
# watchcat: 网络看门狗 (监测出口, 断线自动拨号)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-watchcat-zh-cn"
# banip: 自动封禁异常 IP (基于 DDoS/端口扫描检测)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-banip-zh-cn"
# crowdsec-firewall-bouncer: 云安全黑名单 (联动 CrowdSec 社区情报封禁恶意 IP)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-crowdsec-firewall-bouncer-zh-cn"

# ---------- 其他常用 ----------
# airplay2: AirPlay 音频/屏幕投射 (iPhone/Mac 投屏到路由器)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-airplay2-zh-cn"
# minidlna: DLNA 媒体服务器 (手机/电视/电视盒子访问共享媒体文件)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-minidlna-zh-cn"
# ksmbd: 内核态 SMB 共享 (比 Samba 快, 低资源占用, 替代 Samba4)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ksmbd-zh-cn"
# spotifyd: Spotify Connect 音频播放 (把 Spotify 流送到路由器上的音箱)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-spotifyd-zh-cn"
# cloudflared: Cloudflare Tunnel 客户端 (内网穿透, 免公网 IP 暴露服务)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cloudflared-zh-cn"
# ngrokc: ngrok 内网穿透 (临时公网 URL, 测试 Web 服务)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ngrokc-zh-cn"
# pagekitec: PageKite 内网穿透 (类似 ngrok, 轻量)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pagekitec-zh-cn"
# rustdesk-server: RustDesk 自建中继 (远程控制电脑, 替代 ToDesk/向日葵)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-rustdesk-server-zh-cn"
# wechatpush: 微信推送 (系统事件/告警推送到微信)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wechatpush-zh-cn"
# attendedsysupgrade: 带数据升级 (sysupgrade 时保留已装软件包和配置)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-attendedsysupgrade-zh-cn"
# dawn: 磁盘/电池状态查看 (x86 硬盘健康度)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dawn-zh-cn"
# email: 邮件通知 (系统告警发邮件)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-email-zh-cn"
# mwan3: 多 WAN 负载均衡/故障切换 (双宽带/多线接入)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-mwan3-zh-cn"
# pbr: 策略路由 (按源 IP/目标 IP 走不同出口)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pbr-zh-cn"
# natmap: NAT 端口映射管理 (简化端口转发配置)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-natmap-zh-cn"
# olsr / olsr-services / olsr-viz: OLSR 动态路由协议 (Mesh 网状网络, 多跳路由)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-olsr-zh-cn"
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-olsr-services-zh-cn"
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-olsr-viz-zh-cn"
# arpbind: ARP 静态绑定 (防 ARP 欺骗, 固定设备 MAC 与 IP 对应)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-arpbind-zh-cn"
# uhttpd: LuCI 自带的 HTTP 服务器 (一般不用单独装)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-uhttpd-zh-cn"
# radicale: 自建 CalDAV/CardDAV (家庭日历/联系人同步)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-radicale-zh-cn"
# ser2net: 串口转 TCP (把 COM 口暴露成网络服务, 调试用)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ser2net-zh-cn"
# usb-printer: USB 打印共享 (CUPS 驱动, 把 USB 打印机共享给局域网)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-usb-printer-zh-cn"
# xinetd: 超级服务 (按需启动 RPC 服务, 老式远程访问)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-xinetd-zh-cn"
# nut: UPS 电源管理 (NUT 协议, 监控 UPS 电量/断电保电)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nut-zh-cn"
# n2n: 虚拟组网 (轻量 P2P 内网互联, 类 ZeroTier)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-n2n-zh-cn"
# udpxy: UDP 转 TCP 代理 (跨 NAT 传 UDP 流量, 游戏/语音用)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-udpxy-zh-cn"
# tinyproxy: 轻量 HTTP 正向代理 (给无浏览器的设备当代理)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-tinyproxy-zh-cn"
# privoxy: 内容过滤代理 (URL/广告/脚本过滤, 配合 tinyproxy 用)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-privoxy-zh-cn"
# squid: 功能最全的代理 (缓存/ACL/HTTPS 解密, 企业级)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-squid-zh-cn"
# tor: 匿名网络 (隐私访问, 速度很慢, 慎用)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-tor-zh-cn"
# microsocks: 极简 SOCKS 代理 (资源占用极低)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-microsocks-zh-cn"
# omcproxy: OMC 代理 (OpenWrt 官方维护的透明代理工具)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-omcproxy-zh-cn"
# softethervpn: SoftEther VPN 服务端 (多协议 VPN, Windows 客户端直接连)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-softethervpn-zh-cn"
# ipsec-vpnd: IPsec VPN 服务端 (企业级 VPN, 配合 ipsec 客户端)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ipsec-vpnd-zh-cn"
# openvpn: OpenVPN 客户端 (访问远程 OpenVPN 服务器, 仅装 i18n, 主程序在 imm 仓库)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-openvpn-zh-cn"
# ocserv: OpenConnect VPN 服务端 (Cisco AnyConnect 协议, 替代 IPsec)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ocserv-zh-cn"
# gost: 多协议代理隧道 (支持 TCP/UDP/H2/WebSocket 多种传输, 穿透能力强)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-gost-zh-cn"
# haproxy-tcp: TCP 层负载/反向代理 (比 HAProxy HTTP 模式更通用)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-haproxy-tcp-zh-cn"
# coovachilli: CoovaChilli RADIUS 热点认证 (商业级 WiFi 计费/Portal)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-coovachilli-zh-cn"
# 3cat: 3Com 交换机管理 (老式网管交换机)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-3cat-zh-cn"
# 3ginfo-lite: 4G/5G 信号强度查看 (插 USB 网卡时)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-3ginfo-lite-zh-cn"
# dsl: DSL 调制解调器诊断 (光猫调试用)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dsl-zh-cn"
# cd8021x: 802.1X 认证 (企业级有线准入)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cd8021x-zh-cn"
# eoip: Ether over IP (把以太网帧封装进 IP, 远程接入)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-eoip-zh-cn"
# dynapoint: DynaPoint 路由诊断 (特定厂商设备)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dynapoint-zh-cn"
# cifs-mount: CIFS/SMB 挂载 (把 NAS 共享目录挂载到本地)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cifs-mount-zh-cn"
# nfs: NFS 挂载 (把 NFS 共享挂载到本地, 多用于 NAS)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nfs-zh-cn"
# cpulimit: 限制进程 CPU 占用 (防止单进程吃满)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cpulimit-zh-cn"
# ramfree: 释放内存 (一键清理缓存, 临时提性能)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ramfree-zh-cn"
# hd-idle: 硬盘休眠 (闲置时停转, 降噪省电)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-hd-idle-zh-cn"
# irqbalance: 中断负载均衡 (多核 CPU 中断分配, 一般默认已开)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-irqbalance-zh-cn"
# lxc: Linux 容器 (在路由器上跑轻量 LXC 容器, 资源占用低)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-lxc-zh-cn"
# ua2f: 双因素认证 (LuCI 登录加 TOTP)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ua2f-zh-cn"
# wifischedule: WiFi 定时开关 (按时间关 WiFi 信号)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wifischedule-zh-cn"
# lldpd: LLDP 协议 (发现邻居网络设备, 交换机管理用)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-lldpd-zh-cn"
# fwknopd: 单包敲门 (隐藏服务端口, 先敲门再放行, 防扫描)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-fwknopd-zh-cn"
# mjpg-streamer: MJPEG 视频流 (把 USB 摄像头推成 HTTP 视频流)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-mjpg-streamer-zh-cn"
# modemband: 调制解调器带宽测试 (4G/5G 网卡测速)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-modemband-zh-cn"
# mosquitto: MQTT 消息代理 (物联网协议, 给 ESP32/传感器用)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-mosquitto-zh-cn"
# msd_lite: 轻量流媒体服务器 (类似 DLNA, 移动端友好)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-msd_lite-zh-cn"
# music-remote-center: 音乐遥控中心 (集中管理 NAS/电脑上的音乐)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-music-remote-center-zh-cn"
# oled: OLED 显示屏驱动 (接 SSD1306 等小屏显示状态)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-oled-zh-cn"
# openwisp: OpenWISP 集中管理 (多路由器统一管理)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-openwisp-zh-cn"
# oscam: OSCam 卡共享 (IPTV 解码卡, 法律风险, 慎用)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-oscam-zh-cn"
# p910nd: USB 打印共享 (CUPS 替代方案, 更轻)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-p910nd-zh-cn"
# pppoe-relay: PPPoE 中继 (把 WAN 口 PPPoE 透传给内网, 软路由常见)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pppoe-relay-zh-cn"
# pppoe-server: PPPoE 服务端 (给下级拨号, 企业/网吧场景)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pppoe-server-zh-cn"
# ps3netsrv: PS3 服务器管理 (索尼主机调试用)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ps3netsrv-zh-cn"
# snmpd: SNMP 监控代理 (给 Zabbix/PRTG 抓数据)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-snmpd-zh-cn"
# splash: Portal 认证 (WiFi 登录页, 酒店/咖啡厅场景)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-splash-zh-cn"
# vsftpd: FTP 服务器 (传统 FTP, 安全性差, 一般用 Samba/WebDAV 替代)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vsftpd-zh-cn"
# xlnetacc: 电信加速 (特定运营商加速协议)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-xlnetacc-zh-cn"
# acme: ACME 证书自动申请 (Let's Encrypt 续签, 配合 uhttpd/https)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-acme-zh-cn"
# adblock: 经典去广告 (基于 dnsmasq 黑名单, 比 adblock-fast 更完整)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-adblock-zh-cn"
# battstatus: 电池状态查看 (笔记本/NAS 内置电池场景)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-battstatus-zh-cn"
# clamav: 杀毒引擎 (文件扫描, 资源占用高, x86 可用)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-clamav-zh-cn"
# dump1090: ADS-B 航班雷达 (接 RTL-SDR 天线, 看附近飞机)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dump1090-zh-cn"
# example: 示例 LuCI 应用 (开发模板, 无实际用途)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-example-zh-cn"
# filebrowser: 文件浏览器 (老版, 已被 filebrowser-go 替代)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filebrowser-zh-cn"
# filemanager: 文件管理器 (build24.sh 已默认装中文, 这里是主程序)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filemanager-zh-cn"
# frps: frp 服务端 (配合 frpc 做内网穿透, 需要公网服务器)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-frps-zh-cn"

# ---------- 第三方插件库的可选扩展 ----------
# run: Run 安装器 (makeself 打包的 .run 快速安装器, 与 quickfile 冲突)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-run"
# quickfile: 文件管理器 (sbwml 版, 带 nginx 配置, 与 run 冲突)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES bash quickfile luci-app-quickfile luci-i18n-quickfile-zh-cn"
# rtp2httpd: RTP 转 HTTP 流媒体 (IPTV 直播流转发, 手机/电视看 CCTV)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-rtp2httpd luci-i18n-rtp2httpd-zh-cn"
# duf: 静态文件服务器 (dufs 单二进制, 比 Samba 更轻)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dufs-zh-cn"
# gecoosac: 集客 AC (华为集客 AC 控制器, 企业级 WiFi 管理)
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-gecoosac gecoosac"
