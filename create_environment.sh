#!/bin/bash

# Prompt the user for their first name
read -p "Please enter  yourfirst  name:" firstname

# Set the main directory name
mainDirectory="submission_reminder_${firstname}"

# Create the directory structure
mkdir -p "${mainDirectory}/config"
mkdir -p "${mainDirectory}/app"
mkdir -p "${mainDirectory}/modules"
mkdir -p "${mainDirectory}/assets"

cat > "${mainDirectory}/config/config.env" << EOF
# This is the config file
ASSIGNMENT="Shell Navigation"
DAYS_REMAINING=2
EOF


cat > "${mainDirectory}/assets/submissions.txt" << EOF
student, assignment, submission status
Chinemerem, Shell Navigation, not submitted
Chiagoziem, git, not submitted
Divine, Shell Navigation, not submitted
Anissa, Shell Basics, submitted
Milliam, git, not submitted
Aliah, Shell Basics, not submitted
Giselle, Shell Navigation, submitted
Lily, Shell Basics, not submitted
Keya, git, submitted
EOF


cat > "${mainDirectory}/modules/functions.sh" << 'EOF'
#!/bin/bash

# Function to read submissions file and output students who have not submitted
function check_submissions {
    local submissions_file=$1
    echo "Checking submissions in $submissions_file"

    # Skip the header and iterate through the lines
    while IFS=, read -r student assignment status; do
        # Remove leading and trailing whitespace
        student=$(echo "$student" | xargs)
        assignment=$(echo "$assignment" | xargs)
        status=$(echo "$status" | xargs)

        # Check if assignment matches and status is 'not submitted'
        if [[ "$assignment" == "$ASSIGNMENT" && "$status" == "not submitted" ]]; then
            echo "Reminder: $student has not submitted the $ASSIGNMENT assignment!"
        fi
    done < <(tail -n +2 "$submissions_file") # Skip the header
}



EOF

cat > "${mainDirectory}/app/reminder.sh" << 'EOF'

# Source environment variables and helper functions
source "$(dirname "$0")/../config/config.env"
source "$(dirname "$0")/../modules/functions.sh"

# Path to the submissions file
submissions_file="$(dirname "$0")/../assets/submissions.txt"

echo "Assignment: $ASSIGNMENT"
echo "Days remaining to submit: $DAYS_REMAINING days"
echo "--------------------------------------------"

check_submissions "$submissions_file"
EOF


cat > "${mainDirectory}/startup.sh" << 'EOF'

# Launch the actual app from the scripts folder
bash "$(dirname "$0")/app/reminder.sh"
EOF


# Make all .sh files executable
find "$mainDirectory" -type f -name "*.sh" -exec chmod +x {} \;

echo "Environment successfully setup in: ${mainDirectory}"
