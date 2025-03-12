# Auto: The Cronjob Manager

## Description
Auto is a Bash script that helps manage cron jobs easily. It allows you to:
- Add a new cron job
- Delete an existing cron job
- View usage instructions

## Setting up Command
There are multiple ways to get Auto up and running. I recommend to add Auto to a
directory in your PATH. If you want to avoid that, run auto using `./auto` or by creating a symbolic link from the directory auto is installed in to a directory in your PATH. This can be done with `ln -s /path/to/command /path/to/PATH`.



## Usage
```sh
# creates a cronjob at <command_to_automate>, any [time] not filled in is read as *
auto <command_to_automate> [minute] [hour] [day_of_month] [month] [day_of_week]

# removes <command_to_remove> from list of cronjobs. 
# also creates a backup of cronjobs at cronjobs.txt
auto d <command_to_remove> [minute] [hour] [day_of_month] [month] [day_of_week]

# provides in-terminal usage instructions
auto info
```
