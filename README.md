# adm-redes-projeto-final
    Projeto Final para Redes

O propósito deste projeto é elaborar, implantar e administrar um ambiente de rede utilizando tecnologia Linux, com foco em serviços como DHCP, DNS, Web, FTP, NFS e a utilização de virtualização por meio de Vagrant e Docker.
<h3>Discentes: Luana Cristina dos Santos Alves e Tulio Eloi Cardoso e Silva.</h3>

## Pré-requisitos para os SO Linux
    Antes de começar, verifique se de tem instalado os seguintes componentes:
- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)
- [Docker](https://www.docker.com/)

## Clone o repositório do projeto em sua máquina
    git clone https://github.com/Tulio-Eloi/adm-redes-projeto-final.git
 
## Comandos a seres executados para poder fazer o projeto rodar
Entrar na pasta servidor-dhcp-cliente e rodar o seguinte comando
    sudo vagrant up vm1

Logo após entrar na pasta servidor-dhcp-server e rodar o seguinte comando
    sudo vagrant up vm2

## Acessando as máquinas e executantando testes
Para acessar as máquinas você precisa estar com seu diretório no terminal o mesmo o qual foi inciado as máquinas.
Para verificar seu status:

    sudo vagrant status

Entrar dentro da VM:

    vagrant ssh vm1


Verifique a Configuração da Rede:

    ping 192.168.50.11  #Verifique a conecção com a VM2


## Servidor DHCP
    O Dynamic Host Configuration Protocol (DHCP) é um protocolo de rede que habilita os dispositivos a adquirirem de forma automática um endereço IP e outras configurações de rede assim que se conectam a uma rede.

### Status do Servidor
Para verificar o status do servidor DHCP, digite o comando:

    sudo systemctl status isc-dhcp-server


## Servidor DNS
O servidor DNS (Domain Name System) desempenha o papel de converter nomes de domínio em endereços IP correspondentes.

### Status do Servidor

Para verificar o status do servidor DNS, digite o comando:

    docker logs bind9-container


## Servidor Apache

O Apache HTTP Server é uma aplicação de servidor web de código aberto utilizada para hospedar sites na Internet.

### Teste do Servidor

Abra o seu navegador nesta página: [http://localhost](http://localhost)

### Status do Servidor

Para verificar o status do servidor Apache, digite o comando:


    docker logs apache-container


## Servidor FTP

O servidor FTP é um conjunto de regras e procedimentos que possibilitam a transferência de arquivos entre um cliente e um servidor por meio de uma rede.

### Teste do Servidor

No terminal e digite:

        ftp admin@192.168.0.10


### Status do Servidor
Para verificar o status do servidor FTP, digite o comando:
 
    docker logs ftp-container

## Servidor NFS

O NFS, um protocolo de compartilhamento de arquivos, viabiliza o acesso a arquivos em um servidor remoto por um sistema operacional, proporcionando a sensação de que esses arquivos estão armazenados localmente.

### Status do Servidor

Para verificar o status do servidor NFS, digite o comando:

    docker logs nfs-test-server

## Desligando as máquinas e destruindo elas
Para desligar as máquinas você precisa estar com seu diretório no terminal o mesmo o qual foi inciado
   
Desligar as máquinas:
    sudo vagrant halt

Destruindo as máquinas:
    sudo vagrant destroy

## Ferramentas ultilizadas para a construção do trabalho:
    1. Github.
    2. Vagrant.
    3. Ansible.
    4. Docker.
    5. Visual Studio Code.
    6. VirtualBox.
