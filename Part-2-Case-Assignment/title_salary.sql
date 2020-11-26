create table title_salary as
select 
     t.title,
	 s.salary
from titles t
join employees e
on t.title_id = e.emp_title_id
join salaries s
using (emp_no)
order by title

select * from title_salary