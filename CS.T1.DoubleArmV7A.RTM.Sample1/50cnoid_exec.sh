#!/bin/bash -x

. ${HOME}/.profile

#. `basename $0`.conf
_current_dir="`pwd`"

#_project_dir="${HOME}/work/Choreonoid/choreonoid.git/sample/WRS2018"
_project_dir="${_current_dir}"
_project_file="T1-DoubleArmV7A-RTM-Sample1.py"

###
choreonoid --python ${_project_dir}/${_project_file}
