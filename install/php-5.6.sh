sudo apt-get install php5
sudo apt-get install -y php5-gd php5-mcrypt php5-mysql php5-sqlite php-apc 
php -v

# turn on PHP errors
sudo sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php5/apache2/php.ini
sudo sed -i "s/display_errors = .*/display_errors = On/" /etc/php5/apache2/php.ini
