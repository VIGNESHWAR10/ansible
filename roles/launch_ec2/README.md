Launch EC2
=========

Role is used to 
  * Launch <b>EC2 instances</b>
  * Create a <b>Security Group</b> with TCP ports 22, 80 and 443 open to internet
  * Install <b>falcon-agent</b> on the newly launched instances (can be skipped) 

Requirements
------------

None

Role Variables
--------------

All variables that can be overriden are specified in this roles' [defaults](defaults/main.yml).

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - launch_ec2


Playbook Execution:
------------------
  * To run playbook: 
  `ansible-playbook playbooks/launch_ec2.yml`
  * To run playbook but not to install falcon-agent:
  `ansible-playbook playbooks/launch_ec2.yml --skip-tags falcon`