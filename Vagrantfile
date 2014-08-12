# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure("2") do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
   config.vm.define "2k8" do |eight|
     eight.vm.box = "win-srv-2k8r2"

     eight.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.6"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
     end

    #2k8.vm.synced_folder "puppet/master_modules", "/etc/puppet/modules"
    #2k8.vm.synced_folder "puppet/master_manifests", "/etc/puppet/manifests"

    #2k8.vm.provision :shell, :path => "shell/linux/PuppetInstallMaster.sh"
    #2k8.vm.provision :shell, :inline => 'echo "192.168.0.6  puppet" >> /etc/hosts'
  end
  config.vm.define "2k12" do |twelve|
    twelve.vm.box = "win-srv-2k12r2"

    twelve.vm.provider :virtualbox do |v, override|
      override.vm.network :private_network, ip: "192.168.0.7"
      # Use the host's DNS resolver
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end

    #2k8.vm.synced_folder "puppet/master_modules", "/etc/puppet/modules"
    #2k8.vm.synced_folder "puppet/master_manifests", "/etc/puppet/manifests"

    #2k8.vm.provision :shell, :path => "shell/linux/PuppetInstallMaster.sh"
    #2k8.vm.provision :shell, :inline => 'echo "192.168.0.6  puppet" >> /etc/hosts'
  end

end
