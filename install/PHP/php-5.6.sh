echo -e "\n--- Installing PHP with modules ---\n"

sudo apt-get install php5.6 > /dev/null 2>&1
sudo apt-get install -y php5.6-gd php5.6-mcrypt php5.6-mysql php5.6-sqlite php5.6-xml php5.6-mbstring php-apcu  > /dev/null 2>&1
php -v

# turn on PHP errors
sudo sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php5/apache2/php.ini > /dev/null 2>&1
sudo sed -i "s/display_errors = .*/display_errors = On/" /etc/php5/apache2/php.ini > /dev/null 2>&1
