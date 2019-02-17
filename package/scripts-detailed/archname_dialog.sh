#!/bin/bash

TITLE="Name of archive"; TEXT="Please enter a name for this archive:"; INIT="archive"; name=$(kdialog --title "$TITLE" --inputbox "$TEXT" "$INIT"); case $? in 0) getname="$name";; 1) getname="";; esac; echo "$getname";