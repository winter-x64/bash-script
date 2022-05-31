#!usr/bin/bash

# get project name
echo 'Project Name: '
read project_name

# make project folder
mkdir -p ./$project_name/src

# cd to project folder
cd ./$project_name


# setting up project folder

# create python ENV
echo "Creating python ENV..."

python3 -m venv env

echo "created python ENV..."

echo "Setting up the directory..."

# git initialize
echo "do you want to initialize git (y/n): "  #<- get user input
read  gitResponse  #<- get user input

if [[ $gitResponse == "y" ]]; then    #<- check if yes
    git init
    echo $project_name > README.md
    echo "initialized git..."
else
    echo "git not yet initialized..."
fi

echo "setting up completed..."