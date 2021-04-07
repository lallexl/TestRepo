#!/bin/sh

i=$(shuf -i 10-20 -n 1)
echo "Сгенерировано $i строк"
echo " "

echo $i > times.txt
for random_times in $(seq 0 $i);
    do
<------>docker exec -it PostgreSQL psql -U unicorn -d unicorn -c "INSERT INTO Costs (Name, Price)  SELECT random()*30, random()*25"
<------>key=`docker exec -it PostgreSQL psql -U unicorn -d unicorn -t -c "SELECT MAX(id) FROM Costs"`
<------>docker exec -it PostgreSQL psql -U unicorn -d unicorn -c "INSERT INTO Products (Name, Status, Quantity, PriceId) SELECT random()*30, random()*30, random()*30, $key".
    done
