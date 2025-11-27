use sql_practice;
select * from employees;
select * from departments;
select * from sales;

-- 1 display full employees list 

select * from employees;

-- 2 display first name lastname and salary 

select first_name,last_name,salary from employees;

-- 3 show employee wjho work in department 5

select * from employees where dept_id=5;

-- 4 show employees who earns salary more than 50000

select * from employees where salary>50000;

-- 5 sort employees by salary descending order 

select * from employees order by salary desc;

-- 6 count the number of employees 

select count(emp_id) as total_employees from employees;

