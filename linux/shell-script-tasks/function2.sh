#!/bin/bash

find_user() {
    username=$1
    if  grep -q "^$username:" /etc/passwd; then
    echo "username founded"
    else
    echo "username not founded"
    fi
}
 
find_user praveenjb2025