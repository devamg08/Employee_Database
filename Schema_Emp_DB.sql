--Create tables for the given data on csv

CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(45)
);
SELECT * FROM departments;

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	from_date DATE,
	to_date DATE
);
SELECT * FROM dept_emp;

CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	from_date DATE,
	to_date DATE
);
SELECT * FROM dept_manager;

CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	gender VARCHAR(1),
	hire_date DATE
);
SELECT * FROM employees;

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT,
	from_date DATE,
	to_date DATE
);
SELECT * FROM salaries;

CREATE TABLE titles (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	title VARCHAR(50),
	from_date DATE,
	to_date DATE
);
SELECT * FROM titles;