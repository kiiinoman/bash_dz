#!/bin/bash

hello() {
    local name="$1"
    echo "Hello, $name"
}

sum() {
    local a="$1"
    local b="$2"
    local result=$((a + b))
    echo "$result"
}

read -p "Введите ваше имя: " username
hello "$username"

echo

read -p "Введите первое число: " num1
read -p "Введите второе число: " num2

total=$(sum "$num1" "$num2")
echo "Сумма чисел $num1 и $num2 = $total"
