
 sudo apt update

 sudo apt -y install mariadb-server


echo 'Set root password:'

echo 'sudo mysql -u root -p'

echo 'USE mysql;
echo 'UPDATE user SET password=PASSWORD('my-password') WHERE User='root' AND Host = 'localhost';
echo 'FLUSH PRIVILEGES;'
