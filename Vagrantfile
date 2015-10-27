# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure("2") do |config|
   config.vm.define "master" do |master|
     master.vm.box = "ubuntu/trusty64"
     master.vm.hostname= "puppet.localdomain"
     #master.vm.synced_folder "puppet/modules", "/etc/puppet/modules"
     master.vm.synced_folder "puppet/modules", "/etc/puppetlabs/code/environments/production/modules"
     #master.vm.synced_folder "puppet/manifests", "/etc/puppet/manifests"
     master.vm.synced_folder "puppet/manifests", "/etc/puppetlabs/code/environments/production/manifests"
     master.vm.synced_folder "puppet/", "/home/vagrant/puppet"
     master.vm.synced_folder "resources", "/home/vagrant/resources"
     
     master.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.6"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
     end
    
    master.vm.provision :shell, :path => "shell/linux/PuppetInstallMaster.sh"
    master.vm.provision :shell, :inline => 'echo "192.168.0.6  puppet" >> /etc/hosts'
    end

  config.vm.define "2k12" do |twelve|
    twelve.vm.box = "opentable/win-2012r2-standard-amd64-nocm"
    twelve.vm.guest = :windows

    twelve.vm.provider :virtualbox do |v, override|
      v.gui = false
      override.vm.network :private_network, ip: "192.168.0.8"
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end
    twelve.vm.provision :shell, :path => "shell/windows/main.cmd"

  end
end
