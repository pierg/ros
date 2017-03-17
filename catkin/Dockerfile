FROM ros:kinetic-ros-core

RUN apt-get update && apt-get install -y \
    ros-kinetic-ros-base=1.3.0-0* \
    && rm -rf /var/lib/apt/lists/*

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

# # Setup catkin workspace
# RUN /bin/bash -c "source /opt/ros/kinetic/setup.bash && \
#                   mkdir -p ~/catkin_ws/src && \
#                   cd ~/catkin_ws/src && \
#                   catkin_init_workspace && \
#                   cd ~/catkin_ws/ && \
#                   catkin_make && \
#                   source devel/setup.bash && \
#                   echo 'source ~/catkin_ws/devel/setup.bash' >> ~/.bashrc"

COPY ./setup_catkin_ws.sh /
RUN chmod +x /setup_catkin_ws.sh