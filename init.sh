echo 'updating server'


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
sudo apt install docker-ce
set +x

set -x
 sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
 sudo chmod +x /usr/local/bin/docker-compose
set +x

set -x
    yes | sudo ufw enable 
    sudo ufw allow 80
    sudo ufw allow 3001
set +x

set -x
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install --lts
set +x




