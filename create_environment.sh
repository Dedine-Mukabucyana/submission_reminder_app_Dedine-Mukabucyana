#!/bin/bash

read -p "please enter your first name:" firstname
# creating my first directory which is the main one
MainDirectory="submission_reminder_$firstname"
if [ ! -d "$MainDirectory" ]; then
	mkdir "$MainDirectory"
fi
cd "$MainDirectory"


#Creating directories inside the main directory

mkdir -p "$MainDirectory/app"
mkdir -p "$MainDirectory/modules"
mkdir -p "$MainDirectory/assets"
mkdir -p "$MainDirectory/config"
