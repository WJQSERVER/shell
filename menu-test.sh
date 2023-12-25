#! /bin/bash
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

#F2B一键安装脚本
function f2bsh(){
red "卸载请 运行 wget https://raw.githubusercontent.com/FunctionClub/Fail2ban/master/uninstall.sh && bash uninstall.sh"
wget https://raw.githubusercontent.com/FunctionClub/Fail2ban/master/fail2ban.sh && bash fail2ban.sh 2>&1 | tee fail2ban.log
red "卸载请 运行 wget https://raw.githubusercontent.com/FunctionClub/Fail2ban/master/uninstall.sh && bash uninstall.sh"
}

#主菜单
function start_menu(){
    clear
    red " BlueSkyXN 综合工具箱 Linux Supported ONLY" 
    green " FROM: https://github.com/BlueSkyXN/SKY-BOX "
    green " HELP: https://www.blueskyxn.com/202104/4465.html "
    green " USE:  wget -O box.sh https://raw.githubusercontent.com/BlueSkyXN/SKY-BOX/main/box.sh && chmod +x box.sh && clear && ./box.sh "
    yellow " =================================================="
    green " 1. IPV.SH ipv4/6优先级调整一键脚本·下载" 
    green " 2. IPT.SH iptable一键脚本"
    green " 3. SpeedTest-Linux 下载"
    green " 4. Rclone&Fclone·下载" 
    green " 5. ChangeSource Linux换源脚本·下载"
    green " 6. Besttrace 路由追踪·下载"
    green " 7. NEZHA.SH哪吒面板/探针"
    yellow " --------------------------------------------------"
    green " 11. 获取本机IP"
    green " 12. 安装最新BBR内核·使用YUM·仅支持CentOS" 
    green " 13. 启动BBR FQ算法"
    green " 14. 系统网络配置优化"
    green " 15. Git 新版 安装·仅支持CentOS"
    green " 16. 宝塔面板 自动磁盘挂载工具"
    green " 17. BBR一键管理脚本" 
    green " 18. SWAP一键安装/卸载脚本"
    green " 19. F2B一键安装脚本"
    yellow " --------------------------------------------------"
    green " 21. Superbench 综合测试"
    green " 22. MT.SH 流媒体解锁测试"
    green " 23. Lemonbench 综合测试"
    green " 24. UNIXbench 综合测试"
    green " 25. 三网Speedtest测速"
    green " 26. Memorytest 内存压力测试"
    green " 27. Route-trace 路由追踪测试"
    green " 28. YABS LINUX综合测试"
    green " 29. Disk Test 硬盘&系统综合测试"
    green " 210.TubeCheck Google/Youtube CDN分配节点测试"
    green " 211.RegionRestrictionCheck 流媒体解锁测试"
    yellow " --------------------------------------------------"
    green " 31. MTP&TLS 一键脚本"
    green " 32. Rclone官方一键安装脚本"
    green " 33. Aria2 最强安装与管理脚本"
    yellow " --------------------------------------------------"
    green " 00. 宝塔面板综合安装脚本"
    green " =================================================="
    green " 0. 退出脚本"
    echo
    read -p "请输入数字:" menuNumberInput
    case "$menuNumberInput" in
        1 )
           ipvsh
	;;
        2 )
           iptsh
	;;
        3 )
           speedtest-linux
	;;
        4 )
           clonesh
	;;
        5 )
           cssh
	;;
	6 )
           gettrace
	;;
	7 )
           nezha
	;;
	11 )
           getip
	;;
	12 )
           bbrnew
	;;
	13 )
           bbrfq
	;;
	14 )
           system-best
	;;
	15 )
           yumgitsh
	;;
	16 )
           btdisk
	;;
	17 )
           tcpsh
	;;
	18 )
           swapsh
	;;
	19 )
           f2bsh
	;;
	21 )
           superbench
	;;
	22 )
           mtsh
	;;
	23 )
           Lemonbench
	;;
	24 )
           UNIXbench
	;;
	25 )
           3speed
	;;
	26 )
           memorytest
	;;
	27 )
           rtsh
	;;
	28 )
           yabssh
	;;
	29 )
           disktestsh
	;;
	210 )
	   tubecheck
	;;
	211 )
	   RegionRestrictionCheck
	;;
	31 )
           mtp
	;;
	32 )
           rc
	;;
        33 )
           aria
	;;
	00 )
            btbox
        ;;
        0 )
            exit 1
        ;;
        * )
            clear
            red "请输入正确数字 !"
            start_menu
        ;;
    esac
}
start_menu "first"
