
cd ~
mkdir tmp-nextcloud
cd tmp-nextcloud
wget https://download.nextcloud.com/server/releases/nextcloud-19.0.0.tar.bz2
tar -xjf nextcloud-19.0.0.tar.bz2

sudo chmod 777 /var/www/html/
sudo rm /var/www/html/index.html
cp -r nextcloud/* /var/www/html/
sudo chmod 777 /var/www/html/*

cd ..
rm -rf tmp-nextcloud
rm /var/www/

sudo systemctl restart apache2

sudo a2enmod rewrite
sudo a2enmod headers
sudo a2enmod env
sudo a2enmod dir
sudo a2enmod mime

sudo systemctl restart apache2

# SSL
sudo a2enmod ssl
sudo a2ensite default-ssl
sudo systemctl reload apache2