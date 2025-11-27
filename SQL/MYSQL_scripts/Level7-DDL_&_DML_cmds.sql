use sql_practice;
select * from employees;
select * from departments;
select * from sales;

-- 25 Add a new column bonus to employees

select * from employees;

alter table employees add column bonus float;

-- 26 Increase salary by 10% for all employees in Sales department

select * from employees;
set sql_safe_updates=0;
update employees set salary=salary+salary*0.1 where dept_id=5;

-- 27 Delete employees with salary < 35000

select * from employees;
delete from employees where salary<35000;

-- 28 Delete all rows from sales (but not the table)
truncate table sales;


























