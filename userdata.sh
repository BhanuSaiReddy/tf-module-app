#!/bin/bash

ansible-pull -i localhost, -U  https://github.com/BhanuSaiReddy/roboshop-ansible.git main.yml -e component=${component} &>>/opt/userdata.log

