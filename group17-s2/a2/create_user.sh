#! /bin/bash

if [ -n "$1" ]
then
    echo "Creating User $1"
    sudo adduser --no-create-home  $1 # For simplicity no home directory for the user
else
    echo "Please specify a user name"
fi
