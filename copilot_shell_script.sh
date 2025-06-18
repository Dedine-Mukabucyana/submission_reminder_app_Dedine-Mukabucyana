#!/bin/bash

# Auto-detect the submission_reminder_ directory
Environment=$(find . -maxdepth 1 -type d -name "submission_reminder_*" | head -n 1)

if [[ ! -d "$Environment" ]]; then
  echo "❌ No 'submission_reminder_*' folder found."
  exit 1
fi

config_file="$Environment/config/config.env"

if [[ ! -f "$config_file" ]]; then
  echo "❌ Config file not found at $config_file"
  exit 1
fi

# Prompt for new assignment name
read -p "Enter new assignment name: " new_assignment

# Replace the ASSIGNMENT value (assumed on line 2) in config.env
sed -i "2s/^ASSIGNMENT=.*/ASSIGNMENT=\"$new_assignment\"/" "$config_file"

echo "✅ Assignment updated to '$new_assignment' in $config_file"

# Run startup.sh to check non-submitted students for the new assignment
bash "$Environment/startup.sh"

