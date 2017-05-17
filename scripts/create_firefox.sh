#!/bin/sh

create_profiledir()
{
	PROFILE=$1
	echo $PROFILE
	mkdir ~/.mozilla/firefox/$PROFILE 
}

create_startscript()
{
	
	PROFILE=$1
	firefox -no-remote \
		-CreateProfile "$PROFILE"
	echo $PROFILE
	cat <<- _EOF_ > ~/scripts/firefox_$PROFILE.sh 
#\!/bin/sh
firefox	-no-remote \
	-P "$PROFILE"
_EOF_
	chmod u+x ~/scripts/firefox_$PROFILE.sh  
}

### MAIN 

echo $1
create_profiledir $1 && echo "Profile OK" || echo "PROFILE ERROR"
create_startscript $1 && echo "Script OK" || echo "SCRIPT ERROR"

