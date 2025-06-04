#!/bin/bash
# 安装必要的软件包
yum update -y
yum install -y java-11-amazon-corretto

# 创建应用目录（如果不存在）
mkdir -p /home/ec2-user/simple-java-app
