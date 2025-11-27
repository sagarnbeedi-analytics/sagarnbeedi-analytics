use sql_practice;

select * from sales;

-- 22 Rank employees based on salary

select first_name,salary,
rank() over(order by salary desc) as ranks,
row_number() over (order by salary) as row_numb,
dense_rank () over (order by salary) as dense_ranks 
from employees;

-- 23 Show cumulative total sales per employee

select emp_id,
sum(sale_amount) over (partition by emp_id order by sale_date)
 as cum_sales 
 from sales;
 
 -- 24 Show top 2 highest-earning employees per department

with rankemployees as (
select first_name,last_name,dept_id,row_number() over (partition by dept_id order by salary desc) as rn
from employees )
select * from rankemployees  re
inner join departments d
on re.dept_id=d.dept_id
where rn<=2;

 
 
 
