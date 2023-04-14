SELECT * FROM mycompany.employees;

-- Fetch the first name of the employees and their membership name

select first_name, name from employees inner join employee_membership ON
employees.emp_id = employee_membership.emp_id inner join membership ON
employee_membership.membership_id = membership.membership_id;

select first_name, name from employees left join employee_membership ON
employees.emp_id = employee_membership.emp_id left join membership ON
employee_membership.membership_id = membership.membership_id;

-- Fetch all the employee first name(regardless if they are working on project or not) 
-- and their respective project name with the project budget

select first_name, name, budget from employees left join projects ON
employees.project_id = projects.project_id;

select first_name, name, budget from employees right join projects ON
employees.project_id = projects.project_id order by first_name;

select first_name, name, budget from employees join projects ON
employees.project_id = projects.project_id order by first_name;

select e.first_name employee_name, m.first_name as manager 
from employees as e inner join employees as m ON e.manager_id = m.emp_id;

-- 3. Fetch all projects name and their department name 
-- where the project budget is greater than the department budget

select name, dept_name from projects p inner join departments d ON
p.department_id = d.dept_id where p.budget > d.budget;

select first_name from employees where country = 'USA'
union
select first_name from employees where birth_date > '2000-01-01';

