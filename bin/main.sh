#!/bin/bash -x
#
# $Id$
#

#
. ./launcher.conf

# Unlimit core dump size.
ulimit -c unlimited

# Timestamp.
_date=`date +%Y%m%d-%H%M%S`

# Main.
exec > run.${_date}.log 2>&1

echo ">>>>> START : `LANG=C date` <<<<<"

echo ">>>>> ulimit <<<<<"
ulimit -a

echo ">>>>> env <<<<<"
env

echo ">>>>> set variables <<<<<"
#QT_GRAPHICSSYSTEM=raster
#export QT_GRAPHICSSYSTEM

echo ">>>>> set AGX License Key <<<<<"
if [ "x${USE_AGX}" == "xyes" -a ! -z "${AGX_DIR}" ]; then
    ls -al ${AGX_DIR}/agx.lic
    [ -f /media/wrs/*/agx.lic ] && cp -p /media/wrs/*/agx.lic ${AGX_DIR}/
    ls -al ${AGX_DIR}/agx.lic
    sleep 0.5
fi

echo ">>>>> 50cnoid_exec.sh <<<<<"
killall choreonoid
sleep 0.5
./50cnoid_exec.sh

echo ">>>>> 60move_cnoidlog.sh <<<<<"
./60move_cnoidlog.sh

echo ">>>>> POST PROCEDURE <<<<<"
LC_ALL=C ls -alrt
#LC_ALL=C ls -alrt /home/crash/core.*

echo ">>>>> END : `LANG=C date` <<<<<"

exit 0
