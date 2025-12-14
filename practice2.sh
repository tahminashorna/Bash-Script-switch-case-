#!/bin/bash

# Function to check if a year is a leap year
is_leap_year() {
    year=$1
    if (( (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0) )); then
        return 0  # true
    else
        return 1  # false
    fi
}

# Take input from user
echo -n "Enter starting year: "
read start

echo -n "Enter ending year: "
read end

# Validate input
if (( start > end )); then
    echo "Invalid range. Starting year must be less than or equal to ending year."
    exit 1
fi

echo ""
echo "Leap years between $start and $end:"
count=0

for (( year=start; year<=end; year++ ))
do
    if is_leap_year $year; then
        echo "$year"
        count=$((count + 1))
    fi
done

echo ""
echo "Total number of leap years: $count"
 
