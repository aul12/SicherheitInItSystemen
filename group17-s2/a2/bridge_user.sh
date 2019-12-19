#! /bin/bash

if [ -n "$1" ] && [ -n "$2" ]
then
    sudo setfacl -m u:$1:rx projects/$2 # Add read and write permissions to the project folder for the given user
else
    echo "Please specify a user and project"
fi
