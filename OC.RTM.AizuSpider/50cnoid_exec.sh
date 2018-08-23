#!/bin/bash -x

. ${HOME}/.profile

#. `basename $0`.conf
_current_dir="`pwd`"

_project_dir="${HOME}/work/Choreonoid/choreonoid.git/sample/OpenRTM"
_project_file="OpenRTM-AizuSpider-Terminal.cnoid"

###
choreonoid ${_project_dir}/${_project_file}
