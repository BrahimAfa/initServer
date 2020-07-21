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
sudo apt install docker-ce
set +x

