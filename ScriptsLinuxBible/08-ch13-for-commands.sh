#!/bin/bash

# reading values from a file

file="states2.txt"

IFS.OLD= $IFS

IFS=$'\n'

for state in $(cat $file)
do
    echo "Visit beautiful state $state"
done

IFS=$IFS.OLD
# IFS is the Internal Field Separator, which is used by the shell to determine how to split strings into words.
# By default, IFS is set to whitespace (space, tab, newline), which means that the shell will split strings on any whitespace character.
# In this case, we are setting IFS to a newline character, which means that the shell will split strings on newlines only.
# This is useful when reading values from a file, as it allows us to read each line of the file as a separate value.
# The IFS.OLD variable is used to store the original value of IFS, so that we can restore it later.
# This is important because changing the value of IFS can affect how the shell interprets other commands and variables.
# By restoring the original value of IFS, we ensure that the rest of the script behaves as expected.