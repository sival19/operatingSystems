#!/bin/bash
declare -i counter=0

task_100ms()
{
echo "100 ms task running"
}

task_1s()
{
echo "1s task is running"
}

task_5s()
{
echo "5s task is running"
}

while true
do
sleep .1	
counter+=1
if [[ $((counter%50)) == 0 ]]
then
	task_5s
elif [[ $((counter%10)) == 0 ]]
then
	task_1s
else
	task_100ms
fi
done
