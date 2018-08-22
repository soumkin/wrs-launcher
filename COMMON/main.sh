#!/bin/bash -x
#
# $Id$
#

# Top of Launcher.
JL_TOPDIR=${HOME}/.launcher/
export JL_TOPDIR

# Variables.
#QT_GRAPHICSSYSTEM=raster
#export QT_GRAPHICSSYSTEM

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

#echo ">>>>> start omniNames <<<<<"
#killall omniNames
#sleep 0.5
#rm -f omninames-*.log
#rm -f omninames-*.bak
#/usr/bin/omniNames -logdir . -errlog omniorb-nameserver.log -start &
#sleep 0.5

echo ">>>>> 50cnoid_exec.sh <<<<<"
#killall choreonoid
sleep 0.5
./50cnoid_exec.sh

echo ">>>>> POST PROCEDURE <<<<<"
LC_ALL=C ls -alrt
#LC_ALL=C ls -alrt /home/crash/core.*

echo ">>>>> END : `LANG=C date` <<<<<"

exit 0
