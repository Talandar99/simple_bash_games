#!/bin/bash

main (){
    NUMBER=$(($RANDOM%100))
    USER_NUMBER=-1
    while [ $NUMBER -ne $USER_NUMBER ]; 
    do 
        guess
        feedback
    done
    victory
}

guess (){
    echo "Guess the number"
    read USER_NUMBER
}

feedback (){
    if [ $USER_NUMBER -lt $NUMBER ] 
    then
        echo "your number is smaller than mine"
    else 
        echo "your number is bigger than mine"
    fi
}

victory (){
    echo "-----------------------------------------"
    echo "Congratulations"
    echo "My number is"
    echo $NUMBER
}
main

