# DigitalOcean Teamspeak Server
## Description
This repository holds the necessary code to initialize a Teamspeak 3 Server in digital ocean.  **I take no responsibility for any costs associated with this code. You will be billed for usage of digital ocean cloud.**
## Setup
### Create Desktop Server
```
cd terraform
terraform init 
terraform apply
cd ..
```
### Setup and Start TS3
```
cd ansible
ansible-playbook -i ansible_hosts playbooks/teamspeak.yml 
```
## Cleanup
You will need to destroy the environment to stop being billed for the infrastructure. Run the following from the respository:
```
cd terraform
terraform destroy
```
This will clean up all objects created in digital ocean.
## Automation
This process is automated in the makefile.
### Build Droplet and Install TS3
`make build`
### Delete Droplet and Other Infrastructure
`make destroy`
