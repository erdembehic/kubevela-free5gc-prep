#!/bin/bash
echo "job has started" ,

# Playbookları sırasıyla çalıştır
ansible-playbook -i playbooks/inventory.ini playbooks/playbook_mirantis.yaml
ansible-playbook -i playbooks/inventory.ini playbooks/playbook_gtp5g.yaml
ansible-playbook -i playbooks/inventory.ini playbooks/playbook_5gc_env.yaml
