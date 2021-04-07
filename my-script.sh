#!/bin/sh
echo " "
echo "Переменные для ввода: "
echo "create - создаст структуру данных в базах"
echo "autoinsert - заполнит данными первую бд PostgreSQL"
echo "migrate 10 - перенсет данные с изменениями цены в 10 раз"
echo " "

echo -n "Введите параметр: "

read param
case $param in
    create )
        ./сreate_structure.sh;;
    autoinsert )
        ./autoinsert.sh;;
    'migrate 10' )
        ./migrate_10.sh;;
    * )  echo "Параметр введен неверно";;
esac
