# -*- mode: ruby -*-
# vi: set ft=ruby :

# To DRY UP Vagrant File
# Reference: http://www.element84.com/dry-up-your-vagrant-files.html
NUM_BOXES = 4
IP_OFFSET = 10
# You could change the IP address prefix for your lab
def ip_from_num(i)
    "192.168.90.#{i+IP_OFFSET}"
end
# Define Source Vagrant Box
basebox = "puppetlab-centos-64-nocm"
baseurl = "http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-vbox4210-nocm.box"
# 
Vagrant.configure("2") do |config|
  # manage /etc/hosts by hostmanager plugin(https://github.com/smdahlen/vagrant-hostmanager)
  config.hostmanager.enabled = true
  # use loop to generate multiple VMs with similar configurations
  (1..NUM_BOXES).each do |i|
    is_main = (i == 1) || (i == 2)
    
    config.vm.define "vm#{i}".to_sym do |vm1|
      
      vm1.vm.box = basebox
      vm1.vm.box_url = baseurl
      
      vm1.vm.provider :virtualbox do |vb|
	vb.customize ["modifyvm", :id, "--memory", "5120"]
      end
      
      vm1.vm.network :private_network, ip: ip_from_num(i)
      vm1.vm.hostname = "vm#{i}".to_sym

      vm1.vm.provision :shell do |shell|
        if is_main
          shell.path = "bin/master.sh"
        else
          shell.path = "bin/worker.sh"
        end
      end

      # Sync /etc/hosts for each node
      vm1.vm.provision :hostmanager
      # Sync Disk folders to each VM
      vm1.vm.synced_folder "disk#{i}", "/data"

    end

  end

end
