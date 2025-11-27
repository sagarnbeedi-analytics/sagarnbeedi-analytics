create database employee;
use employee;
create table emp_details
(
	empid int primary key,
    empname varchar(50)
    );
select * from emp_details;

rename table emp_datails to emp_details;

create table salary
(
	emp_id int primary key,
    salary int
    );
select * from salary;

insert into emp_details values
(1,'sagar n beedi'),
(2,'akshay kumar'),
(3,'malik ingalgi'),
(4,'reshma thomas'),
(5,'iranna bettad');

insert into salary values
(1,10000),
(2,20000),
(3,30000),
(4,40000),
(5,50000);

select * from emp_details as e
inner join salary as s
on e.empid=s.emp_id;

insert into salary values
(6,80000),
(7,70000),
(8,80000);

select * from emp_details as e
right join salary as s
on e.empid = s.emp_id;

select * from salary as s
left join emp_details as e
on s.emp_id=e.empid;

insert into emp_details values
(6,'rohan kapoor'),
(7,'prema desai');

select * from salary as s
left join emp_details as e
on s.emp_id=e.empid
union 
select * from salary as s
right join emp_details as e
on e.empid=s.emp_id;


insert into emp_details values
(9,'abhay shrivastav'),
(11,'anushka sharma');

select * from emp_details as e
left join salary as s
on e.empid=s.emp_id
where s.emp_id is null;


select * from emp_details as e 
right join salary as s
on e.empid=s.emp_id
where e.empid is null;

select a.empname as manager_name , b.empname as employee_name 
from emp_details as a
join emp_details as b
on a.empid=b.manager_id;

select * from emp_details;

alter table emp_details add column manager_id int;

set sql_safe_updates=0;
update emp_details set manager_id=1 where empid+3;
update emp_details set manager_id=11 where empid=7;
update emp_details set manager_id=3 where empid=9;
update emp_details set manager_id=4 where empid=6;




