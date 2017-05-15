FROM pmallozzi/ros:catkin

RUN apt-get update && apt-get install -y \
    ros-kinetic-turtlebot \
    ros-kinetic-turtlebot-apps \
    ros-kinetic-turtlebot-interactions \
    ros-kinetic-turtlebot-simulator \
    #ros-kinetic-rx \
    ros-kinetic-turtlesim 
RUN source /opt/ros/kinetic/setup.bash
RUN roscore
RUN roslaunch turtlebot_gazebo turtlebot_world.launch

RUN git clone https://github.com/kikedaddy/ThesisApi.git git && cd git/ThesisApi
RUN chmod +x rest_python.py
RUN ./rest_python.py 8886