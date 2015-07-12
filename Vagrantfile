# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.synced_folder ".", "/vagrant_data", type: "rsync"
  config.vm.box = "ubuntu_14_10"
  config.vm.provider "virtualbox" do |vb|
    # vb.gui = true
    vb.memory = "512"
  end

  %w(web1 web2).each do |node_name|
    config.vm.define node_name do |node|
      # いらない
      # node.box = "ubuntu_14_10"
      # node.provider "virtualbox" do |vb|
      #   # vb.gui = true
      #   vb.memory = "512"
      # end

      ipaddress = node_name == "web1" ? "192.168.33.10" : "192.168.33.11"
      node.vm.network "private_network", ip: ipaddress

      node.vm.provision "itamae" do |config|
        config.sudo
        config.recipes = ["recipe.rb", "recipe_#{node_name}.rb"]
      end
    end
  end
end
