# Linux Update Script

This repository contains a shell script that automates the process of updating the Linux operating system and installed applications. Users can easily check for and install available updates while capturing logs for tracking. With built-in error handling and scheduling capabilities, this script simplifies system maintenance, ensuring your Linux environment stays up-to-date effortlessly.

## Features

- **Automated Updates**: Checks for and installs available system and application updates.
- **Error Handling**: Captures errors and logs them for review.
- **Scheduled Execution**: Can be set to run at regular intervals using cron jobs.
- **Log File**: Creates a log file to track updates and any issues that may arise.

## Prerequisites

- A Linux distribution (Ubuntu, Debian, CentOS, etc.).
- Sufficient privileges to run update commands (usually requires sudo).

## Usage Instructions

1. **Open a Terminal**:  
   Access your terminal application.

2. **Navigate to the Script Directory**:  
   Change to the directory where the script is located:

   ```bash:```
   cd /path/to/your/script


## Make the Script Executable:
If not already executable, set the execute permission:

```bash```
chmod +x update_script.sh


**Run the Script**:
Execute the script with elevated privileges:
```bash:`
sudo ./update_script.sh

## Check the Log File:
After running the script, check the log file (e.g., update_log.txt) for details on the updates installed and any errors that may have occurred.

## Scheduling the Script:
You can automate the execution of this script by scheduling it to run at specific intervals using cron:

**1.Open the cron editor:**
```bash`
crontab -e

**2.Add a new line to schedule the script (e.g., daily at 2 AM):**
0 2 * * * /path/to/your/script/update_script.sh >> /path/to/your/script/update_log.txt 2>&1

**3.Save and exit the editor. The script will now run automatically as scheduled.**

## Logging
The script generates a log file that records:

-The date and time of each update attempt.
-The updates that were installed.
-Any errors that occurred during the update process.
You can find the log file in the same directory as the script.





