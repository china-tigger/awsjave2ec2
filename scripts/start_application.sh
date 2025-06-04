#!/bin/bash
# 启动应用
cd /home/ec2-user/simple-java-app
nohup java -jar target/simple-java-app-1.0-SNAPSHOT.jar > /dev/null 2>&1 &
echo $! > /home/ec2-user/simple-java-app/app.pid
