#! /bin/bash

# Заглушка для отправки почты
function send_email(){
  echo "SEND EMAIL ABOUT FREE USAGE DISK"
}

USAGE_PROC=$(df -kh / | tail -n1 | awk '{print $5}' | grep -o '[0-9]*')

echo "$(date "+%Y-%m-%d %H:%M:%S") USAGE OF DISK - ${USAGE_PROC}%" >> log-task8.log
if [[ USAGE_PROC -gt 80 ]]
then
    send_email
fi