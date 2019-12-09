
echo
  echo "###############################################################"
  echo "############### Installing Pre-req ##################"
  echo "###############################################################"
# Update package lists

echo "# Updating package lists"
sudo apt-add-repository -y ppa:git-core/ppa
sudo apt-get update


# Install nvm dependencies
echo "# Installing nvm dependencies"
sudo apt-get -y install build-essential libssl-dev

# Execute nvm installation script
echo "# Executing nvm installation script"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

# Set up nvm environment without restarting the shell
export NVM_DIR="${HOME}/.nvm"
[ -s "${NVM_DIR}/nvm.sh" ] && . "${NVM_DIR}/nvm.sh"
[ -s "${NVM_DIR}/bash_completion" ] && . "${NVM_DIR}/bash_completion"

# Install node
echo "# Installing nodeJS"
nvm install 10.15.3
nvm use 10.15.3

#Install npm 
echo "# Installing npm"
npm install npm@5.6.0 -g

echo -n 'Node:'
node --version

#go install
echo "# Installing go"
sudo apt install golang-go

#docker install

sudo apt install docker
echo "# Installing docker"
sudo apt install docker-compose

echo "# Installing docker compose"


echo ''
echo 'Installation completed, versions installed are:'
echo ''
echo -n 'Node:           '
node --version
echo -n 'npm:            '
npm --version
echo -n 'Docker:         '
docker --version
echo -n 'Docker Compose: '
docker-compose --version
echo -n 'Python:         '
python -V

echo -n 'go version'
go version
