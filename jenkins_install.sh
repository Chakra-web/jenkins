#!/bin/bash

source components/common.sh

Print "Configure repos"
curl -L https://pkg.jenkins.io/redhat-stable/jenkins.repo -o /etc/yum.repos.d/jenkins.repo
StatCheck $?


Print "Validate repos key"
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
StatCheck $?

Print "Install java"
yum install fontconfig java-11-openjdk
StatCheck $?

Print "install jenkins"
yum install jenkins
StatCheck $?
