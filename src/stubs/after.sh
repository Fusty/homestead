#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.
sudo service nginx stop
sudo apt-get purge --yes --force-yes nginx
sudo apt-get update --yes --force-yes
#sudo apt-get install --yes --force-yes libapache2-mod-php5
sudo sed -i -e 's/var\/www\/html/var\/www/g' /etc/apache2/sites-enabled/000-default.conf
sudo sed -i -e 's/#application\/x-httpd-p/application\/x-httpd-p/g' /etc/mine.types
sudo service apache2 restart
