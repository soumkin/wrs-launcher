#!/bin/sh

#
# Dump script for logfile and project, model files.
#

usage() {
  echo "Usage: $0 <DIR>..."
}

if [ $# -le 0 ]; then
  usage
  exit 1
fi

echo "Search logfiles..."
for i in $@;
do
  find $i -name "*.log" 2>/dev/null
done
echo "done."
echo "-----"
du -sh $@ 2>/dev/null
echo

while true;
do
  read -p "Do you wish to dump directories? [y/n] " yn
  case $yn in
    [Yy]* ) break;;
    [Nn]* ) exit;;
    * ) echo "Please answer yes or no.";;
  esac
done

_dumpdatafile="dumpdir-`date +'%Y%m%d%H%M'`.tgz"

echo "Dumping..."
tar zcfp ./${_dumpdatafile} $@ 2>/dev/null
ls -al ${_dumpdatafile}
echo "done."
