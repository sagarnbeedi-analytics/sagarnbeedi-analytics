use sql_practice;

select * from employees;

select emp_id,first_name,last_name,dept_id ,
rank() over (partition by dept_id order by salary desc) as ranks
from employees;

select emp_id,sum(sale_amount) over (partition by emp_id order by sale_date) as total_sales 
from sales;

-- running total of sales by date 

select * from sales;
select emp_id, sale_date,
sum(sale_amount) over (partition by emp_id order by sale_date) as running_total
from sales;

-- comparing sales of last month with current month 

select * from sales;

































