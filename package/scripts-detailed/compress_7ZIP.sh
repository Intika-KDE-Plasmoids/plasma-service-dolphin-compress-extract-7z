#!/bin/bash

# Rule: ';' and double blackslash '\\'

bash -c '' 'dummy-param' %U

bash -c 'dir=$(dirname "$1"); cd "$dir"; files=""; y="0"; for i in "$@"; do file=$(basename "$i"); files="$files"" \\"""$file""\\""; y=$((y+1)); done; if [ $y -gt 1 ];then name=$(TITLE="Name of archive"; TEXT="Please enter a name for this archive:"; INIT="archive"; name=$(kdialog --title "$TITLE" --inputbox "$TEXT" "$INIT"); case $? in 0) getname="$name";; 1) getname="";; esac; echo "$getname"; "$getname"); if [ "$name" == "" ]; then kdialog --title "Compress" --error "Compression aborted!"; exit; fi; else name=$(basename "$1");fi ; archname="$name"".7z"; exec="7z a -aoa ""\\"$archname\\"""$files"; overw="0"; if ( [ -d "$archname" ] || [ -f "$archname" ] ); then echo "file/folder exists"; overw=$(kdialog --warningyesno "This folder already includes an archive with the same name. Do you want to overwrite it?"; case $? in 0) ow="0";; 1) ow="1";; esac; echo "$ow"; "$ow"); fi; echo $overw; if [ "$overw" == "0" ]; then echo "$exec" > .comparchive.sh && chmod a=r+w+x .comparchive.sh; sh .comparchive.sh && rm .comparchive.sh; kdialog --title "Compress" --msgbox "Compression done!"; else kdialog --title "Compress" --error "Compression aborted!"; fi;' 'dummy-param' %U