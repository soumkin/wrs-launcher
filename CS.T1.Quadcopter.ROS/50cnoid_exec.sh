#!/bin/bash -x

. ${HOME}/.profile
. ${HOME}/.profile.d/ROS.sh.disable

#. `basename $0`.conf
_current_dir="`pwd`"

_project_dir="${HOME}/work/Choreonoid/choreonoid.git/sample/WRS2018"
_project_file="T1-Quadcopter-ROS.py"

###
gnome-terminal -e roscore
sleep 1

###
choreonoid --python ${_project_dir}/${_project_file}
