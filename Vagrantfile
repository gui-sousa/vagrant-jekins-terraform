Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.provider "virtualbox" do |vb|
  end

  config.vm.network "public_network", ip: "10.1.82.150"
  
  #Atualiza Pacotes
  config.vm.provision :shell, :inline => "sudo yum -y update"
  
  #Instala Jenkins e Terraform
  config.vm.provision :shell, path: "pacotes_jenkins.sh"
  config.vm.provision :shell, path: "pacotes_terraform.sh"

  #Abre porta 8080
  config.vm.provision :shell, :inline => "iptables -I INPUT -p tcp --dport 8080 -j ACCEPT"
  
end
