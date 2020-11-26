/* 1) List these details of each employee:
employee number, last name, first name, sex, salary */
select 
     e.emp_no,
	 e.last_name,
	 e.first_name,
	 e.sex,
	 s.salary
from employees e
join salaries s
using (emp_no)
order by salary desc;
-- -----------------------------------------------------

/* 2) List first name, last name, hire date for emploees who were hired in 1986 */
select 
     first_name,
	 last_name,
	 hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';
-- -----------------------------------------------------

/* 3) List the manager of each department with these info:
- department number, department name, the manager's employee number, last name, first name */
select 
    dm.dept_no,
	d.dept_name,
	t.title,
	e.emp_no,
    e.last_name,
	e.first_name
from departments d
    left join dept_manager dm
	   using (dept_no)
    join employees e
       using (emp_no)
    left join titles t
       on e.emp_title_id = t.title_id;
-- -----------------------------------------------------

/* 4) List the department of each employee with these info:
- employee number, last name, first name, department name */
select 
   e.emp_no,
   e.last_name,
   e.first_name,
   d.dept_name
from employees e
   left join dept_emp de
      using (emp_no)
   join departments d
      using (dept_no);
-- -----------------------------------------------------

/* 5) List first name, last name, and sex for employees
      whose first name is 'Hercules' and last name begin with 'B'. */  
select 
     first_name,
	 last_name,
	 sex
from employees
where first_name = 'Hercules' and last_name like 'B%';
-- -----------------------------------------------------

/* 6) List all employees in the Sales department, 
      including: employee number, last name, first name, and department name. */  
select 
   e.emp_no,
   e.last_name,
   e.first_name,
   d.dept_name
from employees e
   left join dept_emp de
      using (emp_no)
   join departments d
      using (dept_no)
where dept_name = 'Sales';
-- -----------------------------------------------------

/* 7) List all employees in the Sales and Development departments, 
      including: employee number, last name, first name, and department name. */  
select 
   e.emp_no,
   e.last_name,
   e.first_name,
   d.dept_name
from employees e
   left join dept_emp de
      using (emp_no)
   join departments d
      using (dept_no)
where dept_name in ('Sales', 'Development')
order by dept_name;
-- -----------------------------------------------------

/* 8) In descending order, list:
      the frequency count of employee last names, i.e., how many employees share each last name. */  
select
    last_name,
	count(last_name) as total
from employees
group by last_name
order by last_name desc;




