# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "rbayliss/debian-wheezy"

  # Make this machine accessible to the host at 192.168.33.55
  config.vm.network "private_network", ip: "192.168.33.55"

  # Share a single folder from the host to the guest.
  config.vm.synced_folder "../share", "/var/www"

end
