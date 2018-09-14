#!/bin/bash -x

#
. ./launcher.conf

#
. ${HOME}/.profile
if [ "x${USE_ROS}" == "xyes" ]; then
    . ${HOME}/.profile.d/ROS.sh.disable
fi

#
echo ">>>>> start omniNames <<<<<"
if [ "x${USE_RTM}" == "xyes" ]; then
    killall omniNames
    sleep 0.5
    rm -f omniorb-nameserver.log
    rm -f omninames-*.log
    rm -f omninames-*.bak
    rm -f omninames-*.ckp
    /usr/bin/omniNames -logdir . -errlog omniorb-nameserver.log -start &
    sleep 0.5
fi

#
echo ">>>>> start ROSCORE <<<<<"
if [ "x${USE_ROS}" == "xyes" -a ! -z "$ROS_ROOT" ]; then
    killall roscore
    sleep 0.5
    gnome-terminal -e roscore
    sleep 1
fi

#
echo ">>>>> start Choreonoid <<<<<"
_cnoid_cmd=${CNOID_CMD:-"choreonoid"}
_var="`basename $PWD`_PROJ_FILE"
_proj_opt="`eval echo '$'$_var`"
#
${_cnoid_cmd} ${_proj_opt}
