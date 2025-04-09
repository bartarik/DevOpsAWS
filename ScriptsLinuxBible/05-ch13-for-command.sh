#!/bin/bash

# another example of how not to use the for command

for test in Nevada Hampshire New Mexico New York Nort Carolina
do 
    echo "word: $test"
done

echo "------------------"


# here we can see how it should work

for test in Nevada Hampshire "New Mexico" "New York" "Nort Carolina"
do 
    echo "word: $test"
done