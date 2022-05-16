-- Table schema

-- employees

CREATE TABLE employees(
emp_no INT,
emp_title_id INT,
	birthday DATE,
	first_name VARCHAR,
	last_name VARCHAR,	
	sex VARCHAR,
	hire_date INT,
PRIMARY KEY (emp_no)
);

-- -- departments
CREATE TABLE departments (
dept_no INT,
dept_name VARCHAR,
PRIMARY KEY (dept_no)
	);
-- -- titles

-- CREATE TABLE titles
( emp_no INT,
	title_id INT,
 title VARCHAR,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

-- -- Salaries
CREATE TABLE salaries(
	emp_no INT,
	salary INT,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);


-- -- dept employee
CREATE TABLE dept_manager
( dept_no INT,
 emp_no INT,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
 
);
 
 



-- -- Department Manager 

CREATE TABLE dept_emp(
emp_no INT,
dept_no INT,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);



