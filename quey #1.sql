--select all fields we need to get the information 
-- will give emp number , last name , first name , sex and salary
select 
e.emp_no,  
e.last_name, 
e.first_name,
e.sex, 
s.salary
from employees e 
join 
salaries s
on 
e.emp_no= s.emp_no;

-- will give employee first name, last name, and hire date for employees hired in 1986
SELECT 
first_name,
last_name, 
hire_date

FROM employees

WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


