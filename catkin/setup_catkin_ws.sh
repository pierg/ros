#!/bin/bash
set -e

source /opt/ros/kinetic/setup.bash
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace
cd ~/catkin_ws
catkin_make
source devel/setup.bash
echo 'source ~/catkin_ws/devel/setup.bash' >> ~/.bashrc


exec "$@"