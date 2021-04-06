#!/bin/sh

docker exec -it PostgreSQL psql -U unicorn -d unicorn -t -A  -c "SELECT * FROM Products" > out_products.txt
docker exec -it PostgreSQL psql -U unicorn -d unicorn -t -A  -c "SELECT * FROM Costs" > out_costs.txt
