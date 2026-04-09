#!/bin/bash
function read_number() {
    read -p "Enter number1: " num1
    read -p "Enter number2: " num2
}

while [ option != 5 ]
do
    echo "Enter your choice as number for each option"
    echo -e "1.Add\n2.Subtract\n3.Multiply\n4.Divide\n5.Quit"
    read -p "Enter your option: " option
    if [[ $option -gt 5 || $option -lt 1 ]]; then
        echo -e "Please choose from the given option\n"
    else
        case $option in
            1)  sum=0
                while true
                do
                    read -p "Enter number(only Enter for result): " num
                    if [ -z $num ]; then
                        break
                    fi
                        sum=$(echo "scale=2;$sum + $num" | bc -l)
                done
                echo -e "Sum of two given numbers: $sum\n" ;;

            2)  read_number
                answer=$(echo "scale=2;$num1 - $num2" | bc -l)
                echo -e "Difference of two given numbers: $answer\n" ;;

            3)  multiply=1
                while true
                do
                    read -p "Enter number(only Enter for result): " num
                    if [ -z $num ]; then
                        break
                    fi
                    multiply=$(echo "scale=2;$multiply * $num" | bc -l)
                done

                echo -e "Multiplication given numbers: $multiply\n" ;;

            4)  read_number
                answer=$(echo "scale=2;$num1 / $num2" | bc -l)
                echo -e "Division of two given numbers: $answer\n" ;;

            5)
                break

        esac
    fi
done