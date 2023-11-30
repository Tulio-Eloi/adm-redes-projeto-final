#!/bin/bash

# Atualiza os repositórios e instala o cliente DHCP
sudo apt-get update
sudo apt-get install -y isc-dhcp-client

# Reinicia o serviço de rede (verifique a distribuição específica)
if command -v systemctl &> /dev/null; then
    sudo systemctl restart NetworkManager
elif command -v service &> /dev/null; then
    sudo service networking restart
else
    echo "Não foi possível determinar o sistema de gerenciamento de serviços. Reinicie o serviço de rede manualmente."
fi

# Adiciona o usuário ao grupo vboxusers
if getent group vboxusers &> /dev/null; then
    sudo usermod -aG vboxusers $USER
else
    echo "O grupo vboxusers não existe. Certifique-se de que o VirtualBox está instalado corretamente."
fi

# Ajusta as permissões do diretório .VirtualBox se existir
if [ -d ~/.VirtualBox ]; then
    sudo chown $USER:$USER ~/.VirtualBox
fi

echo "Configuração concluída."

