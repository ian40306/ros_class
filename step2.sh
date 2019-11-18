sudo apt update
sudo apt dist-upgrade -y
mkdir ~/.ssh
chmod 777 ~/.ssh
echo "HostKeyAlgorithms ssh-rsa">>~/.ssh/config
sudo cp -r /home/ubuntu/duckietown/ .
echo "source ~/duckietown/environment.sh">>~/.bashrc
cd ~/duckietown/catkin_ws/
catkin_make
echo "export DUCKIEFLEET_ROOT=~/duckiefleet">>~/.bashrc
source ~/.bashrc
cd
git clone https://github.com/duckietown/duckiefleet.git
echo "hostname: $1">>~/duckiefleet/robots/taiwan/$1.robot.yaml
echo "username: $2">>~/duckiefleet/robots/taiwan/$1.robot.yaml
echo "description: $3">>~/duckiefleet/robots/taiwan/$1.robot.yaml
rosrun duckieteam create-machines
echo "source ~/duckietown/set_ros_master.sh $1">>~/.bashrc
source ~/.bashrc
