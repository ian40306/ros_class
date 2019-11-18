sudo useradd -m $1
sudo adduser $1 sudo
sudo adduser $1 video
sudo adduser $1 i2c
sudo chsh -s /bin/bash $1
sudo passwd $1
exit
