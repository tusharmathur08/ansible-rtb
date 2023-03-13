#!/bin/bash
RANDOM=$(date +%s)
number=$RANDOM
echo "build number: "$number
mkdir /home/ec2-user/imp-rtb-ans/server-details/$number
touch /home/ec2-user/imp-rtb-ans/server-details/$number/logfile.txt
export ANSIBLE_LOG_PATH=/home/ec2-user/imp-rtb-ans/server-details/$number/logfile.txt
export ANSIBLE_VAULT_PASSWORD_FILE=/home/ec2-user/imp-rtb-ans/server-details/vaultpassword.txt
ansible-playbook tomcatpb.yml -v -l dev
