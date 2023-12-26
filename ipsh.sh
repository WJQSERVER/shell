#!/bin/bash

# 获取本地网络信息
local_ipv4=$(ip -4 addr show dev eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
local_ipv6=$(ip -6 addr show dev eth0 | grep -oP '(?<=inet6\s)[\da-fA-F:]+')
gateway=$(ip route | grep default | awk '{print $3}')
subnet_mask=$(ifconfig eth0 | grep -oP '(?<=Mask:)\d+(\.\d+){3}')
dns_servers=$(cat /etc/resolv.conf | grep -oP '(?<=nameserver\s)\d+(\.\d+){3}')

# 获取公网IP
public_ipv4=$(curl -s https://ipapi.co/ip)
public_ipv6=$(curl -s https://ipapi.co/ip6)

# 输出结果
echo "本地网络信息："
echo "IPv4地址: $local_ipv4"
echo "IPv6地址: $local_ipv6"
echo "网关: $gateway"
echo "子网掩码: $subnet_mask"
echo "DNS服务器: $dns_servers"

echo "公网IP："
echo "IPv4地址: $public_ipv4"
echo "IPv6地址: $public_ipv6"
