set -x

wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh 

sudo apt update 
sudo apt install -y build-essential htop iperf3

git config --global crendential.helper store
git config --global user.name simon-mo
git config --global user.email xmo@berkeley.edu
git config --global core.editor vim

bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3
echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> $HOME/.bashrc
source $HOME/.bashrc
rm Miniconda3-latest-Linux-x86_64.sh

wget -qO- https://get.docker.com/ | sh

