#!/bin/sh

_files="
	CS.*/omniorb-nameserver.log
	CS.*/omninames-*.bak
	CS.*/omninames-*.log
	CS.*/omninames-*.ckp
	CS.*/run.*.log
	CS.*/core
	OC.*/omniorb-nameserver.log
	OC.*/omninames-*.bak
	OC.*/omninames-*.log
	OC.*/omninames-*.ckp
	OC.*/run.*.log
	OC.*/core
"

#/bin/ls ${_files} >/dev/null 2>&1
#if [ $? -ne 0 ];
#then
#  echo "No such files."
#  exit
#fi

/bin/ls ${_files} 2>/dev/null
echo

while true;
do
  read -p "Do you wish to remove there files? [y/n] " yn
  case $yn in
    [Yy]* ) rm -f ${_files}; break;;
    [Nn]* ) exit;;
    * ) echo "Please answer yes or no.";;
  esac
done
