#!/bin/bash

kdialog --warningyesno "Existing data must be overwritten to extract this archive. Do you want to overwrite them?"; case $? in 0) ow="0";; 1) ow="1";; esac; echo "$ow";