#!/bin/bash -x

. ${HOME}/.profile

#. `basename $0`.conf
_current_dir="`pwd`"

_project_dir="${_current_dir}"
_project_file="OpenRTM-DoubleArmV7-Terminal-Sample1.cnoid"

###
choreonoid ${_project_dir}/${_project_file}
