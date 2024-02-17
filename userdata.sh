#!/bin/bash

# Install Ansible
yum install ansible -y &>> /opt/userdata.log

# Install Python 3.11's pip package
yum install python3.11-pip.noarch -y &>> /opt/userdata.log

# Use pip3.11 to install Python packages
pip3.11 install botocore boto3 &>> /opt/userdata.log

# Run ansible-pull
ansible-pull -i localhost, -U https://github.com/BhanuSaiReddy/roboshop-ansible.git main.yml -e component=${component} -e env=${env} &>>/opt/userdata.log

echo "Installation and configuration of APPS completed successfully."
