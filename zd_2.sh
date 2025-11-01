#!/bin/bash

echo "Текущее значение переменной PATH"
echo "$PATH"
echo

if [ -z "$1" ]; then
    echo "Укажите путь к директории, которую нужно добавить в PATH."
    echo "Пример: ./path_update.sh /home/user/my_scripts"
    exit 1
fi

export PATH="$PATH:$1"
echo "Новое значение PATH:"
echo "$PATH"
echo
