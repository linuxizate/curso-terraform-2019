#!/bin/bash
# Este es el user data para el proyecto ${project_name}
sudo apt-get update -y
sudo apt-get install -y apache2 libapache2-mod-php5.6 software-properties-common
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update -y
sudo apt-get install php5.6 -y
sudo apt-get install php-mongo && sudo echo "extension = mongo.so" > /usr/local/etc/php/5.6/mods-available/mongo.ini
sudo a2enmod php5.6 ; sudo service apache2 restart
sudo apt-get install curl -y
sudo curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
sudo apt-get update -y
sudo apt-get install nodejs
instance_id=$(curl -s 169.254.169.254/latest/meta-data/instance-id)
sudo echo $instance_id | sudo tee /var/www/html/index.html
sudo echo "<?php phpinfo(); ?>" |sudo tee /var/www/html/phpinfo.php 
