#!/bin/sh

_files="
	task/T[0123456]*/omniorb-nameserver.log
	task/T[0123456]*/omninames-*.bak
	task/T[0123456]*/omninames-*.log
	task/T[0123456]*/omninames-*.ckp
	task/T[0123456]*/run.*.log
	task/T[0123456]*/core
	task/T[0123456]*/core.*
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
