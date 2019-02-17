#!/bin/bash

kdialog --warningyesno "This folder already includes an archive with the same name. Do you want to overwrite it?"; case $? in 0) ow="0";; 1) ow="1";; esac; echo "$ow";