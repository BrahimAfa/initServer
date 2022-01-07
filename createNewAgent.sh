echo 'updating server'
# craete vm azure with cli
 apt update

echo '====>>> installing certificats'
apt-get -y install apt-transport-https ca-certificates curl software-properties-common
 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

echo '====>>> adding original docker repos'

 add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

echo '====>>> installing docker from original repo'

apt-get -y install docker-ce

echo '====>>> adding current logged in user to docker group'

usermod –a –G docker $USER

echo '====>>> installing docker compose'

 curl -L "https://github.com/docker/compose/releases/download/2.2.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
 chmod +x /usr/local/bin/docker-compose
echo '====>>> opening the backend and frontend ports in the agent machin'

    yes | ufw enable 
    ufw allow 80
	ufw allow 3001
    ufw allow ssh
	
echo '====>>> update the ubuntu nodjs repository to version 12.X'
# by default ubuntu doesn't have the latest nodjs version

curl -sL https://deb.nodesource.com/setup_12.x 	-o nodesource_setup.sh
sudo bash nodesource_setup.sh

sudo apt-get -y  install nodejs

sudo apt-get -y install npm
