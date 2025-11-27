create database sql_practice;
use sql_practice;
show databases;
create table employees
(
	emp_id int primary key,
    first_name varchar(50),
    last_name varchar(50),
    dept_id int,
    salary decimal(10,2),
    hire_date date,
    manager_id int
);
create table departments
(
	dept_id int primary key,
    dept_name varchar(50)
);
create table sales
(
	sale_id int primary key,
    emp_id int,
    sale_amount decimal(10,2),
    sale_date date
);
insert into departments values 
(1,'HR'),
(2,'Finance'),
(3,'IT'),
(4,'Marketing'),
(5,'Sales');
select * from departments;


insert into employees values 
(101,'Amit','Sharma',3,80000,'2021-02-21',null),
(102,'Neha','Rao',3,65000,'2022-05-12',101),
(103,'Rahul','Varma',4,55000,'2023-01-10',101),
(104,'Priya','Mehta',5,45000,'2024-03-15',103),
(105,'Karan','Singh',5,30000,'2024-04-01',103);

select * from employees;

insert into sales values 
(1,104,25000,'2024-01-12'),
(2,104,30000,'2024-02-18'),
(3,105,12000,'2024-02-21'),
(4,105,18000,'2024-03-01'),
(5,104,27000,'2024-03-17');

select * from sales;

drop table employees;
