#!/bin/bash

yum install ansible -y &>>/opt/userdata.log
#pip3.11 install botocore boto3 &>>/opt/userdata.log
ansible-pull -i localhost, -U https://github.com/BhanuSaiReddy/roboshop-ansible.git main.yml -e component=${component} &>>/opt/userdata.log
echo "Installation and configuration of APPS completed successfully."

resource "null_resource" "dev_resource" {
  provisioner "local-exec" {
    command = "echo -e '\\x1b[34m APP SETUP COMPLETED SUCCESSFULLY\\x1b[0m'"
  }
}