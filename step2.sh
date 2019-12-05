cd
sudo apt update
sudo apt-get update
sudo apt dist-upgrade -y
mkdir ~/.ssh
chmod 777 ~/.ssh
echo "HostKeyAlgorithms ssh-rsa">>~/.ssh/config
sudo cp -r /home/ubuntu/duckietown/ .
echo "source ~/duckietown/environment.sh">>~/.bashrc
source ~/.bashrc
