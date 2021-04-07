#!/bin/bash
#Создание структуры таблиц PostgreSQL и MySQL
docker exec -it PostgreSQL  psql -U unicorn -d unicorn  -c 'CREATE TABLE Costs (Id SERIAL NOT NULL primary key,Name VARCHAR(255),Price DECIMAL(6,1) NOT NULL); CREATE TABLE Products (Id SERIAL NOT NULL primary key,Name varchar(255) NOT NULL,Status VARCHAR(255) NOT NULL,Quantity VARCHAR(255) NOT NULL,PriceId int,FOREIGN KEY (PriceId)  REFERENCES Costs(Id));'
docker exec -it MySQL mysql -u root -proot rainbow -e 'CREATE TABLE Costs (Id INT NOT NULL primary key AUTO_INCREMENT,Name VARCHAR(255),Price decimal(6,1)); CREATE TABLE Products (Id SERIAL NOT NULL primary key,Name VARCHAR(255),Status VARCHAR(255),Quantity INT,PriceId int, FOREIGN KEY (PriceId)  REFERENCES Costs(Id));'
