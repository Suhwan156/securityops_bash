#!/bin/bash -
TGZ=0
if (( $# > 0 ))
then
	if [[${1:0:2} == '-z' ]]
	then
		TGZ=1
 shift
    fi
fi
SYSNAM=$(hostname)
LOGDIR=${1:-/tmp/${SYSNAM}_logs}

mkdir -p $LOGDIR
cd $${LOGDIR} || exit -2
wevutil el | while read ALOG
do
	ALOG="${ALOG%$'\r'}"
	echo "${ALOG}:"
	SAFNAM="${ALOG// /_}"
	SAFNAM="${SAFNAM//\//-}"
	wvutil epl "$ALOG" "${SYSNAM}_${SAFNAM}.evtx"
done

if (( TGZ == 1 ))
then 
	tar -czf ${SYSNAM}_logs.tgz *.evtx
fi
