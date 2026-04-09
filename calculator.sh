#!/bin/bash

while [ option != 5 ]
do
    echo "Enter your choice as number for each option"
    echo -e "1.Add\n2.Subtract\n3.Multiply\n4.Divide\n5.Quit"
    read -p "Enter your option: " option
    if [[ $option -gt 5 || $option -lt 1 ]]; then
        echo -e "Please choose from the given option\n"
    else
        case $option in
            1)  read -p "Enter number1: " num1
                read -p "Enter number2: " num2
                answer=$(echo "scale=2;$num1 + $num2" | bc -l)
                echo -e "Sum of two given numbers: $answer\n" ;;

            2)  read -p "Enter number1: " num1
                read -p "Enter number2: " num2
                answer=$(echo "scale=2;$num1 - $num2" | bc -l)
                echo -e "Sum of two given numbers: $answer\n"
                echo -e "Difference of two given numbers: $answer\n" ;;

            3)
                read -p "Enter number1: " num1
                read -p "Enter number2: " num2
                answer=$(echo "scale=2;$num1 * $num2" | bc -l)
                echo -e "Sum of two given numbers: $answer\n"
                echo -e "Multiplication of two given numbers: $answer\n" ;;

            4)
                read -p "Enter number1: " num1
                read -p "Enter number2: " num2
                answer=$(echo "scale=2;$num1 / $num2" | bc -l)
                echo -e "Division of two given numbers: $answer\n" ;;

            5)
                break

        esac
    fi
done