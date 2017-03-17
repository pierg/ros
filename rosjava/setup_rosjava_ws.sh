#!/bin/bash
set -e

source /opt/ros/kinetic/setup.bash
mkdir -p ~/rosjava/catkin_ws_rosjava/src
cd ~/rosjava/catkin_ws_rosjava/src
catkin_create_rosjava_pkg rosjava_catkin_package_a
cd ~/rosjava/catkin_ws_rosjava
catkin_make
source devel/setup.bash
echo 'source ~/rosjava/catkin_ws_rosjava/devel/setup.bash' >> ~/.bashrc
cd ~/rosjava/catkin_ws_rosjava/src/rosjava_catkin_package_a
catkin_create_rosjava_project my_pub_sub_tutorial
cd ~/rosjava/catkin_ws_rosjava
catkin_make

exec "$@"
