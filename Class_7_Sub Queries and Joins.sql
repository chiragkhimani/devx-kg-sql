SELECT * FROM mycompany.employees;

-- Fetch employee name who is taking the greatest salary
select * from employees where salary = (select max(salary) from employees);

-- Fetch name of the manager of that person who is taking the greatest salary
select * from employees where emp_id = (
	select manager_id from employees where salary = (
		select max(salary) from employees
	)
); 

-- Fetch the manager name of Azat
select * from employees where emp_id = (
	select manager_id from employees where first_name = 'Azat'
);

-- Find all the employees that are working on the Ebay Automation project
select * from employees where project_id = (
	select project_id from projects where name = 'ebay automation'
);

-- Find the project name where we don't have any employee working on 
select * from projects where project_id NOT IN(
	select distinct project_id from employees WHERE project_id 
);

-- cross join -- 
select first_name, name from employees cross join projects where 
employees.project_id = projects.project_id;

-- inner join --
select first_name, name from employees inner join projects ON
employees.project_id = projects.project_id;

-- Fetch all the employees name and their designation
select first_name, description from employees inner join roles ON employees.designation_id = roles.role_id;






