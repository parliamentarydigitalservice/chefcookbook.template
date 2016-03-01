# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "windows-2012r2"

  config.ssh.forward_agent = true

  # Berkshelf setup
  config.berkshelf.berksfile_path = "cookbooks/core/Berksfile"
  config.berkshelf.enabled = true

  # Forward ports..
  config.vm.network "forwarded_port", guest: 80, host: 80, auto_correct: true

  # Execute the cookbook
  config.vm.provision :chef_solo do |chef|
    chef.add_recipe ‘core’
  end
end
