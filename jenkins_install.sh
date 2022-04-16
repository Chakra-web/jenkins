#!/bin/bash

source components/common.sh

Print "Configure repos"
curl -L https://pkg.jenkins.io/redhat-stable/jenkins.repo -o /etc/yum.repos.d/jenkins.repo &>>${LOG_FILE}
StatCheck $?


Print "Validate repos key"
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key &>>${LOG_FILE}
StatCheck $?

Print "Install java"
yum install fontconfig java-11-openjdk -y &>>${LOG_FILE}
StatCheck $?

Print "install jenkins"
yum install jenkins -y &>>${LOG_FILE}
StatCheck $?

Print "Starting jenkins"
systemctl enable jenkins &>>${LOG_FILE} && systemctl restart jenkins &>>${LOG_FILE} &>>${LOG_FILE}
StatCheck $?