#!/bin/sh

read -p "Enter a process name that you want to stop: " name
processes=$(ps -ef | grep $name) && printf "$processes\n" # Processes associated with given name

# Enter a number of the process to kill
read -p "Enter number of the process you want to stop: " number
process=$(ps -ef | grep $name | cut -d " " -f 6 | head -n $number | tail -n $number-1) && kill -9 $process
