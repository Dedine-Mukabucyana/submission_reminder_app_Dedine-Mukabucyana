
# submission_reminder_app_Dedine-Mukabucyana
TASK 1: Creating Environment setup script
My setup allows the user to create a directory with the name he/she wishes to be called, creates reminder of those who didin't do the assignments

The first task creates  main directory which is called submission_reminder_app_Dedine-Mukabucyana
 .I created the directory called submission_reminder_Dedine that contains script to aloww the user to enter their names which later creates other directories
 . I later created subfolders:
      .assets/submissions.txt checks submission status
      .config/config.env stores current assignment
      .Modules/functions.sh checks submission status
HERE IS THE STRUCTURE OF FILES
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
  .Updates assignments in config.env
  .Uses sed for config modifications
  .Restarts monitoring after changes

I added script in startup.sh file which is found in submission_reminder_[firstname]/
  . It launches the reminder app
  . Displays current assignment, days remaining and students who didn't submit their assignments

FOR THE FIRST-TIME SETUP:
 write:  ./create_environment.sh
 (Enter your name when prompted)
FOR DAILY OPERATION:
 Write:   cd submission_reminder_[firstname]
	   ./startup.sh
