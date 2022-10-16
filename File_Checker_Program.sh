#!/bin/bash

# Welcome to my file checker program

echo "Welcome to my file checker script!"

read -p "Enter source folder path: " source_folder_path
read -p "Enter destination folder path: " destination_folder_path

for file in $(find $source_folder_path -printf "%P\n"); do
        if [ -a $destination_folder_path/$file ]; then
                if [ $source_folder_path/$file -nt $destination_folder_path/$file ]; then
                        echo "There is a new file"
                        cp -r $source_folder_path/$file $destination_folder_path

                else
                echo "The file already exist, skipping this file"
                fi

        else
                echo "copying your files to the destination folder"
                cp -r $source_folder_path/$file $destination_folder_path
        fi
done


tar czf destination_folder.tar $destination_folder_path

gzip destination_folder.tar

