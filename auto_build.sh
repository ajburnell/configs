#!/bin/bash
# Set up the environment for ISVA cookbook.

# Username to install pip3 items for
username=

# Standard
sudo yum update -y 
sudo yum upgrade -y

# AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Enable AWS Command completion
complete -C '/usr/local/bin/aws_completer' aws

# Configure it
aws configure

# Terraform
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo

# TF Autocomplete
terraform -install-autocomplete

# EPEL
sudo yum install epel-release
sudo yum update

# Git
sudo yum install git

# PIP3
pip3 install jmespath --user $username
pip3 install ibmsecurity --user $username
pip3 install setuptools-rust --user $username
pip3 install --upgrade pip  --user $username
pip3 install ansible --user $username
