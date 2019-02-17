#!/bin/bash

Exec=bash -c '' 'dummy-param' %F

Exec=bash -c 'nameext=$(basename "$1"); content=${nameext%.*}; nameext2=$(getdir=$(kdialog --title "Enter path" --getexistingdirectory ~/); echo "$getdir"; "$getdir"); dir=$(dirname "$1"); cd "$nameext2"; overw="0"; if ( [ -d "$content" ] || [ -f "$content" ] ); then echo "file/folder exists"; overw=$(kdialog --warningyesno "Existing data must be overwritten to extract this archive. Do you want to overwrite them?"; case $? in 0) ow="0";; 1) ow="1";; esac; echo "$ow"; "$ow"); fi; echo $overw; cd "$dir"; if [ "$overw" == "0" ]; then cp "$nameext" "$nameext2"; cd "$nameext2"; gzip -d -r -f "$nameext"; kdialog --title "Extract" --msgbox "Extraction done!"; else kdialog --title "Extract" --error "Extraction aborted!"; fi;' 'dummy-param' %F