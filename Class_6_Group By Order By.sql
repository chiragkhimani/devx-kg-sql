-- fetch unique recoreds from employees table
select distinct gender, country from employees;

-- Sort records by first name
select * from employees order by first_name desc;

select * from employees order by first_name, last_name;

select * from employees order by emp_id desc limit 2;
-- Fetch all employees who has gmail address
select * from employees where email like '%gmail.com';

-- Fetch all employees who born in june months
select * from employees where birth_date like '%-06-%';

-- Fetch all employees who has second char in first name is a
select * from employees where first_name like '__a%';

-- Fetch all employees who has 0 in their phone number
select * from employees where phone_number like '_0%';

-- Fetch all the employees who has first name has exactly four char
select * from employees where first_name like '____';



select country,  count(*) as 'total employee'  from employees group by country;

-- Fetch total budget of each building
select building ,sum(budget) from departments group by building order by sum(budget);

-- Find the total female and total male employee in the company 
select gender, count(*) from employees where gender = 'M' group by gender;

-- Fetch total budget of each building where total budget is more than 50000
select building, sum(budget) from departments group by building having sum(budget)>50000;














