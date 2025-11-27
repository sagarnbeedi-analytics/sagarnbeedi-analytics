use college;
select * from student;
select "sagar n beedi";

select marks from student;
select max(marks) from student;
select min(marks) from student;
select avg(marks) from student;
select sum(marks) from student;
select count(rollno) from student;

select city, count(stuname) from student group by (city);


select city,avg(marks) as average_marks 
from student 
group by city 
order by city;



