echo -e "\n--- Installing PHP 7 with modules ---\n"

sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update

sudo apt-get install -y php7.3

sudo apt-get install -y php-pear php7.3-curl php7.3-dev php7.3-gd php7.3-sqlite3 php7.3-mbstring php7.3-zip php7.3-mysql php7.3-xml php7.3-intl php-apcu 
sudo apt-get install -y php-xdebug

php -v
