use sql_practice;
select * from employees;
select * from departments;
select * from sales;

-- 17 show department where avg salary is above 60k

select e.dept_id,avg(e.salary) as average_salary
from employees as e
group by e.dept_id
having average_salary>60000;

-- 18 show employees who have total sales over 50k

select e.emp_id,e.first_name,e.last_name 
from employees as e
inner join sales as s 
on s.emp_id=e.emp_id
group by s.emp_id,e.first_name,e.last_name 
having sum(sale_amount)>50000;
