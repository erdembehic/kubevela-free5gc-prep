#!/bin/bash
wait 60
pwd
ls -l
ls -l playbooks/
chmod 600 playbooks/argela.pem
# Playbookları sırasıyla çalıştır
ansible-playbook -i playbooks/inventory.ini playbooks/playbook_mirantis.yaml
ansible-playbook -i playbooks/inventory.ini playbooks/playbook_gtp5g.yaml
ansible-playbook -i playbooks/inventory.ini playbooks/playbook_5gc_env.yaml
