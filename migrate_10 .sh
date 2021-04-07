#!/bin/sh

docker exec -it PostgreSQL psql -U unicorn -d unicorn -t -A -c "SELECT * FROM Products" > out_products.txt  
docker exec -it PostgreSQL psql -U unicorn -d unicorn -t  -A -c "SELECT * FROM Costs" > out_costs.txt     

inputfile_costs="out_costs.txt"
inputfile_products="out_products.txt"

    declare -a costs
    declare -a product
    costs=(`cat "$inputfile_costs"`)
    product=(`cat "$inputfile_products"`)
    times=(`cat "./times.txt"`)
    for (( i = 0; i < $times; i++ ))
      do.
         Id=`echo ${costs[$i]} | cut -d '|' -f 1`
         Name=`echo ${costs[$i]} | cut -d '|' -f 2`
         Price=`echo ${costs[$i]} | cut -d '|' -f 3` 
         docker exec -i MySQL mysql -u root -proot rainbow -e "INSERT INTO Costs (Id, Name, Price) VALUES ($Id, $Name, $Price*10);"
    done

    for (( t = 0; t < $times; t++ ))
      do
          Id=`echo ${product[$t]} | cut -d '|' -f 1`
          Name=`echo ${product[$t]} | cut -d '|' -f 2`
          Status=`echo ${product[$t]} | cut -d '|' -f 3`
          Quantity=`echo ${product[$t]} | cut -d '|' -f 4`
          PriceId=`echo ${product[$t]}  | cut -d '|' -f 5`
          docker exec -i MySQL mysql -u root -proot rainbow -e "INSERT INTO Products (Id, Name, Status, Quantity, PriceId) VALUES ($Id, $Name, $Status, $Quantity, $PriceId)"
      done
