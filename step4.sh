git clone https://github.com/duckietown/duckiefleet.git
echo "hostname: $1">>~/duckiefleet/robots/taiwan/$1.robot.yaml
echo "username: $2">>~/duckiefleet/robots/taiwan/$1.robot.yaml
echo "description: $3">>~/duckiefleet/robots/taiwan/$1.robot.yaml
sudo chmod 777 ~/duckietown/catkin_ws/src/00-infrastructure/duckietown
rosrun duckieteam create-machines
echo "source ~/duckietown/set_ros_master.sh $1">>~/.bashrc
source ~/.bashrc