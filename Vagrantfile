# -*- mode: ruby -*-
# vi: set ft=ruby :

servers={
    "control" => "192.168.61.10_geerlingguy/ubuntu1604",
    "db" => "192.168.61.11_geerlingguy/ubuntu1604",
    "dbel" => "192.168.61.12_geerlingguy/ubuntu1604",
    "www" => "192.168.61.13_geerlingguy/ubuntu1604",
    "lb" => "192.168.61.14_geerlingguy/ubuntu1604"
}

$script = <<SCRIPT
  cp -R /home/vagrant/.ssh/ /root/
  cp -R /home/vagrant/.bashrc /root/.bashrc
  sed 's/PermitRootLogin yes/PermitRootLogin no/g;s/#PermitRootLogin/PermitRootLogin/g' /etc/ssh/sshd_config
SCRIPT
Vagrant.configure(2) do |config|
    config.ssh.insert_key = false
    servers.each_with_index do |(hostname, ip), index|
        config.vm.define hostname do |node|
            config.vbguest.auto_update = false
            node.vm.box_check_update = false
            node.vm.box = ip.split("_")[1]
            node.vm.hostname = "#{hostname}.example.org"
            node.vm.network "private_network", ip: "#{ip.split('_')[0]}"
            node.vm.synced_folder ".", "/vagrant"
            node.vm.provider "virtualbox" do |vb|
                vb.customize ["modifyvm", :id, "--memory", 512]
            end
          config.vm.provision "shell", inline: $script
        end
    end
end
