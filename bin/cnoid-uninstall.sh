#!/bin/sh

usage() {
  echo "Usage: $0 <install_manifest.txt>"
}

if [ $# -ne 1 ]; then
  usage
  exit 1
fi

if [ ! -f $1 ]; then
  echo "File not found: $1"
  exit 1
fi

#
_files="`cat $1`"

/bin/ls -1 ${_files} 2>/dev/null
echo

while true;
do
  read -p "Do you wish to remove there files? [y/n] " yn
  case $yn in
    [Yy]* ) rm -f ${_files}; break;;
    [Nn]* ) break;;
    * ) echo "Please answer yes or no.";;
  esac
done

#
_dirs="
	/usr/local/lib/choreonoid-1.7
	/usr/local/share/choreonoid
	/usr/local/share/choreonoid-1.7
"

echo

/bin/ls -1d ${_dirs} 2>/dev/null
echo

while true;
do
  read -p "Do you wish to remove there directries? [y/n] " yn
  case $yn in
    [Yy]* ) rm -rf ${_dirs}; break;;
    [Nn]* ) break;;
    * ) echo "Please answer yes or no.";;
  esac
done

exit
