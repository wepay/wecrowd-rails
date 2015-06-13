Vagrant.require_version ">= 1.7.0"

Vagrant.configure("2") do | config |

  # Box
  config.vm.box = "hashicorp/precise64"

  # Networking
  config.vm.network :forwarded_port, guest: 3000, host: 3000 # WEBrick
  config.vm.network :private_network, ip: "192.168.50.105"
  config.ssh.forward_agent = true

  # Cache the yum packages locally if we can
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :machine
    config.cache.auto_detect = true
    config.cache.enable :apt
  end

  # Check for vbguest plugin
  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = true
    config.vbguest.no_remote = false
  end

  # Synced folders
  if Vagrant::Util::Platform.windows?
    config.vm.synced_folder "", "/vagrant", type: "smb"
    config.vm.synced_folder (File.expand_path '~'), "/home/vagrant/host", type: "smb"
  else
    config.vm.synced_folder "", "/vagrant", type: "nfs"
    config.vm.synced_folder (File.expand_path '~'), "/home/vagrant/host", type: "nfs", :nfs => {
      :mount_options => ["noatime"],
      :exports_options => ["rw", "sync", "nohide"],
      :owner => "vagrant",
      :group => "vagrant",
    }
  end

  # Oracle VirtualBox
  config.vm.provider :virtualbox do | vb |
    vb.name = "WeCrowd Development Environment"
    vb.gui = false

    vb.customize ["modifyvm", :id, "--memory", "512"]
  end

  # VMware Fusion
  config.vm.provider :vmware_fusion do | vm |
    vm.name = "WeCrowd Development Environment"
    vm.gui = false

    vm.vmx["memsize"] = "512"
    vm.vmx["numvcpus"] = "2"
  end

  config.vm.provision "shell", path: "provision.sh"
end
