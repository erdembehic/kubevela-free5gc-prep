#!/bin/bash
echo "job has started" ,
#!/bin/bash

# Varsayılan inventory dosyasını tanımlayın
DEFAULT_INVENTORY="playbooks/inventory.ini"

# Kullanıcı tarafından sağlanmış bir inventory dosyası var mı kontrol edin
INVENTORY=${1:-$DEFAULT_INVENTORY}

# Playbookları çalıştır
echo "Using inventory file: $INVENTORY"
ansible-playbook -i "$INVENTORY" playbook.yml

# Playbookları sırasıyla çalıştır
ansible-playbook -i "$INVENTORY" playbooks/playbook_mirantis.yaml
ansible-playbook -i "$INVENTORY" playbooks/playbook_gtp5g.yaml
ansible-playbook -i "$INVENTORY" playbooks/playbook_5gc_env.yaml
