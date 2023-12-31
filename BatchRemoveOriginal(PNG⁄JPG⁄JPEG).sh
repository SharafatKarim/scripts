#!/bin/bash
Color_Off='\033[0m'       # Text Reset
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green

# User variables
delete_format=("jpg" "jpeg" "png")

# Image number counting
count=0
total=0

function proceed_to_convert() {
    magick "$1" "${1%.*}".avif
    echo "$1"
    echo "${1%.*}".avif
}

function check_for_specific_type() {
    local item="$1"
    for str in ${delete_format[@]}; do
        if [ "$str" = "${item##*.}" ]; then
            (( total += 1 ))
            rm "$item"
            echo -e "${Red}[ ${item##*.} removed ]${Color_Off} - $item"
            (( count += 1 ))
        fi
    done
}

# Recursive function to list all folders in a directory
function list_folders_recursively() {
    local current_dir="$1"

    # Loop through all items in the current directory
    for item in "$current_dir"/*; do
    # Loop through all items in the current directory
        if [ -e "$item" ]; then
            check_for_specific_type "$item"
        fi
        if [ -d "$item" ]; then
            # Enter the directory
            cd "$item"
            # Recursively call the function for the subdirectory
            list_folders_recursively "$item"
        fi
    done
}

# Provide the starting directory path
starting_directory="$PWD"

# Call the recursive function with the starting directory
list_folders_recursively "$starting_directory"
echo ""
echo "Deleted $total files!"
