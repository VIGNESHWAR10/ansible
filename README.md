# ansible
Repo containing Ansible roles and Playbooks

## Packages Required
Ansible Core `2.13.13`
Python3 `3.8` or higher (recommended: Python `3.12.3`)

## Working
* Clone repo:
```sh
git clone git@github.com:VIGNESHWAR10/ansible.git
```
* Install Python Dependencies:
```sh
#setup virtual env
python3 -m venv .venv
source .venv/bin/activate

# install dependencies
python3 -m pip install -r requirements.txt
```
* Install Ansible Dependencies:
```sh
# install ansible dependencies
ansible-galaxy install -r requirements.yml
```

* Run Ansible Playbook:
```sh
# check playbooks directory for playbook name
# Eg: launch_ec2.yml
ansible-playbook playbooks/launch_ec2.yml
```

## Roles Available

* <b>launch_ec2</b> - Used to launch EC2 instances
  * [Check Role](roles/launch_ec2/README.md) 
  * [Check Playbook](playbooks/launch_ec2.yml)

* <b>setup_falcon</b> - Used to install Falcon-Agent on EC2 instances 
  * [Check Role](roles/setup_falcon/README.md) 
  * [Check Playbook](playbooks/setup_falcon.yml)

* <b>launch_k8s_cluster</b> - Used to setup Kubernetes cluster manually using EC2 instances (HA supported)
  * [Check Role](roles/launch_k8s_cluster/README.md) 
  * [Check Playbook](playbooks/launch_k8s_cluster.yml)

* <b>k8s_cluster_kubeadm</b> - Used to setup kubernetes cluster using kubeadm
  * [Check Role](roles/k8s_cluster_kubeadm/README.md)
  * [Check Playbook](playbooks/launch_k8s-cluster_kubeadm.yml)

## Contact

#### Vigneshwar Mahendran 
<b>linkedin</b>: https://www.linkedin.com/in/vigneshwarmahendran/
<b>Email</b>: imvigneshwar10@gmail.com