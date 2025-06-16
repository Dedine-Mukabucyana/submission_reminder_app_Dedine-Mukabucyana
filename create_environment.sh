#!/bin/bash

read -p "please enter your first name:" firstname
# creating my first directory which is the main one
MainDirectory="submission_reminder_$firstname"
if [ ! -d "$MainDirectory" ]; then
        mkdir "$MainDirectory"
fi

#Creating directories inside the main directory

mkdir -p "$MainDirectory/app"
mkdir -p "$MainDirectory/modules"
mkdir -p "$MainDirectory/assets"
mkdir -p "$MainDirectory/config"

# creating empty files
touch "$MainDirectory/app/reminder.sh"
touch "$MainDirectory/modules/functions.sh"
touch "$MainDirectory/assets/submissions.txt"
touch "$MainDirectory/config/config.env"
touch "$MainDirectory/startup.sh"
