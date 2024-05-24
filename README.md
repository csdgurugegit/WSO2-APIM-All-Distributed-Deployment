# WSO2 Distributed API-M Deployment

This repository automates the distributed deployment of WSO2 API Manager using Ansible. It separates the API Manager into components including control-plane, gateway-worker, traffic-manager, key-manager, with MySQL server serving as the centralized database. WSO2 Identity Server works as the key manager within this deployment. The deployment process is guided by Ansible playbooks for seamless execution.

## Setup Ansible

Install ansible on Ubuntu.

```
sudo apt update
sudo apt install ansible -y
```

Generate a public key and a private key for use within Ansible. If you want more security, you can use a passphrase with your key.

```
ssh-keygen -t ed25519 -C "ansible"
```

Add the SSH public key to the Ubuntu nodes.

```
ssh-copy-id -i ~/.ssh/ansible.pub root@192.168.8.171
```

Use this command to log in to Ubuntu node.

```
ssh -i ~/.ssh/ansible 192.168.8.171
```

Create ansible.cfg file and inventory file.

The ansible.cfg file configures ansible's settings, while the inventory file specifies the hosts ansible will manage.

**ansible.cfg** file

```
[defaults]
inventory = inventory
private_key_file = ~/.ssh/ansible
```

**inventory** file with Host groups

```
[cp_wso2_com]
cp.wso2.com or [IP]

[tm_wso2_com]
tm.wso2.com or [IP]

[km_wso2_com]
km.wso2.com or [IP]

[gw_wso2_com]
gw.wso2.com or [IP]

[mysql_wso2_com]
mysql.wso2.com or [IP]
```

## Run Ansible-Playbook

Ansible-Playbook commad.

```
ansible-playbook --ask-become-pass install-orcale-java.yml

OR

ansible-playbook install-orcale-java.yml
```


