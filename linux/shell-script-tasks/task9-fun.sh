#!/bin/bash
#Write a shell script to call 'functions' from other script.
#fun.sh  , script.sh

addition() {
    read -p "Enter first number: " a
    read -p "Enter second number: " b
    echo "Addition is $((a + b))"
}

addition 10 20

