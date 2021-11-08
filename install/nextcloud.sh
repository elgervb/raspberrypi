# https://docs.nextcloud.com/server/19/admin_manual/index.html

cd ~
mkdir tmp-nextcloud
cd tmp-nextcloud
wget https://download.nextcloud.com/server/releases/nextcloud-22.2.0.tar.bz2
tar -xjf nextcloud-22.2.0.tar.bz2

sudo mkdir /var/www/nextcloud
sudo cp -r nextcloud/* /var/www/nextcloud/
sudo chown -R www-data:www-data /var/www/nextcloud/

cd ..
rm -rf tmp-nextcloud
cd /var/www/html

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
sudo systemctl restart apache2


# MARIABD 

sudo mysql_secure_installation
# answer yes to all questions

sudo mysql -u root -p
	create database nextcloud;
	create user nextcloud@localhost identified by '<PWD>';
	grant all privileges on nextcloud.* to nextcloud@localhost identified by '<PWD>';
	flush privileges;
	exit;
	
sudo vi /etc/mysql/my.cnf
# add these lines at the bottom:
	log-bin = /var/log/mysql/mariadb-bin
	log-bin-index = /var/log/mysql/mariadb-bin.index
	binlog_format = mixed
	
sudo systemctl restart mysql

# configuration
## https://docs.nextcloud.com/server/latest/admin_manual/configuration_database/linux_database_configuration.html
