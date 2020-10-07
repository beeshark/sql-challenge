-- #List the following details of each employee: employee number, last name, first name, sex, and salary.
select Employees.emp_no, Employees.last_name, Employees.first_name, Employees.gender, Salaries.salary
from Employees
inner join Salaries on
Employees.emp_no = Salaries.emp_no;

-- #List first name, last name, and hire date for employees who were hired in 1986.
select * from Employees
where hire_date >= '1985-12-13'
and hire_date < '1987-01-01'
order by emp_no;

-- #List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.


-- #List the department of each employee with the following information: employee number, last name, first name, and department name.


-- #List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


-- #List all employees in the Sales department, including their employee number, last name, first name, and department name.


-- #List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- #In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
