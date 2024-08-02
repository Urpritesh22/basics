#!/bin/bash
SERVICE="nginx"
if ! systemctl is-active --quiet $SERVICE; then
    systemctl restart $SERVICE
    echo "$SERVICE was not running and has been restarted" | mail -s "$SERVICE Restarted" admin@example.com
fi
