#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y apache2
echo "Hello World" > /var/www/html/index.html
sudo systemctl restart apache2
