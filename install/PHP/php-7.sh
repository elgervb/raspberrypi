echo -e "\n--- Installing PHP 7 with modules ---\n"

sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update

sudo apt-get install -y php7.3

sudo apt-get install -y php-pear php7.3-curl php7.3-dev php7.3-gd php7.3-sqlite3 php7.3-mbstring php7.3-zip php7.3-mysql php7.3-xml php7.3-intl php-apcu 
sudo apt-get install -y php-xdebug

sudo pecl install apcu

sudo echo "extension=apcu.so" | sudo tee -a /etc/php/7.3/mods-available/cache.ini
sudo ln -s /etc/php/7.3/mods-available/cache.ini /etc/php/7.3/apache2/conf.d/30-cache.ini

systemctl restart apache2

php -v
