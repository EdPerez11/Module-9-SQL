CREATE TABLE departments(
	dept_no VARCHAR(50) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(50)
);
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(50) NOT NULL,
	PRIMARY KEY(emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
CREATE TABLE dept_managers(
	dept_no VARCHAR(50) NOT NULL,
	emp_no INT NOT NULL PRIMARY KEY,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
CREATE TABLE titles(
    title_id VARCHAR(50) NOT NULL PRIMARY KEY,
    title VARCHAR
);
CREATE TABLE employees(
    emp_no INT NOT NULL,
    emp_title_id VARCHAR(50) NOT NULL,
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex VARCHAR(50),
    hire_date DATE,
    PRIMARY KEY(emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT,
	PRIMARY KEY(emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);