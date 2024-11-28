--select all fields we need to get the information 

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

WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'; --the whole eyar range 

--question 3 
SELECT 
    dm.dept_no, 
    d.dept_name, 
    dm.emp_no, 
    e.last_name, 
    e.first_name
FROM 
    dept_manager dm
JOIN 
    departments d ON dm.dept_no = d.dept_no
JOIN 
    employees e ON dm.emp_no = e.emp_no;

--question 4 
SELECT 
    de.dept_no, 
    e.emp_no, 
    e.last_name, 
    e.first_name, 
    d.dept_name
FROM 
    dept_emp de
JOIN 
    employees e ON de.emp_no = e.emp_no
JOIN 
    departments d ON de.dept_no = d.dept_no;
	
--question 5
SELECT 
    first_name, 
    last_name, 
    sex
FROM 
    employees
WHERE 
    first_name = 'Hercules' 
    AND last_name LIKE 'B%';

--question 6 
SELECT 
    e.emp_no, 
    e.last_name, 
    e.first_name
FROM 
    dept_emp de
JOIN 
    employees e ON de.emp_no = e.emp_no
JOIN 
    departments d ON de.dept_no = d.dept_no
WHERE 
    d.dept_name = 'Sales';

--question 7
SELECT 
    e.emp_no, 
    e.last_name, 
    e.first_name, 
    d.dept_name
FROM 
    dept_emp de
JOIN 
    employees e ON de.emp_no = e.emp_no
JOIN 
    departments d ON de.dept_no = d.dept_no
WHERE 
    d.dept_name IN ('Sales', 'Development');

--question 8 
SELECT 
    last_name, 
    COUNT(*) AS numoflastname
FROM 
    employees
GROUP BY 
    last_name
ORDER BY 
    numoflastname DESC;

	



