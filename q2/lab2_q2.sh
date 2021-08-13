#!/bin/sh

# Author : Rupasai


#No of arguments
echo $#

ans=`expr 0`
for i in $*
do
  a=`expr $i \* $i \* $i`
  ans=`expr $a + $ans`
done
#Answer
echo $ans

