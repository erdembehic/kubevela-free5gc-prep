FROM ubuntu:latest

RUN apt-get update && apt-get install -y ansible sshpass

# Playbook ve gerekli dosyaları ekle
COPY . /playbooks
WORKDIR /playbooks

# Playbookları çalıştıran script ekle
COPY run_playbooks.sh /playbooks/run_playbooks.sh
RUN chmod +x /playbooks/run_playbooks.sh
# Playbookları çalıştır
CMD ["./run_playbooks.sh"]
