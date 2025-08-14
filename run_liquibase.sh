#!/bin/bash
# Use the Bash shell to execute this script

# Script to automate Liquibase update
# This script navigates to its folder and runs a Liquibase database update

# Go to the directory where this script is located
cd "$(dirname "$0")"
# "$(dirname "$0")" extracts the folder path of the script
# cd changes the current working directory to that path

# Print a message to indicate the start of the update
echo "Running Liquibase update..."

# Run Liquibase using the specified properties file
liquibase --defaultsFile=liquibase.properties update
# --defaultsFile=liquibase.properties tells Liquibase which configuration file to use
# update tells Liquibase to apply any pending database changesets

# Print a message to indicate the update has finished
echo "Liquibase update completed!"
