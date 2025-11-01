#!/bin/bash

read -p "введите число: " num

#проверка
if [ "$num" -gt 0 ]; then
    echo "$num — положительное."
elif [ "$num" -lt 0 ]; then
    echo "$num — отрицательное."
else
    echo "число равно нулю."
fi
echo

if [ "$num" -gt 0 ]; then
    echo "подсчёт от 1 до $num:"
    i=1
    while [ "$i" -le "$num" ]; do
        echo "$i"
        ((i++))
    done
else
    echo "пподсчёт выполняется только для положительных чисел."
fi
