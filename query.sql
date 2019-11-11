select *
from employees;

select *
from salaries;

select employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary
from employees
left join salaries on 
employees.emp_no=salaries.emp_no;


select * from employees;
select first_name, last_name from employees where hire_date between '1986-01-01' and '1986-12-31';


select employees.first_name, 
employees.last_name,
departments.dept_name, 
dept_manager.from_date,
dept_manager.to_date, 
dept_manager.emp_no
from dept_manager inner join departments on (dept_manager.dept_no=departments.dept_no)
inner join employees on dept_manager.emp_no=employees.emp_no;

select employees.first_name,
employees.last_name,
employees.emp_no,
departments.dept_name
from employees inner join dept_emp on (employees.emp_no=dept_emp.emp_no)
inner join departments on (dept_emp.dept_no=departments.dept_no);

select * from employees
where first_name='Hercules' and last_name like 'B%';

select employees.first_name,
employees.last_name,
employees.emp_no,
departments.dept_name
from employees inner join dept_emp on (employees.emp_no=dept_emp.emp_no)
inner join departments on (dept_emp.dept_no=departments.dept_no)
where departments.dept_name='Sales' order by employees.emp_no;


select employees.first_name,
employees.last_name,
employees.emp_no,
departments.dept_name
from employees inner join dept_emp on (employees.emp_no=dept_emp.emp_no)
inner join departments on (dept_emp.dept_no=departments.dept_no)
where departments.dept_name 
in ('Sales', 'Development')
order by employees.emp_no;

select last_name, count (last_name)
from employees 
group by last_name 
order by count (last_name) desc; 