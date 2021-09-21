#!/bin/bash -x

#
. ./launcher.conf

#
echo ">>>>> start move choreonoid log <<<<<"
_var="`basename $PWD`"

#
find $CNOID_PROJ_DIR/$_var*.log -type f | xargs -I% mv -v % ./

exit 0

