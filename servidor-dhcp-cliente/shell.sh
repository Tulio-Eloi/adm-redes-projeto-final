sudo apt-get update
sudo apt-get install -y isc-dhcp-client
sudo systemctl restart networking
# Adiciona o usuário ao grupo vboxusers
sudo usermod -aG vboxusers $USER

# Ajusta as permissões do diretório .VirtualBox
sudo chown $USER:$USER ~/.VirtualBox
