CREATE TABLE departments(
	dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(50) NOT NULL
	);
SELECT * FROM departments

--titles table
CREATE TABLE titles(
	title_id VARCHAR(10) PRIMARY KEY NOT NULL,
	title VARCHAR(50) NOT NULL
);
SELECT * FROM  titles

-- employees table
CREATE TABLE employees(
	emp_no INT PRIMARY KEY NOT NULL, 
	emp_title_id VARCHAR(10) NOT NULL, 
	birth_date DATE NOT NULL, 
	first_name VARCHAR (40) NOT NULL, 
	last_name VARCHAR(40) NOT NULL, 
	sex VARCHAR(1) NOT NULL, 
	hire_date DATE NOT NULL ,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
SELECT * FROM employees

CREATE TABLE dept_emp(
    emp_no INT NOT NULL,
    dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_emp

CREATE TABLE dept_manager(
        dept_no VARCHAR NOT NULL,
	    emp_no INT  NOT NULL,
       FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	   FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	   PRIMARY KEY (dept_no, emp_no )
);
SELECT * FROM dept_manager

--salaries table 
CREATE TABLE salaries(
        emp_no INT PRIMARY KEY NOT NULL,
        salary INT NOT NULL,
	    FOREIGN KEY (emp_no)  REFERENCES employees (emp_no)
);

SELECT * FROM  salaries



ALTER DATABASE "Data_Engineering" SET datestyle TO "ISO, MDY";