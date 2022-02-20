select e.emp_no, e.last_name, e.first_name, s.salary 
from "Employees" e
inner join "Salaries" s
on e.emp_no=s.emp_no;

select first_name, last_name, hire_date from "Employees"
where hire_date like '1986%';

select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from "Departments" d
inner join "Dept_Manager" dm
on d.dept_no=dm.dept_no
inner join "Employees" e
on dm.emp_no=e.emp_no;

select de.emp_no, e.last_name, e.first_name, d.dept_name
from "Dept_Emp" de
inner join "Employees" e
on de.emp_no=e.emp_no
inner join "Departments" d
on de.dept_no=d.dept_no;

select last_name, first_name, sex from "Employees" 
where first_name = 'Hercules' and last_name like 'B%';

select de.emp_no, e.last_name, e.first_name, d.dept_name
from "Dept_Emp" de
inner join "Employees" e
on de.emp_no=e.emp_no
inner join "Departments" d
on de.dept_no=d.dept_no
where dept_name='Sales';

select de.emp_no, e.last_name, e.first_name, d.dept_name
from "Dept_Emp" de
inner join "Employees" e
on de.emp_no=e.emp_no
inner join "Departments" d
on de.dept_no=d.dept_no
where dept_name='Sales' or dept_name='Development';

select last_name, count(*)
from "Employees"
group by last_name
order by count(last_name) desc;