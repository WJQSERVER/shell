#!/bin/bash

# 获取本地网络信息
local_ipv4=$(ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | head -n 1)
local_ipv6=$(ip -6 addr show eth0 | grep -oP '(?<=inet6\s)[\da-fA-F:]+')
gateway=$(ip r | grep default | awk '{print $3}')
subnet_mask=$(ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}/\d+' | head -n 1)

echo "本地网络信息："
echo "本地IPv4地址: $local_ipv4"
echo "本地IPv6地址: $local_ipv6"
echo "网关地址: $gateway"
echo "子网掩码: $subnet_mask"

# 获取公网IP
public_ipv4=$(curl -s https://api.ip.sb/ip)
public_ipv6=$(curl -s https://api.ip.sb/ip6)

echo "公网IP地址："
echo "公网IPv4地址: $public_ipv4"
echo "公网IPv6地址: $public_ipv6"
