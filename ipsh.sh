#!/bin/bash

# 获取本地IPv4地址
local_ipv4=$(ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')

# 获取本地IPv6地址
local_ipv6=$(ip -6 addr show eth0 | grep -oP '(?<=inet6\s)[0-9a-fA-F:]+')

# 获取默认网关
gateway=$(ip route | awk '/default/ {print $3}')

# 获取子网掩码
subnet_mask=$(ifconfig eth0 | awk '/netmask/ {print $4}')

# 使用ip.sb获取公网IPv4地址
public_ipv4=$(curl -s4 https://ip.sb/ip)

# 使用ip.sb获取公网IPv6地址
public_ipv6=$(curl -s6 https://ip.sb/ip)

# 获取DNS服务器
dns_servers=$(cat /etc/resolv.conf | awk '/^nameserver/ {print $2}')

# 输出结果
echo "本地IPv4地址: $local_ipv4"
echo "本地IPv6地址: $local_ipv6"
echo "默认网关: $gateway"
echo "子网掩码: $subnet_mask"
echo "公网IPv4地址: $public_ipv4"
echo "公网IPv6地址: $public_ipv6"
echo "DNS服务器: $dns_servers"
