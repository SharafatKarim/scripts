# scripts
A collection of some user scripts to automate my tasks.

## GitPullCheck
Check weather your local repository is up-to-date with remote or not! Just run the following command.
```
curl -s https://raw.githubusercontent.com/SharafatKarim/scripts/main/GitPullCheck.sh | bash
```

In a bash shell, this script will scan recursively for all directories and sub-directories for git local repository or sub-module. And if any upstream update is available, it'll list them so that you can try `git pull`.

## BatchConvertToAvif
Batch convert your images to avif with one click. This script can iterate through subdirectories as well, so there's no escape. Inside the script, fell free to modify two following variables, to get more job done by using imagemagick.

```
# User variables
input_format=("jpg" "jpeg" "png")
output_format="avif"
```
To use this script, besides cloning this repo, simply run the line on your terminal,
```

```
