# WeCrowd

WeCrowd is a sample Rails application which shows you how to integrate with our 
WePay Clear™ product offering.


## Examples

<http://wecrowd.wepay.com>


## Prerequisites

1. Install [Vagrant].
1. Install [VirtualBox] (free, but slow) OR [VMware] + 
   [VMware Provider for Vagrant] (costs, but fast).
1. Checkout the WeCrowd repository.

   ```bash
   git checkout git@github.com:wepay/wecrowd-rails.git
   ```

1. Install the [vagrant-vbguest] plugin for Vagrant.

   ```bash
   vagrant plugin install vagrant-vbguest
   ```

1. Move into the root of the repository and start Vagrant. This will start a 
   VirtualBox VM, and spool up our stack, installing everything that is needed 
   along the way and also running the initial migration.

   ```bash
   # For VirtualBox
   vagrant up --provider=virtualbox

   # For VMware Fusion (OS X)
   vagrant up --provider=vmware_fusion

   # For VMware Workstation (Linux/Windows)
   vagrant up --provider=vmware_workstation
   ```


1. After several minutes you will be back at your prompt. You now need to open 
   an SSH session to the VM.

   ```bash
   vagrant ssh
   ```

1. Set the following environment variables:

   ```bash
   export RAILS_ENV="development"
   export WECROWD_SECRET_KEY_BASE=<value>
   export WECROWD_DATABASE_PASSWORD=<value>
   export WECROWD_CLIENT_ID=<value>
   export WECROWD_CLIENT_SECRET=<value>
   export WECROWD_ACCOUNT_ID=<value>
   export WECROWD_ACCESS_TOKEN=<value>
   ```

1. Run the Rails server.

   ```bash
   cd /vagrant
   rails server
   ```

1. Visit <http://0.0.0.0:3000> in your web browser to see the app running.


## Contributing
Here's the process for contributing:

1. Fork WeCrowd to your GitHub account.
2. Clone your GitHub copy of the repository into your local workspace.
3. Write code, fix bugs, and add tests with 100% code coverage.
4. Commit your changes to your local workspace and push them up to your GitHub copy.
5. You submit a GitHub pull request with a description of what the change is.
6. The contribution is reviewed. Maybe there will be some banter back-and-forth in the comments.
7. If all goes well, your pull request will be accepted and your changes are merged in.


## Authors, Copyright & Licensing

* Copyright (c) 2014–2015 [WePay](http://wepay.com).

See also the list of [contributors](https://github.com/wepay/wecrowd-rails/contributors) who participated in this project.

Licensed for use under the terms of the [Apache 2.0] license.

  [Apache 2.0]: http://opensource.org/licenses/Apache-2.0
  [Keybase]: https://keybase.io
  [Vagrant]: http://vagrantup.com
  [vagrant-vbguest]: https://github.com/dotless-de/vagrant-vbguest
  [VirtualBox]: https://www.virtualbox.org/wiki/Downloads
  [VMware]: https://www.vmware.com/products/
  [VMware Provider for Vagrant]: https://www.vagrantup.com/vmware
