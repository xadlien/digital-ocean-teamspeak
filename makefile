build:
	cd terraform && terraform init && terraform apply
	bash update-ansiblehosts.sh
	sleep 30
	cd ansible && ansible-playbook -i ansible_hosts_automated playbooks/teamspeak.yml 
destroy:
	cd terraform && terraform destroy --auto-approve

