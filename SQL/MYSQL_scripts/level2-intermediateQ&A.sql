use sql_practice;
select * from employees;
select * from departments;
select * from sales;

-- 7 finding total sales done by employee 104 

select sum(sale_amount) as total_sales from sales where emp_id=104;

-- 8 get total sales done by each employee 

select emp_id, sum(sale_amount) as total_dales from sales group by emp_id;

-- 9 get the highest salary in the company 

select max(salary) as max_salary_given from employees;

-- 10 get avaerage salary per department 

select dept_id,avg(salary) as average_salary_per_dept 
from employees group by dept_id;

-- 11 list employees hired after 1st jan 2023

select *
from employees
where hire_date>'2023-01-01';

-- 12 list employees with null manager id 

select * from employees where manager_id is null;

