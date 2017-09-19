#!/bin/sh
export NETLIST="10.47.9.1 10.47.9.2 10.47.9.3 10.47.9.4 10.47.9.5"
for SYSTEM in $NETLIST
do
	echo $SYSTEM
	ping -c 1 $SYSTEM > /dev/null || echo "SYSTEM DOWN" | mail -s $SYSTEM admin-nettest@927589452.de
done

