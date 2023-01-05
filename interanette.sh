#!/usr/bin/env bash

# Exit on error
set -e

# Interface to operate
readonly INET=eno1 # may be ethN or wlanN in your case

# Silent mode
q=0; [ "$1" = -q ] && q=1

if [ "$(ip a show $INET up)" ]; then
	stateTo=down
else
	stateTo=up
fi

ifconfig $INET $stateTo
[ $q -eq 0 ] && echo $stateTo
