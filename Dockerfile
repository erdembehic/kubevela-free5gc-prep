FROM ubuntu:latest

# Gerekli paketleri yükle
RUN apt-get update && apt-get install -y ansible sshpass

# Playbook ve script dosyalarını ekle
COPY . /playbooks
WORKDIR /playbooks

COPY run_playbooks.sh /playbooks/run_playbooks.sh
RUN chmod +x /playbooks/run_playbooks.sh

# Default komut (parametre alabilir)
CMD ["./run_playbooks.sh"]
