#!/bin/bash

add() {
    result=$(( $1 + $2 ))
    echo $result
}
sum=$(add 5 10)
echo "Sum: $sum"
if [ "$1" == 1 ] ;
then
    exit 1;
fi
