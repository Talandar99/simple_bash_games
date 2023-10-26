#!/bin/bash

main (){
    MYPICK=$(($RANDOM%3))
    player_pick
    echo "-----------------------"
    echo "I picked"
    print_pick $MYPICK
    echo "-----------------------"
    echo "You picked"
    print_pick $PLAYER_PICK
    echo "-----------------------"
    check_who_won $MYPICK $PLAYER_PICK
}

player_pick (){
    echo "0 - rock"
    echo "1 - paper"
    echo "2 - scizors"
    read PLAYER_PICK 
}

print_pick(){
    case $1 in
        0)
            echo "rock";;
        1)
            echo "paper";;
        *)
            echo "scizors";;
    esac
}

check_who_won(){
    case $1 in
        0)
            case $2 in
            0)
                echo "it's draw";;
            1)
                echo "you won";;
            *)
                echo "you lost";;
            esac;;
        1)
            case $2 in
            0)
                echo "you lost";;
            1)
                echo "it's draw";;
            *)
                echo "you won";;
            esac;;
        *)
            case $2 in
            0)
                echo "you won";;
            1)
                echo "you lost";;
            *)
                echo "it's draw";;
            esac;;
    esac
}

victory (){
    echo "-----------------------------------------"
    echo "you won"
    echo "-----------------------------------------"
}
main

