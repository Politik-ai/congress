#!/bin/sh
session=1989
con=101
odd=1
while [ $session -le 2020 ]
do
    echo "Adding year $session votes for congress $con"
    ./run votes --govtrack --congress=$con --session=$session
    if [ $odd -eq -1 ]
    then
        con=$((con+1))
    fi
    odd=$(($odd*-1))
    session=$((session+1))
done

