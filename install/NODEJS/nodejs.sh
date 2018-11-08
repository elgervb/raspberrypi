echo -e "\n--- Installing NodeJS & NPM ---\n"

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash > /dev/null 2>&1
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
source ~/.bashrc > /dev/null 2>&1

nvm install node
nvm alias default node

nvm ls
