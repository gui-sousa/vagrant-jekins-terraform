#Instala o Java e Adiciona Repositórios

sudo yum -y install java-1.8.0-openjdk-devel
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

#Resolve dependências daemonize

curl -LO 'https://rpmfind.net/linux/epel/7/x86_64/Packages/d/daemonize-1.7.7-1.el7.x86_64.rpm'
sudo rpm -Uvh ./daemonize-1.7.7-1.el7.x86_64.rpm

#Instalação Jekins

sudo yum -y install jenkins --nogpgcheck 
sudo systemctl start jenkins
systemctl status jenkins

#Habilita Serviço Jenkins

sudo systemctl enable jenkins
