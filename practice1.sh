#!/bin/bash

# Function to check if a number is prime
check_prime() {
    num=$1
    if [ $num -le 1 ]; then
        echo "$num is NOT a prime number."
        return
    fi
    for ((i=2; i*i<=num; i++)); do
        if (( num % i == 0 )); then
            echo "$num is NOT a prime number."
            return
        fi
    done
    echo "$num is a PRIME number."
}

# Function to check if a year is a leap year
check_leap_year() {
    year=$1
    if (( (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0) )); then
        echo "$year is a Leap Year."
    else
        echo "$year is NOT a Leap Year."
    fi
}

# Function to calculate sum of series from 1 to n
sum_series() {
    n=$1
    sum=0
    for ((i=1; i<=n; i++)); do
        sum=$((sum + i))
    done
    echo "Sum of series from 1 to $n is: $sum"
}

# Main script starts here
echo -n "Enter a number: "
read number

while true; do
    echo ""
    echo "------ MENU ------"
    echo "1) Check Prime"
    echo "2) Check Leap Year"
    echo "3) Print Sum of Series (1 to n)"
    echo "4) Exit"
    echo "------------------"
    echo -n "Enter your choice: "
    read choice

    case $choice in
        1) check_prime $number ;;
        2) check_leap_year $number ;;
        3) sum_series $number ;;
        4) echo "Exiting..."; break ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
done







