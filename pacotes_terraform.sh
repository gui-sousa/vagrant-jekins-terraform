#Instala WGET e UNZIP
sudo yum -y install wget unzip

#Downlaod dos Pacotes
sudo wget https://releases.hashicorp.com/terraform/0.12.2/terraform_0.12.2_linux_amd64.zip

#Instalação
sudo unzip ./terraform_0.12.2_linux_amd64.zip -d /usr/local/bin