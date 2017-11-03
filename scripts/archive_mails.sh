#!/bin/bash
MAILS="/usr/home/Mail"
ARCHIVEDIR="~/Archive/"
AGE="+180"

cd $MAILS
# find mails oder then 200 days
find . -mtime $AGE -type f >> move_list.txt
# clone structure
rsync -av -f"+ */" -f"- *" . $ARCHIVEDIR
# move mails
rsync --recursive --remove-source-files --itemize-changes --archive --files-from=move_list.txt . $ARCHIVEDIR

