SELECT * FROM company.employees;

delete from employees where id = 2;

insert into employees (id, email) values (2, "emily@gmail.com"); 

-- update name to Emily for recoreds where id is 2, condition is very important here
update employees set name = 'Emily' where id = 2;

-- modify limit of email column to 60
alter table employees modify email varchar(60);

-- describe the table, print list of column, type and any constrain on any column
desc employees;

-- syntax to rename column 
-- ALTER TABLE table_name RENAME COLUMN old_name TO new_name 
alter table employees rename column name to first_name;

-- add column in the employees table department and phone number
-- ALTER TABLE table_name ADD/MODIFY/DROP column_name data_type;
alter table employees add department varchar(30);
alter table employees add phone_number varchar(40);

-- Delete the department column
alter table employees drop column department;

-- Can we rename table from employees to staff?
-- ALTER TABLE table_name RENAME TO new_table_name;
alter table employees rename to staff;
alter table staff rename to employees;

create table projects(
	project_id int primary key AUTO_INCREMENT,
    title varchar(40) not null,
    price int not null,
    publish_year date not null
);

insert into projects values (5, "Java Programming", 20, '2010-04-09');

insert into projects(title, price, publish_year) values
("Python Programming", 35, '2012-04-09');








