#!/bin/bash

# 获取本地IPv4地址
ipv4_address=$(ip -4 addr show | grep inet | awk '{print $2}' | grep -v '127.0.0.1')

# 获取本地IPv6地址
ipv6_address=$(ip -6 addr show | grep inet6 | grep -v 'fe80' | awk '{print $2}' | awk -F'/' '{print $1}')

# 获取网关
gateway=$(ip route | grep default | awk '{print $3}')

# 获取子网掩码
subnet_mask=$(ip -4 addr show | grep inet | awk '{print $2}' | grep -v '127.0.0.1' | awk -F'/' '{print $2}')

# 获取DNS服务器
dns_servers=$(grep "nameserver" /etc/resolv.conf | awk '{print $2}' | tr '\n' ' ')

# 获取公网IP地址
public_ip=$(curl -s https://api.ipify.org)

echo "本地网络信息："
echo "IPv4地址: $ipv4_address"
echo "IPv6地址: $ipv6_address"
echo "网关: $gateway"
echo "子网掩码: $subnet_mask"
echo "DNS服务器: $dns_servers"
echo "公网IP地址: $public_ip"
