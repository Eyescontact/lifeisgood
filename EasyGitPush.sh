#!bin/bash

echo Plz input commit msg!
read str
commit_msg="$str"
#echo $commit_msg

lastdir="`pwd`"
cd $lastdir

git add -A
git commit -m "$commit_msg"

git push origin master


