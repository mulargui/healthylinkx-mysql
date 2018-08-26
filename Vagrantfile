# -*- mode: ruby -*-
# vi: set ft=ruby :

#Add "C:\Program Files (x86)\HashiCorp\Vagrant\embedded\bin\" to the path at the end
#remember to include guest additions
#vagrant plugin install vagrant-vbguest or vagrant plugin update

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	config.vm.box_check_update = false
	# Every Vagrant virtual environment requires a box to build off of.
	config.vm.box = "ubuntu/bionic64"
	
	# Provider-specific configuration
	config.vm.provider "virtualbox" do |vb|
		vb.name = "mysql"
		vb.memory = 3072
		vb.customize [ "modifyvm", :id, "--uartmode1", "disconnected" ]
	end
 
	# provisioning using a shell script
	config.vm.provision "os", type: "shell", path: "./vm/setup.sh", args: "ALL"
end
