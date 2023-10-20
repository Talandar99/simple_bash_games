#!/bin/bash


main (){
    NUMBER=$(($RANDOM%100))
    echo $NUMBER
    echo "Guess the number"
    read USER_NUMBER
    echo $USER_NUMBER
}

main
