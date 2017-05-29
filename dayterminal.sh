#!bin/bash

cd ~/github/lifeisgood 

echo Hi,Bold. 今天心情如何？
send=`date '+%Y年%m月%d日%H:%M'`
#echo `date '+%Y年%m月%d日%H:%M'`
send="|---$send"
#echo $send

read  feeling 
str="|-----^"${feeling}"^"		
#echo $str  

isolation="|"
#echo $isolation

git pull

sed -i '3i\ <br /> '"$str"' <br />' Dayfeelingline.md
sed -i '3i\ <br /> '"$send"'' Dayfeelingline.md
sed -i '3i\ '"$isolation"'' Dayfeelingline.md

git add -A
git commit -m "$send feeling push"

git push origin master

lastdir="`cd -`"
cd $lastdir


