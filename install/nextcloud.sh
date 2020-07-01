
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


# MARIABD 

sudo mysql_secure_installation
# answer yes to all questions

sudo mysql -u root -p
	create database nextcloud;
	create user nxtcloudadmin@localhost identified by 'admin123';
	grant all privileges on nextcloud.* to nxtcloudadmin@localhost identified by 'admin123';
	flush privileges;
	exit;
	
sudo vi /etc/mysql/my.cnf
# add these lines at the bottom:
	log-bin = /var/log/mysql/mariadb-bin
	log-bin-index = /var/log/mysql/mariadb-bin.index
	binlog_format = mixed
	
sudo systemctl reload mysql
