FROM ansible/ansible-runner:latest

# Playbook ve gerekli dosyaları ekle
COPY . /playbooks
WORKDIR /playbooks

# Playbookları çalıştıran script ekle
COPY run_playbooks.sh /playbooks/run_playbooks.sh
RUN chmod +x /playbooks/run_playbooks.sh

# Playbookları çalıştır
CMD ["/playbooks/run_playbooks.sh"]
