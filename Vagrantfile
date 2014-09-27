# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  config.vm.box = "ubuntu13"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.synced_folder "./www", "/vagrant_data"
  config.omnibus.chef_version = :latest
  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = ["cookbooks", "site-cookbooks"]
    chef.roles_path = "roles"
    chef.data_bags_path = "data_bags"
    chef.add_role "webserver"
  
    # You may also specify custom JSON attributes:
    chef.json = {
      "nginx-fpm" => {
        "docroot" => "/home/vagrant"
      }
    }
  end

end