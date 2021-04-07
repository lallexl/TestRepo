#!/bin/sh

case $1 in
    create | Create )
        ./сreate_structure.sh;;
    autoinsert | Autoinsert )
        ./autoinsert.sh;;
    'migrate_10' | "Migrate_10" )
        ./migrate_10.sh;;
    * )  echo "Параметр введен неверно"

echo " "
echo "Переменные для ввода: "
echo "create - создаст структуру данных в базах"
echo "autoinsert - заполнит данными первую бд PostgreSQL"
echo "migrate_10 - перенсет данные с изменениями цены в 10 раз"
echo " "
    ;;
esac
