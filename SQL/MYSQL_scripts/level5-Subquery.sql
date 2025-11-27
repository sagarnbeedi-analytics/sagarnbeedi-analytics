use sql_practice;

select * from employees;
select * from departments;
select * from sales;

-- 19 Find employees earning more than company average salary

select * from employees
 where salary>(select avg(salary) from employees);
 
 -- 20 Get employees earning the second highest salary
 
select max(salary) as salary
from employees 
where salary!=(select max(salary) from employees);

-- 21 Find employees who have never sold anything

select * from employees
 where emp_id not in (select emp_id from sales);








