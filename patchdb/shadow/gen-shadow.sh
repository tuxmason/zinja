#/bin/bash

#
# Purpuse: manually generates /etc/shadow and /etc/gshadow
# Author: Tux Mason <tuxmason@gmail.com>
# Notes: idea taken from buildroot
#

help_message() {
	echo "Usage: ${0} -r <target root directory>"
	exit 1
}

if [[ $# -lt 2 ]]; then 
	help_message
fi

while [[ $# -gt 0 ]]; do
	key="$1"
	case $key in
	   -r)
		if [ ! -d $2 ]; then
			echo "Error: root directory ${2} does not exist"
			exit 1
		fi
		TARGETDIR=$2
		PASSWDFILE=${TARGETDIR}/etc/passwd
		GROUPFILE=${TARGETDIR}/etc/group
		SHADOWFILE=${TARGETDIR}/etc/shadow
		GSHADOWFILE=${TARGETDIR}/etc/gshadow
		shift
		shift ;;
	    *)
		help_message 
		shift
		shift ;;
	esac
done


if [ ! -f $PASSWDFILE ]; then 
	echo "Error: password file $PASSWDFILE not found" ;
	exit 1; 
fi

if [ ! -f $GROUPFILE ]; then 
	echo "Error: group file $GROUPFILE not found" ;
	exit 1; 
fi

# Get number of days since January 1, 1970
numdays=`echo $(($(date --utc --date "$1" +%s)/86400))`

if [ -f $SHADOWFILE ]; then rm -f $SHADOWFILE; fi

for line in `cat $PASSWDFILE | sed -e "s@ @@g"`; do
	name=`echo $line | cut -d':' -f1`
	echo "$name:x:$numdays:0:99999:7:::" >> $SHADOWFILE 
done

if [ -f $GSHADOWFILE ]; then rm -f $GSHADOWFILE; fi

for line in `cat $GROUPFILE | sed -e "s@ @@g"`; do
	group=`echo $line | cut -d':' -f1`
	members=`echo $line | cut -d':' -f4`
	echo "$group:x::$members" >> $GSHADOWFILE
done

#disable users from accessing systemd groups using newgrp command
for grp in `cat $GROUPFILE | grep systemd | cut -d':' -f1 | xargs`; do
	sed -i -e "s,^${grp}:[^:]*:,${grp}:!:,g" $GSHADOWFILE
done

#make shadow files readonly
chmod -v 0400 $SHADOWFILE
chmod -v 0400 $GSHADOWFILE
