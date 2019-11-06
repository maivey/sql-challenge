
create table titles (
	emp_no INT,
	title VARCHAR,
	from_date DATE,
	to_date DATE,
    foreign key (emp_no) references employees (emp_no)
);


create table employees (
	emp_no INT PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date DATE
);


create table dept_emp (
	emp_no INT,
	dept_no VARCHAR,
	from_date DATE,
	to_date DATE,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
);


create table salaries (
	emp_no INT,
	salary INT,
	from_date DATE,
	to_date DATE,
    foreign key (emp_no) references employees (emp_no)
);

create table dept_manager (
	dept_no VARCHAR,
	emp_no INT,
	from_date DATE,
	to_date DATE,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
);

create table departments (
	dept_no VARCHAR primary key,
	dept_name VARCHAR
);
