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
    green " 1. Unavailable" 
    green " 2. Unavailable"
    green " 3. Unavailable"
    green " 4. Unavailable" 
    green " 5. Unavailable"
    green " 6. Unavailable"
    green " 7. Unavailable"
    yellow " --------------------------------------------------"
    green " 11. Unavailable"
    green " 12. Unavailable" 
    green " 13. Unavailable"
    green " 14. Unavailable"
    green " 15. Unavailable"
    green " 16. Unavailable"
    green " 17. Unavailable" 
    green " 18. SWAP一键安装/卸载脚本"
    green " 19. Unavailable"
    yellow " --------------------------------------------------"
    green " 21. Unavailable"
    green " 22. Unavailable"
    green " 23. Unavailable"
    green " 24. Unavailable"
    green " 25. Unavailable"
    green " 26. Unavailable"
    green " 27. Unavailable"
    green " 28. Unavailable"
    green " 29. Unavailable"
    yellow " --------------------------------------------------"
    green " 31. Unavailable"
    green " 32. Unavailable"
    green " 33. Unavailable"
    yellow " --------------------------------------------------"
    green " 00. Unavailable"
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
