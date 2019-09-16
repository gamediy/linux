#!/bin/sh
snum=`ps auxf|grep /shell.sh|wc -l `
echo $snum
while (( $snum<=0 ))
do
num=`ps aufx| grep /usr/sbin/|wc -l`
echo $num
if [ $num -lt 1 ]
then
 echo "start"
fi
 sleep 5
done
