# -*- mode: ruby -*-
# vi: set ft=ruby :
servers=[
  {
    :hostname => "unode1",
    :ip => "192.168.44.11",
    :box => "ubuntu/trusty64",
    :ram => 1024,
  },
  {
    :hostname => "cnode2",
    :ip => "192.168.44.12",
    :box => "centos7ga",
    :ram => 1024,
  },
  {
    :hostname => "unode3",
    :ip => "192.168.44.13",
    :box => "ubuntu/trusty64",
    :ram => 1024,
  },
  {
    :hostname => "cnode4",
    :ip => "192.168.44.14",
    :box => "centos7ga",
    :ram => 1024,
  }
]

$script = <<SCRIPT
    cp -R /home/vagrant/.ssh /root/
    sed 's/PermitRootLogin yes/PermitRootLogin no/g;s/#PermitRootLogin/PermitRootLogin/g' /etc/ssh/sshd_config
SCRIPT

Vagrant.configure(2) do |config|
    config.vbguest.auto_update = false
    config.ssh.insert_key = false
    servers.each_with_index do |machine, index|
        config.vm.define machine[:hostname] do |node|
            node.vm.box_check_update = false
            node.vm.box = machine[:box]
            node.vm.hostname = "#{machine[:hostname]}.ansible.dev"
            node.vm.network "private_network", ip: machine[:ip]
            node.vm.provider "virtualbox" do |vb|
                vb.customize ["modifyvm", :id, "--memory", machine[:ram]]
            end
        end
    end
    config.vm.provision "shell", inline: $script
end
