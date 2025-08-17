#!/bin/bash

component=$1
environment=$2
echo "Component: $component, Environment: $environment"
dnf install ansible -y
ansible-pull -i localhost, -U https://github.com/Nani-153/expense-ansible-roles-tf.git main.yaml -e component=$component -e environment=$environment
# https://github.com/Nani-153/expense-ansible-roles.git