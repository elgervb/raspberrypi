echo -e "\n--- Installing NodeJS & NPM ---\n"

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash > /dev/null 2>&1
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
source ~/.bashrc > /dev/null 2>&1

nvm install node
nvm install iojs

nvm ls

# OLD stuff. Let's install nodeJS with NVM
#curl -sL https://deb.nodesource.com/setup_5.x | sudo bash - > /dev/null 2>&1
#sudo apt-get install nodejs -y > /dev/null 2>&1

#echo "Node Version: "
#node -v
#echo "NPM Version "
#npm -v
