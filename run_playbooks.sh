#!/bin/bash

# Playbookları sırasıyla çalıştır
ansible-playbook -i inventory.ini playbook_mirantis.yaml
ansible-playbook -i inventory.ini playbook_gtp5g.yaml
ansible-playbook -i inventory.ini playbook_5gc_env.yaml
