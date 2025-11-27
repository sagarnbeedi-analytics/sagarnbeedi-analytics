use college;
select * from student;

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

select * from student 
where marks>
(select avg(marks) from student);

select * 
from student 
where rollno in (select rollno from student where rollno%2=0);
select max(marks) 
from (select * from student where city='delhi') as a;



