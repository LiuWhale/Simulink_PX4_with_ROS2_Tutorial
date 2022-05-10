#!/bin/bash

export ROS_VERSION=2
export ROS_DISTRO=foxy
export PX4AUTOPILOTHOME=/home/user/PX4-Autopilot

# Set the plugin path so Gazebo finds our model and sim
export GAZEBO_PLUGIN_PATH=${GAZEBO_PLUGIN_PATH}:$PX4AUTOPILOTHOME/build
# Set the model path so Gazebo finds the airframes
export GAZEBO_MODEL_PATH=${GAZEBO_MODEL_PATH}:$PX4AUTOPILOTHOME/Tools/sitl_gazebo/models
# Disable online model lookup since this is quite experimental and unstable
export GAZEBO_MODEL_DATABASE_URI=""
# Set path to sitl_gazebo repository
export SITL_GAZEBO_PATH=$PX4AUTOPILOTHOME/Tools/sitl_gazebo

# Launch Gazebo simulation with PX4 RTPS client
gnome-terminal --title="PX4 SITL RTPS Gazebo" -- /bin/bash -c 'source ~/px4_ros_com_ros2/install/setup.bash; cd $PX4AUTOPILOTHOME; make px4_sitl_rtps gazebo_iris'
#./Tools/gazebo_sitl_multiple_run.sh -t px4_sitl_rtps -m iris -w empty -l rtps -n 3 
#make px4_sitl_rtps gazebo_iris

sleep 12

gnome-terminal --title="microRTPS Agents" -- /bin/bash -c 'source ~/px4_ros_com_ros2/install/setup.bash; micrortps_agent -t UDP'
# -r 2020 -s 2019 -n iris_0 & micrortps_agent -t UDP -r 2022 -s 2021 -n iris_1 & micrortps_agent -t UDP -r 2024 -s 2023 -n iris_2'


