FROM pmallozzi/ros:turtlebot

RUN apt-get update && apt-get install -y \
    ros-kinetic-rosjava

# Accept java license
RUN echo /usr/bin/debconf shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

# Add ppa:webupd8team repository configuration
RUN apt-get update && \
  apt-get install -yq software-properties-common python-software-properties unzip curl && \
  add-apt-repository ppa:webupd8team/java && \
  apt-get autoremove -yq && \
  apt-get clean -yq && \
  rm -rf /var/lib/apt/lists/*

# Install current JDK version
RUN apt-get update && \
  apt-get install -yq oracle-java8-installer oracle-java8-set-default && \
  apt-get autoremove -yq && \
  apt-get clean -yq && \
  rm -rf /var/lib/apt/lists/*


# Setup catkin rosjava workspace with default gradle subproject
# RUN /bin/bash -c "source /opt/ros/kinetic/setup.bash && \
#                   mkdir -p ~/rosjava/catkin_ws_rosjava/src && \
#                   cd ~/rosjava/catkin_ws_rosjava/src && \
#                   catkin_create_rosjava_pkg rosjava_catkin_package_a && \
#                   cd ~/rosjava/catkin_ws_rosjava && \
#                   catkin_make && \
#                   source devel/setup.bash && \
#                   echo 'source ~/rosjava/catkin_ws_rosjava/devel/setup.bash' >> ~/.bashrc && \
#                   cd ~/rosjava/catkin_ws_rosjava/src/rosjava_catkin_package_a && \
#                   catkin_create_rosjava_project my_pub_sub_tutorial && \
#                   cd ~/rosjava/catkin_ws_rosjava && \
#                   catkin_make"

COPY ./setup_rosjava_ws.sh /
RUN chmod +x /setup_rosjava_ws.sh