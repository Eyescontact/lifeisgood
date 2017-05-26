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

sed -i 1i\ \n "$str" Dayfeelline.md
sed -i 1i\ \n "$send" Dayfeelline.md
sed -i 1i\\n "$isolation" Dayfeelline.md

git add -A
git commit -m "$send feeling push"

git push origin master

lastdir="`cd -`"
cd $lastdir


