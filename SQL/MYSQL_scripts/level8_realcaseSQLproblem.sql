use sql_practice;

-- 29 Management wants to find the top performer in each department based on sales and salary combined score
-- Create a query that:
-- Uses window function
-- Joins employees, departments, and sales
-- Ranks employees
-- Returns only the top performer per department


-- elect * from employees;

-- select * from departments;

-- select * from sales;



select e.emp_id,e.first_name,e.last_name,
d.dept_id,d.dept_name,
rank() over (partition by d.dept_id order by e.emp_id) as ranks
from employees as e
left join departments as d 
on e.dept_id=d.dept_id
left join sales as s
on e.emp_id=s.emp_id
group by d.dept_id,d.dept_name,e.emp_id,e.first_name,e.last_name;