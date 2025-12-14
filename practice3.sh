#!/bin/bash

# Initialize counters
pass=0
fail=0

echo -n "Enter number of students: "
read n

for ((i=1; i<=n; i++))
do
    echo ""
    echo "Student $i"
    echo -n "Enter Student ID: "
    read id

    echo -n "Enter marks of Subject 1: "
    read m1
    echo -n "Enter marks of Subject 2: "
    read m2
    echo -n "Enter marks of Subject 3: "
    read m3

    total=$((m1 + m2 + m3))
    percent=$(( total * 100 / 300 ))

    echo "Total Marks = $total"
    echo "Percentage = $percent%"

    # Grade assignment
    if (( percent >= 80 )); then
        grade="A+"
    elif (( percent >= 70 )); then
        grade="A"
    elif (( percent >= 60 )); then
        grade="B"
    elif (( percent >= 50 )); then
        grade="C"
    else
        grade="F"
    fi

    echo "Grade = $grade"

    if (( percent >= 50 )); then
        pass=$((pass + 1))
    else
        fail=$((fail + 1))
    fi
done

echo ""
echo "------ FINAL SUMMARY ------"
echo "Total Students: $n"
echo "Passed: $pass"
echo "Failed: $fail"
