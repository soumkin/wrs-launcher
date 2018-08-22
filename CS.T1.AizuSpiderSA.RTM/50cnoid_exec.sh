#!/bin/bash -x

. `basename $0`.conf

###
{
	# Qt5
	export QT_STYLE_OVERRIDE=Cleanlooks

	#
	export CNOID_USE_GLSL=1

	# AGX
	source /opt/Algoryx/AgX-2.23.0.5/setup_env.bash

	# ROS
	#source /opt/ros/kinetic/setup.bash

	# Choreonoid w/ROS Plugin
	#source $HOME/catkin_ws/devel/setup.bash

	#export ROS_IP=10.1.1.10
	#export ROS_MASTER_URI=http://10.1.1.1:11311

	#
	choreonoid --python ${_project_dir}/${_project_file}
}
