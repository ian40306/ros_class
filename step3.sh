sudo chmod 777 ~/duckietown/catkin_ws ~/duckietown/catkin_ws/src
cd ~/duckietown/catkin_ws/
catkin_make
echo "export DUCKIEFLEET_ROOT=~/duckiefleet">>~/.bashrc
cd
source ~/.bashrc
