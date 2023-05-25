This playbook, buold the Microsoft domain and joins the member servers
#
# 
#
Terraform's Role:

Main role: Deploy the Virtual Machines

    Setup the four Windows Servers (Primary Domain Controller, Replica Domain Controller, DHCP, Fileshare)
        Using the vSphere provider:
            Assign appropriate resources to each machine
    Once prepared with appropriate values and the networking is in place:
        Navigate to the Terraform directory and run these commands
        terraform init Pull proper Terraform providers and modules used
        terraform validate This will return whether the configuration is valid or not
        terraform apply ... yes Actually apply the configuration

Prerequisites

    Linux machine with the following
        Ansible
            sudo apt update
            sudo apt install software-properties-common
            sudo add-apt-repository --yes --update ppa:ansible/ansible
            sudo apt install ansible
        Terraform
            sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
            curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
            sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
            sudo apt-get update && sudo apt-get install terraform
        Packer
            curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
            sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
            sudo apt-get update && sudo apt-get install packer
        Git
            sudo apt-get install git


#
# Create encrypted variables within playbook run the commad below and past results into variable files
# replace id with variable name eg vsphere, replace password, replace variable with name ef vsphere_password
# when prompted enter the same vault password for all entries in the playbook
# copy the output and save in the group_vars/all.yml & host_vars/*
#
ansible-vault encrypt_string --vault-id id@prompt password --name variable
#
# Example: 
ansible-vault encrypt_string --vault-id ansible_pwd@prompt Pa55word --name ansible_password
#
# Creating a mirror repo
#
sudo apt update
sudo apt-get install apt-mirror
#
# Edit configuration file
#
sudo vi /etc/apt/mirror.list
uncomment out "set base_path"
change deb line to
deb-amd64 http://gb.archive.ubuntu.com/ubuntu jammy main universe
comment out all other deb lines
save and exit
sudo apt-mirror
