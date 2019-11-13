## Keys:
1. Emp_no in Employees is unique, that is, there is only one employee number per employee. Thus, emp_no is the primary key for Employees. 

    - Emp_no in Dept_Emp is a foreign key to the primary key emp_no in Employees— that is, the values of emp_no in Dept_Emp match the values of the primary key emp_no in Employees. 

    - Emp_no in Titles, Salaries, and Dept_Manager are all foreign keys to the primary key emp_no in Employees. 
2. Dept_no in Departments is unique, that is, there is only one department number  per department. Thus, dept_no is the primary key for Departments. 
    -  Dept_no in both Dept_Manager and Dept_Emp are foreign keys to the primary key dept_no in Departments, since they matches the values of dept_no in Departments. 

## Data Types:
### Employees Table:
    1. Emp_no is an INT since it is a integer type number with no decimals

    2. birth_date is a DATE since it is in YYYY-MM-DD format

    3. first_name is a VARCHAR since it is a string

    4. last_name is a VARCHAR since it is a string

    5. gender is a VARCHAR since it is a letter

    6. hire_date is a DATE since it is in YYYY-MM-DD format

### Salaries Table:
    1. Emp_no is an INT since it is a integer type number with no decimals

    2. salary is an int since it is in number format with no decimals

    3. from_date is a DATE since it is in YYYY-MM-DD format

    4. to_date is a DATE since it is in YYYY-MM-DD format

### Titles Table:
    1. Emp_no is an INT since it is a integer type number with no decimals

    2. title is a VARCHAR since it is a string
    3. from_date is a DATE since it is in YYYY-MM-DD format

    4. to_date is a DATE since it is in YYYY-MM-DD format

### Dept_Emp Table:
    1. Emp_no is an INT since it is a integer type number with no decimals

    2. dept_no is a VARCHAR since it consists of one letter and whole numbers

    3. from_date is a DATE since it is in YYYY-MM-DD format

    4. to_date is a DATE since it is in YYYY-MM-DD format

### Departments Table:
    1. dept_no is a VARCHAR since it consists of one letter and whole numbers

    2. dept_name is a VARCHAR since it is a string

### Dept_Manager Table:
    1. dept_no is a VARCHAR since it consists of one letter and whole numbers

    2. Emp_no is an INT since it is a integer type number with no decimals

    3. from_date is a DATE since it is in YYYY-MM-DD format

    4. to_date is a DATE since it is in YYYY-MM-DD format

### Setting Current Dates:
Since the tables dept_emp, dept_manager, and titles tables show to_date as year 9999 for employees currently working there, change the to_date to current_date for those employees. 
- For example:

    - update titles set to_date = CURRENT_DATE where extract(year from to_date) = 9999;