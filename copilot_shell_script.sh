#!/bin/bash

# Auto-detect the submission_reminder_ directory
Environment=$(find . -maxdepth 1 -type d -name "submission_reminder_*" | head -n 1)

if [[ ! -d "$Environment" ]]; then
<<<<<<< HEAD
  echo "❌ No 'submission_reminder_*' folder found."
=======
  echo " No 'submission_reminder_*' folder found."
>>>>>>> main
  exit 1
fi

config_file="$Environment/config/config.env"

if [[ ! -f "$config_file" ]]; then
<<<<<<< HEAD
  echo "❌ Config file not found at $config_file"
=======
  echo " Config file not found at $config_file"
>>>>>>> main
  exit 1
fi

# Prompt for new assignment name
read -p "Enter new assignment name: " new_assignment

# Replace the ASSIGNMENT value (assumed on line 2) in config.env
sed -i "2s/^ASSIGNMENT=.*/ASSIGNMENT=\"$new_assignment\"/" "$config_file"

<<<<<<< HEAD
echo "✅ Assignment updated to '$new_assignment' in $config_file"
=======
echo " Assignment updated to '$new_assignment' in $config_file"
>>>>>>> main

# Run startup.sh to check non-submitted students for the new assignment
bash "$Environment/startup.sh"

