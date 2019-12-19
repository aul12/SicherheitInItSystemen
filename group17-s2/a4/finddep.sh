#! /bin/bash

if [ -n "$1" ]
then
	cd ./projects/
	sha_string=$(echo $1 | sha1sum | awk '{print $1}')	# creates sha string that has to be matched
	for d in * ; do 		# iterate through all project folders (assuming there are only project folders in ./projects)
	    	dep_string=.$(cat $d/dependencies)
		if [[ $dep_string == *$sha_string* ]]; then
  			echo $d
		fi
	done
else
    echo "Please specify a project name"
fi

