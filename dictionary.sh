#!/bin/bash -

declare -A dice_dict
dice_dict[1]=0
dice_dict[2]=0
dice_dict[3]=0
dice_dict[4]=0
dice_dict[5]=0
dice_dict[6]=0
loop=1

while [ $loop -ne 0 ]
do
    dice=$((RANDOM%6+1))
    #echo "dice value : $dice"
    cnt=${dice_dict[$dice]}
    #echo "cnt value : $cnt"
    ((cnt++))
    dice_dict[$dice]=$cnt

    if [ $cnt -eq 10 ]
    then
        loop=0
    fi
done

echo ${dice_dict[*]}
echo ${!dice_dict[*]}