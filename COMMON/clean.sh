#!/bin/sh

_files="
	T[0123456]*/omniorb-nameserver.log
	T[0123456]*/omninames-*.bak
	T[0123456]*/omninames-*.log
	T[0123456]*/omninames-*.ckp
	T[0123456]*/run.*.log
	T[0123456]*/core
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
