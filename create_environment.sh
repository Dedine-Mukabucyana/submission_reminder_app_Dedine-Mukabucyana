#!/bin/bash

read -p "please enter your first name:" firstname
# creating my first directory which is main

MainDirectory="submission_reminder_$firstname"
if [ ! -d "$MainDirectory" ]; then
	mkdir "$submissions"
fi
cd "$MainDirectory"
if ! cd "MainDirectory"; then
	echo "Entering directory failed $MainDirectory" >&2
fi
#Creating directories inside the main directory

mkdir -p "$MainDirectory/app"
mkdir -p "$MainDirectory/modules"
mkdir -p "$MainDirectory/assets"
mkdir -p "$MainDirectory/config"
