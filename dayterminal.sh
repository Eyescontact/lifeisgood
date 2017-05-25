#!bin/bash

cd ~/github/lifeisgood 

echo Hi,Bold. 今天心情如何？
send=`date '+%Y年%m月%d日 %H:%M'`
#echo `date '+%Y年%m月%d日 %H:%M'`
echo $send

read feeling 
str="|-------------**"${feeling}"**"		
echo $str  

last="`cd -`"
cd $last
