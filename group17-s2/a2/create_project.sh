#! /bin/bash
ADMIN_USER=$USER # If required admin can be a different user

if [ -n "$1" ]
then
    echo "Creating Project $1"
    mkdir -p projects/$1 # Create the directory for the project
    sudo groupadd $1 # Create a group with the name of the project
    sudo chown $ADMIN_USER:$1 projects/$1 # Owner of the directory is the admin-user, group the group for the project
    chmod 0770 projects/$1 # Group and Owner can do everything, the other users nothing
else
    echo "Please specify a project name"
fi
