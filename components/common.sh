#!/bin/bash

LOG_FILE=/tmp/jenkins.log
rm -rf $LOG_FILE
Print() {
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