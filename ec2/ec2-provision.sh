#!/bin/bash

yum install ansible -y
cd /tmp
git clone https://github.com/dinesh-roboshop/ansible-roles.git
cd ansible-roles
ansible-playbook -i inventory.ini -e COMPONENT=web main.yaml