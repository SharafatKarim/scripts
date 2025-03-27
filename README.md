# scripts
A collection of some user scripts to automate my tasks.

## GitPullCheck
Check weather your local repository is up-to-date with remote or not! Just run the following command.
```
curl -s https://raw.githubusercontent.com/SharafatKarim/scripts/main/GitPullCheck.sh | bash
```

In a bash shell, this script will scan recursively for all directories and sub-directories for git local repository or sub-module. And if any upstream update is available, it'll list them so that you can try `git pull`.

## BatchConvertToAvif
Batch convert your images to `avif` with one click. This script can iterate through subdirectories as well, so there's no escape. 

To use this script, besides cloning this repo, simply run the line on your terminal,
```
curl -s https://raw.githubusercontent.com/SharafatKarim/scripts/main/BatchCovertToAvif.sh | bash
```

Inside the script, fell free to modify two following variables, to get more job done by using imagemagick.
```
# User variables
input_format=("jpg" "jpeg" "png")
output_format="avif"
```
![image](https://github.com/SharafatKarim/scripts/assets/93897936/520bb514-9ce0-4618-ac1f-e754b68b243f)


## BatchConvertToWebp
Same as `avif`, just the `output_format` is set to `webp`. Use the following line to execute right from your terminal,
```
curl -s https://raw.githubusercontent.com/SharafatKarim/scripts/main/BatchCovertToWebp.sh | bash
```

> Later, you can remove `png, jpg and jpeg` files using this script!
> ```
> curl -s https://raw.githubusercontent.com/SharafatKarim/scripts/main/BatchRemoveOriginal\(PNG%E2%81%84JPG%E2%81%84JPEG\).sh | bash
> ```
