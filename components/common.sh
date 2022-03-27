#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
  echo -e "\e[36m You need to be root user to run the script\e[0m" &>>${LOG_FILE}
  exit 2
  else
    echo -e "\e[36m you are root user \e[0m"
fi

LOG_FILE=/tmp/jenkins.log
rm -rf $LOG_FILE

Print() {
  echo "\n-----------------------$1 ---------------------------"
  echo -e "\e[36m $1 \e[0m"
}

StatCheck() {
  if [ $? -ne 0 ]; then
    echo -e "\e[31mFAILURE\e[0m"
    exit 1
  else
    echo -e "\e[32mSUCCESS\e[0m"
  fi
}
