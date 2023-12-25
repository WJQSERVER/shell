#!/bin/bash
# By WJQSERVER-STUDIO_WJQSERVER
#https://github.com/WJQSERVER/shell
#彩色
red(){
    echo -e "\033[31m\033[01m$1\033[0m"
}
green(){
    echo -e "\033[32m\033[01m$1\033[0m"
}
yellow(){
    echo -e "\033[33m\033[01m$1\033[0m"
}
blue(){
    echo -e "\033[34m\033[01m$1\033[0m"
}

# 更新软件包
sudo apt update
sudo apt upgrade -y

# 安装 curl
sudo apt install -y curl

echo "请选择要执行的脚本:"
echo "1. 部署 speedtest-x"
echo "2. 部署 Docker"
echo "3. 添加 SWAP"
echo "4. 退出"

read choice

case $choice in
  1)
    echo "正在执行部署 speedtest-x 的脚本..."
    docker run -d -e MAX_LOG_COUNT=200 -e SAME_IP_MULTI_LOGS=true -e IP_SERVICE=ipinfo.io -e WEBPORT=9001 --network host -it badapple9/speedtest-x
    ;;
  2)
    echo "正在执行部署 Docker 的脚本..."
    wget -O docker.sh https://raw.githubusercontent.com/WJQSERVER/shell/main/docker.sh && chmod +x docker.sh && clear && ./docker.sh
    ;;
  3)
    echo "正在执行部署 SWAP 的脚本..."
    wget -O swap.sh https://raw.githubusercontent.com/WJQSERVER/shell/main/swap.sh && chmod +x swap.sh && clear && ./swap.sh
    ;;
  4)
    echo "退出脚本"
    exit 0
    ;;
  *)
    echo "无效的选择"
    exit 1
    ;;
esac

