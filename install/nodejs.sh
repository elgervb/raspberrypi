echo -e "\n--- Installing NodeJS & NPM ---\n"

curl -sL https://deb.nodesource.com/setup_5.x | sudo bash - > /dev/null 2>&1
sudo apt-get install nodejs -y > /dev/null 2>&1

echo "Node Version: "
node -v
echo "NPM Version "
npm -v
