echo 'updating server'
#craete vm azure with cli
set -x
sudo apt update
set +x

echo 'installing certificats'
set -x
sudo apt install apt-transport-https ca-certificates curl software-properties-common
set +x

echo 'installing certificats'
set -x
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
set +x

echo 'adding original docker repos'
set -x
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
set +x

echo 'installing docker from original repo'
set -x
sudo apt-get -y install docker-ce

sudo usermod –a –G docker $USER

set +x

set -x
 sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
 sudo chmod +x /usr/local/bin/docker-compose
set +x

set -x
    yes | sudo ufw enable 
    sudo ufw allow 80
    sudo ufw allow 3001
    sudo ufw allow ssh
set +x

set -x

curl -sL https://deb.nodesource.com/setup_12.x -o nodesource_setup.sh

sudo bash nodesource_setup.sh

sudo apt-get -y  install nodejs

sudo apt-get -y install npm
set +x




