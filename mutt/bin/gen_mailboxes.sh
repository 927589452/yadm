#!/bin/sh
#VERSION 0.0.1
#Generates an per ACCOUNT mailboxes file
export debug=false
export MAILPATH=/home/jens/Mail/
export MAILBOXES=/home/jens/mutt/offlineimap.d/offlineimap_mailboxes
ACCOUNTS=$(find $MAILPATH -depth -mindepth 1 -maxdepth 1 -not -name .\* -print)
if $debug
then
	echo "DEBUG"
	echo $MAILPATH
	echo $MAILBOXES
	echo $ACCOUNTS
	for ACCOUNT in $ACCOUNTS
	do
		echo ACCOUNT: $ACCOUNT 
		echo ""
		ACCOUNTNAME=$(echo $ACCOUNT | sed -e "s#$MAILPATH##g")
		echo ACCOUNTNAME $ACCOUNTNAME
		echo ""
		find $ACCOUNT -mindepth 1 -print0 
		echo ""
		find $ACCOUNT -mindepth 1 -print0 |sed -e "s#$MAILPATH#\"\ \"+#g" -e "s#^\"#mailboxes#"
		echo ""
		echo "Writing to" $MAILBOXES"_"$ACCOUNTNAME
	done
else
	echo "PRODUCTION"
	for ACCOUNT in $ACCOUNTS
	do
		ACCOUNTNAME=$(echo $ACCOUNT | sed -e "s#$MAILPATH##g")
		find $ACCOUNT -mindepth 1 -print0 |sed -e "s#$MAILPATH#\"\ \"+#g" -e "s#^\"#mailboxes#" >> $MAILBOXES"_"$ACCOUNTNAME
	done
fi
