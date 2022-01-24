#!/bin/bash

# Add a new remote swift package to this repo
# via subtrees


TARGET=$1

if [ -z "$TARGET" ]
then
  echo "Pass repo name param"
  echo "repo must already exist"
  exit 1
fi

# create subdir for the new package
mkdir $TARGET

# TODO: should be honeyscience owner, not me
git remote add -f $TARGET https://github.com/niehusstaab/$TARGET.git
git merge -s ours --no-commit --allow-unrelated-histories $TARGET/main
git read-tree -P $TARGET -u $TARGET/main
git commit -m "added new package"
#git push
