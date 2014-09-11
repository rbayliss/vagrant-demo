# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Base Box:
  config.vm.box = "rbayliss/debian-wheezy"

  # Make this machine accessible to the host at 192.168.33.56
  config.vm.network "private_network", ip: "192.168.33.56"

  # Share a single folder from the host to the guest.
  config.vm.synced_folder "../share", "/var/www"

  # Provision using a shell script:
  config.vm.provision "shell", path: "provision.sh"

end
