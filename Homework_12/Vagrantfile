# -*- mode: ruby -*-
# vi: set ft=ruby :

#The configuration of vagrantfile
Vagrant.configure("2") do |config|
  # The select box of OS
  config.vm.box = "Ubuntu_20.04"

  # Disable automatic box update checking
  config.vm.box_check_update = false

  # Server VM
  config.vm.define "Server" do |subconfig|
  subconfig.vm.provider "virtualbox" do |vb|
  vb.name = "Server"
  vb.memory = 2048
  vb.cpus = 2
  vb.gui = true
  end
  # hostname виртуальной машины
  subconfig.vm.hostname = "Server"
  # настройки сети
  subconfig.vm.network "private_network", ip: "192.168.53.3"
  # установка общего каталога хоста и ВМ
  #config.vm.synced_folder "D:/05_VM", "/vagrant_data"
  # установка пакетов
  subconfig.vm.provision "shell", path: "12_HM_script1.sh"
  end
  # Client VM
  config.vm.define "Client" do |subconfig|
  subconfig.vm.provider "virtualbox" do |vb|
  vb.name = "Client"
  vb.memory = 2048
  vb.cpus = 2
  vb.gui = true
  end
  # hostname виртуальной машины
  subconfig.vm.hostname = "Client"
  # настройки сети
  subconfig.vm.network "private_network", ip: "192.168.53.4"
  # установка общего каталога хоста и ВМ
  #config.vm.synced_folder "D:/05_VM", "/vagrant_data"
  # установка пакетов
  subconfig.vm.provision "shell", path: "12_HM_script2.sh" 
  subconfig.vm.provision "shell", path: "12_HM_script3.sh" 
  subconfig.vm.provision "shell", path: "12_HM_script4.sh"  
  end
  end

