# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  #config.vm.box = "Rhel72JDK7"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL

  if Vagrant.has_plugin?('vagrant-registration')
    config.registration.manager = 'subscription_manager'
    config.registration.username = ENV['SUB_USERNAME']
    config.registration.password = ENV['SUB_PASSWORD']
  end

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
    v.customize ["modifyvm", :id, "--usb", "off"]
    v.customize ["modifyvm", :id, "--usbehci", "off"]
  end

  config.vm.define "fabricnode1" do |node1|
    node1.vm.base_mac = "5CA1AB1E0001"
    node1.vm.box = "Rhel72JDK8"
    node1.vm.provision :shell, path: "scripts/environment.sh"
    node1.vm.provision :shell, path: "scripts/fuse.sh"
    node1.vm.provision :shell, path: "scripts/node1.sh"
    node1.vm.network "private_network", ip: "172.16.1.2"
  end
  config.vm.define "fabricnode2" do |node2|
    node2.vm.base_mac = "5CA1AB1E0002"
    node2.vm.box = "Rhel72JDK8"
    node2.vm.provision :shell, path: "scripts/environment.sh"
    node2.vm.provision :shell, path: "scripts/fuse.sh"
    node2.vm.provision :shell, path: "scripts/node2.sh"
    node2.vm.network "private_network", ip: "172.16.1.3"
  end
  config.vm.define "fabricnode3" do |node3|
    node3.vm.base_mac = "5CA1AB1E0003"
    node3.vm.box = "Rhel72JDK8"
    node3.vm.provision :shell, path: "scripts/environment.sh"
    node3.vm.provision :shell, path: "scripts/fuse.sh"
    node3.vm.provision :shell, path: "scripts/node3.sh"
    node3.vm.network "private_network", ip: "172.16.1.4"
  end

end
