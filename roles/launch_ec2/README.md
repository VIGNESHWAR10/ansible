Launch EC2
=========

Role used to launch EC2 instances and SG with TCP ports 22, 80 and 443 open to internet in AWS 

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

Author Information
------------------

### Vigneshwar Mahendran ([contact](mailto:imvigneshwar10@gmail.com))
