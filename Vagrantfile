# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu-server-12042-x64-vbox4210"
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-12042-x64-vbox4210.box"
  config.vm.network :private_network, ip: "33.33.33.10"
  config.ssh.forward_agent = true

  config.vm.synced_folder "~/Code", "/vagrant/Code", nfs: true

  config.vm.provision "shell",
    inline: "apt-get update"

  config.vm.provision :puppet do |puppet|
    puppet.module_path        = "modules"
    puppet.manifests_path     = "manifests"
    puppet.manifest_file      = "init.pp"
  end

  config.vm.provision "shell",
    privileged: false,
    path: "bin/installgo.sh"

end
