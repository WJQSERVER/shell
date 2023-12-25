#!/bin/bash

# 更新软件包
sudo apt update
sudo apt upgrade -y

# 安装 curl
sudo apt install -y curl

echo "请选择要执行的脚本:"
echo "1. 部署 speedtest-x"
echo "2. 部署 Docker"
echo "3. 退出"

read choice

case $choice in
  1)
    echo "正在执行部署 speedtest-x 的脚本..."
    ./deploy_speedtest_x.sh
    ;;
  2)
    echo "正在执行部署 Docker 的脚本..."
    ./deploy_docker.sh
    ;;
  3)
    echo "退出脚本"
    exit 0
    ;;
  *)
    echo "无效的选择"
    exit 1
    ;;
esac

echo "部署完成！"
