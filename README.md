##WeCrowd

This is the official repository for the WeCrowd rails app.


##Setup
1. Visit ```http://downloads.vagrantup.com/``` and download the latest version, install it.
2. Visit ```https://www.virtualbox.org/wiki/Downloads``` and download the latest version, install it.
3. Checkout the wecrowd-rails repo and cd into it and run ```$ vagrant up```. This will start a VirtualBox VM, and spool up our stack, installing everything that is needed along the way and also running the initial migration.
4. After several minutes you will be back at your prompt. You now need to run ```$ vagrant ssh```. This will open an SSH session to the VM.
5. CD into ```/vagrant```. This path is the same folder you checked out the wecrowd-rails repo into.
6. Run ```rails server```.
7. Visit ```192.168.50.105:3000```, you should now see the app running.
8. You did it!