#!/usr/bin/env bash

# Hide the stdin is not a tty garbage...
sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile

export DEBIAN_FRONTEND=noninteractive

echo 'Updating APT...'
apt-get -y update >/dev/null 2>&1

echo 'Installing git, curl, build-essential, libssl-dev, libreadline-dev...'
apt-get -y install git curl build-essential libssl-dev libreadline-dev >/dev/null 2>&1

# Install rbenv
echo 'Installing rbenv...'
sudo -u vagrant git clone git://github.com/sstephenson/rbenv.git /home/vagrant/.rbenv
sudo -u vagrant echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/vagrant/.profile
sudo -u vagrant echo 'eval "$(rbenv init -)"' >> /home/vagrant/.profile
sudo -u vagrant git clone git://github.com/sstephenson/ruby-build.git /home/vagrant/.rbenv/plugins/ruby-build

sudo -u vagrant -i rbenv install 2.1.2
sudo -u vagrant -i rbenv global 2.1.2
# Sanity check
sudo -u vagrant -i ruby -v

# Install mysql
echo 'Installing mysql...'

apt-get -y install  mysql-client mysql-server libmysqlclient-dev libmysql-ruby >/dev/null 2>&1
service mysql restart

mysql -u root -e ";CREATE DATABASE wecrowd;"

# Install Nginx
echo 'Installing nginx...'
apt-get -y install nginx >/dev/null 2>&1
sudo cp /vagrant/nginx /etc/nginx/sites-enabled/everbutton
sudo /etc/init.d/nginx restart

# Install Node.js
echo 'Installing Node.js'
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install nodejs

# Update Gems
echo 'Updating gems...'
sudo -u vagrant -i gem update --system

## Vars
# export g_wepay_client_id='';
# export g_wepay_client_secret='';
# export g_database_username='';
# export g_database_name='';
# export g_database_password='';


# Slap 'at pig!
echo "Install project gems..."
sudo -u vagrant -i gem install bundler
sudo -u vagrant -i bundle install --gemfile=/vagrant/Gemfile
sudo -u vagrant echo 'export PORT=3000' >> /home/vagrant/.profile
sudo -u vagrant echo 'export RAILS_ENV=development' >> /home/vagrant/.profile

echo "Running migrations..."
sudo -u vagrant -i rake -f /vagrant/Rakefile db:migrate
sudo -u vagrant -i rake -f /vagrant/Rakefile db:seed
#sudo -u vagrant -i rake -f /vagrant/Rakefile db:schema:load
# sudo -u vagrant -i foreman start -d /vagrant
