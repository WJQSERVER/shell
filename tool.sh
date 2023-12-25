#!/bin/bash

# 脚本1
script1() {
    echo "执行脚本1..."
    # 在这里添加脚本1的执行逻辑
}

# 脚本2
script2() {
    echo "执行脚本2..."
    # 在这里添加脚本2的执行逻辑
}

# 脚本3
script3() {
    echo "执行脚本3..."
    # 在这里添加脚本3的执行逻辑
}

# 显示主菜单
show_main_menu() {
    echo "请选择要执行的操作:"
    echo "1. 进入脚本选择菜单"
    echo "Q. 退出"
}

# 显示脚本选择菜单
show_script_menu() {
    echo "请选择要执行的脚本:"
    echo "1. 脚本1"
    echo "2. 脚本2"
    echo "3. 脚本3"
    echo "B. 返回主菜单"
}

# 执行选择的脚本
execute_script() {
    case $1 in
        1)
            script1
            ;;
        2)
            script2
            ;;
        3)
            script3
            ;;
        B|b)
            return
            ;;
        *)
            echo "无效的选择。请重新选择。"
            ;;
    esac
}

# 主循环
while true; do
    show_main_menu
    read -p "请输入选项: " main_choice

    case $main_choice in
        1)
            while true; do
                show_script_menu
                read -p "请输入选项: " script_choice
                execute_script $script_choice
                echo
            done
            ;;
        Q|q)
            echo "退出脚本。"
            exit 0
            ;;
        *)
            echo "无效的选择。请重新选择。"
            ;;
    esac

    echo
done
