
TASK 1: Creating Environment setup script:

I had to clone before starting any task

My setup allows the user to create a directory with the name he/she wishes to be called, creates reminder of those who didin't do the assignment

I created the directory called create_environment.sh that contains script to allow the user to enter their names and another directory containing their names is created by default and contains the following subdirectories

      .app/reminder.sh that contains the main script

      .assets/submissions.txt  containing data file

      .config/config.env stores used in configuration

      .Modules/functions.sh checks submission and entry point


HERE IS THE STRUCTURE OF FILES:

├copilot_shell_script.sh
├create_environment.sh
├README.md
├create_environment.sh
	├app/
	  └reminder.sh
	├assets
	  └submissions.txt
	├config/
	  └config.env
	├modules/
	  └functions.sh

Task 2: Creating the Copilot Shell Script

I again created a directory called copilot_shell_script.sh that is responsible for:

  .Updating assignments in config.env

  .Uses sed for config modifications

  .Restarting monitoring after changes


I added script in startup.sh file which is found in submission_reminder_[firstname]/

  . It launches the reminder app

  . Displays current assignment, days remaining and students who didn't submit their assignments

TROUBLESHOOTING:

 .Check configuration setting in config.env

FOR THE FIRST-TIME SETUP:

 write:  ./create_environment.sh

(Enter your name when prompted)

FOR DAILY OPERATION:

 Write:   cd submission_reminder_[firstname]
	   ./startup.sh
