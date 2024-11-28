-- Table: employees (1)
CREATE TABLE employees (
    emp_no INT PRIMARY KEY not null,
    emp_title_id varchar not null,
    birth_date DATE not null,
    first_name VARCHAR not null,
    last_name VARCHAR not null,
    sex CHAR not null,
    hire_date DATE not null
);

-- Table: salaries (2)
CREATE TABLE salaries (
    emp_no INT ,
    salary int not null,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Table: titles (3)
CREATE TABLE titles (
    title_id varchar PRIMARY KEY not null,
    title varchar not null
);

-- Table: departments (4)
CREATE TABLE departments (
    dept_no varchar PRIMARY KEY,
    dept_name varchar not null 
);

-- Table: dept_emp (5)
CREATE TABLE dept_emp (
    emp_no INT,
    dept_no varchar,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Table: dept_manager(6)
CREATE TABLE dept_manager (
    dept_no VARCHAR,
    emp_no INT ,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
