#! /bin/bash
if [ -n "$1" ]
then
    chmod 0750 projects/$1 # Only read and execute permissions for the project group, the owner can still do everything
else
    echo "Please specify a project name"
fi
