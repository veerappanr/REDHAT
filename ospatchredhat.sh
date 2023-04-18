#!/bin/bash

# REDHAT 8.3 Server Patching OS step-by-step
# login to redhat user login. open terminal. 

#step1
su root
cat /etc/redhat-release
uname -r
rpm -q kernal --last
subscription-manager status
subscription-manager list
yum repolist
yum list available
yum updateinfo summary
yum list kernel

#step2 : Basic health checkp

ifconfig
df -Hk
netstat -nr
cat /etc/fstab 

#step3 : Implementation

yum update
uname -r
init 6      #reboot system

#step4 : Verification

rpm -qa kernal
uname -r
yum updateinfo summary

#completed os patch done 
