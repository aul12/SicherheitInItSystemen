#! /bin/bash
if [ -n "$1" ]
then
    chmod 0700 projects/$1 # Assuming the project manager can still edit the files
else
    echo "Please specify a project name"
fi
