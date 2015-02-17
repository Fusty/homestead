#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.
sudo service nginx stop
sudo apt-get purge -y -f nginx
sudo apt-get update -y -f
sudo apt-get install -y -f apache2
sudo apt-get install -y -f libapache2-mod-php5
sudo sed -i -e 's/var\/www\/html/var\/www/g' /etc/apache2/sites-enabled/000-default.conf
sudo service apache2 restart
