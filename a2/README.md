# Auto: The Cronjob Manager

## Description
Auto is a Bash script that helps manage cron jobs easily. It allows you to add, delete, edit, and list cron jobs, as well as view usage instructions. Auto is designed to be simple and flexible, any time field you leave blank is interpreted as a wildcard (`*`).

## Features
- **Add a New Cron Job:** Append a new cron job to your crontab.
- **Delete an Existing Cron Job:** Remove a cron job by matching its exact name
- **Edit a Cron Job:** Update the schedule of an existing cron job
- **List Cron Jobs:** Display all cron jobs currently installed in your crontab.
- **View Usage Instructions:** Get in-terminal guidance on how to use Auto.

## Setting Up Auto
Place the `auto` script in a directory that's included in your `PATH` so you can run it from anywhere. Alternatively, run it directly using `./auto` or create a symbolic link:
```sh
ln -s /path/to/auto /usr/local/bin/auto
```

## Example Output
```sh
# editing cron jobs
:~$ auto list
* * * * * ftype
:~$ auto -e ftype "*" 2
:~$ auto list
* 2 * * * ftype

# adding new cron jobs
:~$ auto log.sh "*" "*" 3
:~$ auto list
* 2 * * * ftype
* * 3 * * log.sh

# deleting cron jobs
:~$ auto list
* * * * * ftype
:~$ auto -d ftype
auto list
