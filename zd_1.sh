#!/bin/bash

echo "Список всех объектов в текущей директории и их тип"

for item in *; do
    if [ -d "$item" ]; then
        echo "$item — каталог"
    elif [ -f "$item" ]; then
        echo "$item — файл"
    elif [ -L "$item" ]; then
        echo "$item — символическая ссылка"
    else
        echo "$item — другой тип объекта"
    fi
done
echo

if [ -z "$1" ]; then
    echo "Укажите имя файла в качестве аргумента."
else
    if [ -e "$1" ]; then
        echo "Файл '$1' существует."
    else
        echo "Файл '$1' не найден."
    fi
fi
echo

echo "Информация о каждом файле: имя и права доступа"
for file in *; do
    if [ -f "$file" ]; then
        perms=$(ls -l "$file" | awk '{print $1}')
        echo "$file — права: $perms"
    fi
done
