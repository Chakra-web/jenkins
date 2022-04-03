# jenkins

After installing jenkins 
Open the console using IP:8080
Enter the default admin password from
/var/lib/jenkins/secrets/initialAdminPassword for first time login

1) Select plugins to install, option -> none
2) create fist admin user
3) Manage plugins - Available - git source code management - install without restart
4) Create job - Freestyle project

Select built with parameters
Name: COMPONENT
Execute shell - 
ansible-playbook roboshop.yml -i inv  -e ansible_user=centos 
-e ansible_password=DevOps321 -e role_name=${COMPONENT} -
e hosts=$(echo $COMPONENT | tr [a-z] [A-Z])

ansible-playbook roboshop.yml -i inv  -e ansible_user=centos 
-e ansible_password=DevOps321 -e role_name=${COMPONENT} 
-e hosts=$(echo $COMPONENT | tr [a-z] [A-Z]) 
--ssh-extra-args='-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'

Ansible configuration file (Sample)
https://github.com/ansible/ansible/blob/stable-2.11/examples/ansible.cfg

