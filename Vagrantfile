# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Base Box:
  config.vm.box = "rbayliss/debian-wheezy"

  # Make this machine accessible to the host at 192.168.33.58
  config.vm.network "private_network", ip: "192.168.33.58"

  # Share a single folder from the host to the guest.
  config.vm.synced_folder "../share", "/var/www"

  # Use Puppet to do provisioning.
  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "base.pp"
    puppet.module_path = "modules"
  end

end
