#!/bin/bash
# 停止应用
if [ -f /home/ec2-user/simple-java-app/app.pid ]; then
    pid=$(cat /home/ec2-user/simple-java-app/app.pid)
    if ps -p $pid > /dev/null; then
        kill $pid
        echo "Application stopped"
    else
        echo "Application is not running"
    fi
    rm -f /home/ec2-user/simple-java-app/app.pid
else
    echo "PID file not found"
fi
exit 0
