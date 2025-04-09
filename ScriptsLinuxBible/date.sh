#!/bin/bash
# Comment
echo "Today is: "
date
echo "Current time is: " 
date +%T
echo "Current date is: "
date +%D
echo "Current month is: "
date +%m
echo "Current year is: "
date +%Y     
echo "Current day is: "
date +%d
echo "Current weekday is: "
date +%A
echo "Current time zone is: "
date +%Z
echo "Current date and time is: "
date +%c
echo "Current date and time in UTC is: "
date -u +%c
echo "Current date and time in UTC is: "
date -u +%Y-%m-%dT%H:%M:%SZ