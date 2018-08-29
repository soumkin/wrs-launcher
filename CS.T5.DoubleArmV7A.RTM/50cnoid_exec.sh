#!/bin/bash -x

. ${HOME}/.profile

#. `basename $0`.conf
_current_dir="`pwd`"

_project_dir="${HOME}/work/Choreonoid/choreonoid.git/sample/WRS2018"
_project_file="T5-DoubleArmV7A-RTM.py"

###
choreonoid --python ${_project_dir}/${_project_file}
