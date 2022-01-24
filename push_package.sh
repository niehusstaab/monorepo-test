#!/bin/bash

# Force push changes affecting prefix directories to main
# branch of passed in target remote repo


TARGET=$1

if [ -z "$TARGET" ]
then
  echo "Please pass in remote + prefix name (expected same)"
  exit 1
fi

# this seems to overwrite downstream history...
git push $TARGET `git subtree split -P $TARGET main`:main --force
