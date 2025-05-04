#!/bin/bash

yum install ansible -y
cd /tmp
git clone https://github.com/dinesh-roboshop/ansible-roles.git
cd ansible-roles
ansible-playbook -i inventory.ini -e COMPONENT=catalogue main.yaml
ansible-playbook -i inventory.ini -e COMPONENT=mongodb main.yaml
ansible-playbook -i inventory.ini -e COMPONENT=redis main.yaml
ansible-playbook -i inventory.ini -e COMPONENT=user main.yaml
ansible-playbook -i inventory.ini -e COMPONENT=cart main.yaml
ansible-playbook -i inventory.ini -e COMPONENT=mysql main.yaml
ansible-playbook -i inventory.ini -e COMPONENT=shipping main.yaml
ansible-playbook -i inventory.ini -e COMPONENT=rabbitmq main.yaml
ansible-playbook -i inventory.ini -e COMPONENT=payment main.yaml
ansible-playbook -i inventory.ini -e COMPONENT=dispatch main.yaml
ansible-playbook -i inventory.ini -e COMPONENT=web main.yaml