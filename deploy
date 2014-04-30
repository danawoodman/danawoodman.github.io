#!/bin/bash

echo -e "\033[0;32mBuilding project...\033[0m"

# Build the project.
hugo -s ./

echo -e "\033[0;32mCommitting changes...\033[0m"

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

echo -e "\033[0;32mDeploying updates to Github...\033[0m"

# Push source and build repos.
git push origin master
#git subtree push --prefix=public public master
git push public `git subtree split --prefix public master`:master --force
