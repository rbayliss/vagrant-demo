# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Base Box:
  config.vm.box = "puppetlabs/debian-7.5-64-puppet"

  # Make this machine accessible to the host at 192.168.33.57
  config.vm.network "private_network", ip: "192.168.33.57"

  # Share a single folder from the host to the guest.
  config.vm.synced_folder "../share", "/var/www"

  # Use Puppet to do provisioning.
  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "base.pp"
  end

end
