#!/bin/bash 

echo "--- Script to create linux users ----"
read -p "How many users: " user_ct

function _create_usr {
    read -p "enter username: " username
    read -sp "enter password: " password
    useradd $username -p $password -c "User created through script"
}

if [ $user_ct -gt 1 ]; then
    echo "Creating multi-users"
    for user in $(seq 1 $user_ct); do 
        _create_usr
    done

elif [ $user_ct -eq 1 ]; then
    echo "Creating single user: "
    _create_usr

else
    echo "Wrong input. Try again"
fi 
