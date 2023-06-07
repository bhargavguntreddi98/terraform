#!/bin/bash
sudo apt upate
sudo apt install wget unzip net-tools apache2  -y
sudo systemctl start apache2
sudo systemctl enable apache2
wget https://templatemo.com/tm-zip-files-2020/templatemo_522_venue.zip
unzip templatemo_522_venue.zip
cp -r templatemo_522_venue/* /var/www/html/
sudo systemctl restart apache2
