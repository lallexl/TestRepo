Тестовое задание кандидата 

# Цели:
Проверяем навыки работы с docker\docker-compose (проброс портов\volume), bash скрипты, SQL (DDL\DML). 

# Задачи:
Поднять в docker-compose две разных базы данных, сгенерировать данные и положить в базу A, вытащить и модифицировать из базы A и положить в базу B. 


## Подготовка ОС к выполнению тестового задания:

1. git clone 'https://github.com/lallexl/TestRepo.git' && cd /TestRepo/ && chmod +x startup.sh  #Загрузка необходимых файлов с репозитория 
2. ./startup.sh  # Запуск скрипта подготовки ОС 

## Запуск общего скрипта с применением флагов

.my-script.sh <переменная>
```
Переменные для ввода:
create - создаст структуру данных в базах
autoinsert - заполнит данными первую бд PostgreSQL
migrate_10 - перенсет данные с изменениями цены в 10 раз
```
