-- fetch all employees from USA
select * from employees where country = 'usa';
select first_name, last_name from employees where country = 'usa';

-- fetch all employees who has salary greater than 5000
select * from employees where salary > 5000;

-- fetch all female employees from the company database
select * from employees where gender = 'f';

-- fetch all the employees who born in or after 2000
select * from employees where birth_date >= '2000-01-01';

-- fetch all the employees who joined in or before 2015
select * from employees where joining_date <= '2015-12-31';

-- fetch all the employee who are not from USA
select * from employees where country != 'USA';

-- fetch all first name of employee and display it as a column name
select first_name as name from employees;

-- fetch all the employee who are from USA or India
select * from employees where country = 'usa' or country='india';
select * from employees where country = 'usa' || country='india';

-- fetch all the female employee who are from USA
select * from employees where country = 'usa' and gender='f';
select * from employees where country = 'usa' &&  gender='f';

-- fetch all the employee who are from USA or India or Canada or UK
select * from employees where country IN ('usa', 'india','canada','uk');

-- fetch all the employee who are born in or after 1990 and in or before 2000
select * from employee where birth_date >= '1990-01-01' and birth_date <= '2000-12-31';
select * from employee where birth_date between '1990-01-01' and '2000-12-31';











