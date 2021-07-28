#Instala o Java e Adiciona Repositórios

sudo yum -y install java-1.8.0-openjdk-devel
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

#Instalação Jekins

sudo yum -y install jenkins --nogpgcheck 
sudo systemctl start jenkins
systemctl status jenkins

#Habilita Serviço Jenkins

sudo systemctl enable jenkins