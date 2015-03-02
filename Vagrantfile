# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

$script = <<SCRIPT
export HOME=/home/vagrant
yum -y install git
SCRIPT
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define :deploydst do |c|
    c.vm.hostname = 'deploydst'
    # Override default nat port for ssh 
    # c.f. https://github.com/mitchellh/vagrant/issues/3232
    c.vm.network :forwarded_port, guest: 22, host: 12222, id: "ssh"
    c.ssh.guest_port = 12222
    c.vm.provision "shell", inline: $script
    c.vm.provider :virtualbox do |provider, override|
      override.vm.box = "chef/centos-6.5"
    end
  end
end
