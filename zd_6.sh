#!/bin/bash

echo "чтение данных из файла input.txt"

#проверка
if [ ! -f "input.txt" ]; then
    echo "Файл input.txt не найден. Создаём тестовый файл..."
    echo -e "Первая строка\nВторая строка\nТретья строка" > input.txt
fi

echo "Содержимое файла input.txt:"
cat input.txt
echo

wc -l <input.txt> output.txt
echo "Количество строк записано в файл output.txt"
echo "Содержимое output.txt:"
cat output.txt
echo

echo "Проверка ошибок при выполнении"
ls nonexistent_file 2> error.log
echo "ошибка (если есть) записана в файл error.log"
echo "содержимое error.log:"
cat error.log
