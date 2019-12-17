#! /bin/bash

if [ -n "$1" ] && [ -n "$2" ]
then
    sudo usermod -aG $2 $1 # Add the user to the group with the name of the project
else
    echo "Please specify a user and project"
fi
