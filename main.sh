#!/bin/bash

function Usage {
	echo "Usage: Main.sh [-c d] [-d DEPLOY_DIR]" >&2
	echo "				 [-t TERMINAL_TYPE] [-p PRE_COMMAND]"
	echo "               [-h]" >&2
	echo "" >&2
	echo "      -c EXEC_COMMAND	:deploy configure file" >&2
	echo "      				 default: \"main.properties \"">&2
	echo "      -h 				print this Usage" >&2
	exit 1
}

# 定义常用命令或者变量(必须大写)
CONF_FILE = ""
DEPLOY_DIR = "/opt/huawei"
PRE_COMMAND=""
APP_NAME="HASwitch"
EXEC_COMMAND=""


# 处理命令行的参数
while getopts ":c:d:h" opt; do
	case $opt in
		c)
			CONF_FILE=${OPTARG};;

		d)
			DEPLOY_DIR=${OPTARG};;
		p)
			PRE_COMMAND=${OPTARG};;
		h）
			Usage;;  
		\?)
			echo "Invalid option -${OPTARG}" >&2
			Usage;;
	esac
done

# 编写业务函数
function main_command{


}


# 命令执行前的准备
## 设置命令行环境


## 业务执行命令
### 系统命令 
${PRE_COMMAND}


## 业务模块




