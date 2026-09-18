#!/bin/bash

check_service() {
    if systemctl is-active --quiet employee_web; then
        echo "Service: RUNNING"
        return 0
    else
        echo "Service: NOT RUNNING"
        return 1
    fi
}

restart_service() {
    echo "Restarting employee_web..."
    sudo systemctl restart employee_web
}

echo "=============================="
echo "Employee Application Monitor"
echo "=============================="

if check_service; then
    echo "Application is healthy."
else
    echo "Application failed."
    restart_service
    sleep 2

    if check_service; then
        echo "Recovery successful."
    else
        echo "Recovery failed."
    fi
fi

echo "=============================="
