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


