create database company;

use company;

-- Create table employees
CREATE TABLE employees (
    id INT,
    name VARCHAR(40),
    email VARCHAR(30),
    date_of_birth DATE
);

insert into employees (id, name, email, date_of_birth) 
values (1, 'Chirag', 'chirag.khimani@gmail.com', '1953-05-23');

insert into employees (id, name, email, date_of_birth) 
values (2, 'Azat', 'azat.sdet@gmail.com', '1963-08-23');

insert into employees (id, name, email, date_of_birth) 
values (3, 'Madina', 'madina.party@gmail.com', '1947-07-12');

insert into employees (id, name, email, date_of_birth) 
values (4, 'Alikhan', 'ali.fun@gmail.com', '1934-09-23');

insert into employees (id, name, email, date_of_birth) 
values (5, 'Diana', 'diana.sdet@gmail.com', '1967-01-23');

-- Turn off safe mode so you can delete data from the table without condition
-- Don't forget to restart after this query
SET GLOBAL sql_safe_updates=0;

-- delete data from the tables
delete from employees where name = 'chirag';












