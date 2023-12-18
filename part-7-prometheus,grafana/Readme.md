# Part 7 - Deploy and manage Prometheus and Grafana 


## Steps

# 1. Use Ansible playbooks to deploy Prometheus and Grafana on a Linux machine.
sudo apt install ansible
sudo apt-get install python3-docker
ansible-playbook all-playbooks.yml

# 2. Add the infrastructure metrics of all the VMs used in the project to the monitoring tool. 

- Add the infrastructure metrics of all VMs used in the project to the monitoring tool.
- Allow ports 9090, 9100, 3000 on network inbound rules 


# 3. Identify the key metrics you wish to monitor and create Dashboards in Grafana. You should be clear about why these metrics are important. 
INCLUDE SOME IMAGE HERE

# 4. Enable monitoring logs of AKS on managed Prometheus and Grafana 
Automate dashboard configuration using Grafana's API or manually import JSON dashboards.

# 5. [Bonus] - Add the code application logs to the monitoring tool.
