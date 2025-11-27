use college;
show tables;
drop table student;
create table student
(
	rollno int primary key,
    stuname varchar(50),
    marks int not null,
    grade varchar(1),
    city varchar(20)
    );
insert into student values
(101,'anil',78,'C','pune'),
(102,'bhumika',93,'A','mumbai'),
(103,'chetan',85,'B','mumbai'),
(104,'dhruv',92,'A','delhi'),
(105,'emanual',12,'F','delhi'),
(106,'farah',82,'B','delhi');

select * from student;
select stuname,marks from student;
select city from student;
select distinct city from student;
select * from student where marks>80;
select * from student where city='mumbai';
select * from student where marks>80 and city='mumbai';
select * from student where marks+10>100;
select * from student where marks>80 or city='mumbai';
select * from student where marks between 80 and 90;
select * from student where city in ('delhi','mumbai');
select * 
from student 
where marks>80
limit 3;
select * from student order by city;
select * from student order by city desc;
select * from student order by marks desc limit 3;
use college;
select * from student;
select grade,count(rollno) from student group by grade;
select city, count(rollno)
from student 
group by city
having max(marks)>90
order by city;
select city 
from student 
where grade='A'
GROUP BY city
having max(marks)>90
order by city
limit 1;
set sql_safe_updates=0;
update student set marks=12 where stuname='emanual';
delete from student where marks<33;



