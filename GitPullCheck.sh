#!/bin/bash
Color_Off='\033[0m'       # Text Reset
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green

# Git update check and quit
function git_update_availability_check() {
    local git_directory="$1"
    cd $git_directory

     # Get the remote and branch names
    remote_name="origin"
    branch_name=$(git rev-parse --abbrev-ref HEAD) # Change this to the desired branch name

    # Fetch the latest information from the remote repository
    git fetch --quiet $remote_name $branch_name

    # Check if the local branch is behind the remote branch
    if git diff --quiet $branch_name $remote_name/$branch_name; then
        echo -e "${Green}[UPTODATE]${Color_Off} - $git_directory"
    else
        echo -e "${Red}[OUTDATED] - $git_directory${Color_Off}"
    fi
}

# Recursive function to list all folders in a directory
function list_folders_recursively() {
    local current_dir="$1"

    # Loop through all items in the current directory
    for item in "$current_dir"/*; do
        if [ -d "$item" ]; then
            # Enter the directory
            cd "$item"

            # Check weather GIT exists or not
            if [ -d "$item/.git" ] || [ -e "$item/.git" ]; then
                git_update_availability_check "$item"
            fi

            # Recursively call the function for the subdirectory
            list_folders_recursively "$item"
        fi
    done
}

# Provide the starting directory path
starting_directory="$PWD"

# Call the recursive function with the starting directory
list_folders_recursively "$starting_directory"

