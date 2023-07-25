# scripts
A collection of some user scripts to automate my tasks.

## GitPullCheck
Check weather your local repository is up-to-date with remote or not! Just run the following command.
```
curl -s https://raw.githubusercontent.com/SharafatKarim/scripts/main/GitPullCheck.sh | bash
```

In a bash shell, this script will scan recursively for all directories and sub-directories for git local repository or sub-module. And if any upstream update is available, it'll list them so that you can try `git pull`.
