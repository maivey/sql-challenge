--1. List the following details of each employee:
-- employee number, last name, first name, gender, and salary.
-- from employees: employee number (emp_no), last name (last_name), first name (first_name), gender
-- from salaries: employee number (emp_no), salary
select s.emp_no, e.last_name, e.first_name, e.gender, s.salary
into emp_sal_test
from employees as e
inner join salaries as s
on s.emp_no = e.emp_no;
select * from emp_sal_test;
-- Check counts:
select count(*) from employees --300024
select count(*) from salaries -- 300024
select count(*) from emp_sal_test; --300024

-- 2. List employees who were hired in 1986
select emp_no, last_name, first_name, hire_date 
into table_1986
from employees 
where extract(year from hire_date) = 1986;
select count(*) from table_1986; --36150

-- 3. List the manager of each department with the following information:
--department number, department name, the manager's employee number, 
--last name, first name, and start and end employment dates.
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name,dept_manager.from_date, dept_manager.to_date
from dept_manager inner join departments on dept_manager.dept_no= departments.dept_no
inner join employees on dept_manager.emp_no = employees.emp_no;

-- 4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name,d.dept_name
from employees as e
inner join dept_emp as de
on e.emp_no = de.emp_no
inner join departments as d
on de.dept_no = d.dept_no;



-- 5. List all employees whose first name is "Hercules" 
--and last names begin with "B.
select e.last_name, e.first_name
from employees as e
where (e.first_name = 'Hercules') and (lower(e.last_name) like 'b%');

-- 6.List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de
on e.emp_no = de.emp_no
inner join departments as d
on de.dept_no = d.dept_no
where lower(d.dept_name) = 'sales';

-- 7. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de
on e.emp_no = de.emp_no
inner join departments as d
on de.dept_no = d.dept_no
where (lower(d.dept_name) = 'sales') or (lower(d.dept_name) = 'development');

-- 8. In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
select last_name,count(last_name) as Frequency 
from employees 
group by last_name
order by frequency desc;