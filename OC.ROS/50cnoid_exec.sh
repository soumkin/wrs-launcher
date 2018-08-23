#!/bin/bash -x

. ${HOME}/.profile
. ${HOME}/.profile.d/ROS.sh.disable

#. `basename $0`.conf
_current_dir="`pwd`"

_project_dir="${HOME}/work/Choreonoid/choreonoid.git/sample/OpenRTM"
_project_file="OpenRTM-AizuSpider-Terminal.cnoid"

###
gnome-terminal -e "rosrun --debug choreonoid_joy node"
sleep 1

###
gnome-terminal -e "rosrun --debug rqt_image_view rqt_image_view"
sleep 1
