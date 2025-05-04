#!/bin/bash

yum install ansible -y
git clone https://github.com/dinesh-roboshop/ansible-roles.git
cd ansible-roles
ansible-playbook -i inventory.ini main.yaml -e COMPONENT=mongodb -e ansible_password=DevOps321
ansible-playbook -i inventory.ini main.yaml -e COMPONENT=catalogue -e ansible_password=DevOps321
ansible-playbook -i inventory.ini main.yaml -e COMPONENT=redis -e ansible_password=DevOps321
ansible-playbook -i inventory.ini main.yaml -e COMPONENT=user -e ansible_password=DevOps321
ansible-playbook -i inventory.ini main.yaml -e COMPONENT=cart -e ansible_password=DevOps321
ansible-playbook -i inventory.ini main.yaml -e COMPONENT=mysql -e ansible_password=DevOps321
ansible-playbook -i inventory.ini main.yaml -e COMPONENT=shipping -e ansible_password=DevOps321
ansible-playbook -i inventory.ini main.yaml -e COMPONENT=rabbitmq -e ansible_password=DevOps321
ansible-playbook -i inventory.ini main.yaml -e COMPONENT=payment -e ansible_password=DevOps321
ansible-playbook -i inventory.ini main.yaml -e COMPONENT=dispatch -e ansible_password=DevOps321
ansible-playbook -i inventory.ini main.yaml -e COMPONENT=web -e ansible_password=DevOps321
