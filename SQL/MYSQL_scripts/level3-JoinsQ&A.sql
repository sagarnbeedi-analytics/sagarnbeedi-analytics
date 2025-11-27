use sql_practice;
select * from employees;
select * from departments;
select * from sales;

-- 13 show employee names with department names 

select first_name,last_name,dept_name
from employees as e
inner join departments as d
on e.dept_id=d.dept_id;

-- 14 show employees and their managers

select concat(e2.first_name,' ',e2.last_name) as employee_name, concat(e1.first_name,' ',e1.last_name) as manager_name 
from employees as e1
join employees as e2
on e1.emp_id=e2.manager_id;

-- 15 show each employee and total sales amount 

select e.emp_id,concat(e.first_name,' ',e.last_name) as employee_name,sum(sale_amount) as total_sales
from employees as e
left join sales as s
on e.emp_id=s.emp_id
group by e.emp_id;

-- 16 show departments that have no employee

select * from employees;
select * from departments;

select d.dept_id as department_id,d.dept_name as department_name
from departments as d
left join employees as e
on d.dept_id=e.dept_id
where e.dept_id is null;


