#!/bin/bash

# Install Ansible
yum install ansible -y &>>/opt/userdata.log

# Run ansible-pull
ansible-pull -i localhost, -U https://github.com/BhanuSaiReddy/roboshop-ansible.git main.yml -e component=${component} &>>/opt/userdata.log

echo "Installation and configuration of APPS completed successfully."
