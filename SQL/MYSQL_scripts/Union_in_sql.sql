use employee;
select * from emp_details;
select * from salary;

select empname from emp_details
union
select empname from emp_details;

select empname from emp_details
union all
select empname from emp_details;