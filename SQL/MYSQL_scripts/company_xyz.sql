create database xyz;
use xyz;

create table employee
(
	id int primary key,
    empname varchar(50),
    salary float
);

select * from employee;

insert into employee values(1,'adam',25000);
insert into employee values(2,'bob',30000);
insert into employee values(3,'casey',40000);

