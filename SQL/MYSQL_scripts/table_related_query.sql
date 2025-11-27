use college;
select * from student;
update student set grade='O' where grade='A';
set sql_safe_updates=0;
update student set marks =82 where stuname ='emanual';
update student set grade='B' where marks between 80 and 90;
update student set marks=marks+1;
delete from student where stuname='farah';
alter table student add column age int;
alter table student drop column age;
rename table student to students;
select * from student;
alter table students rename to student;
alter table student change column grade grades char(1);
alter table student modify column grades char(2);

alter table student rename column grades to grade;
select * from student;
alter table student add column ages int not null default 19;
alter table student modify column age varchar(2);
alter table student drop column ages;
update student set age=19 where age=90;
alter table student drop column age;
alter table student rename to stu;
select * from student;
alter table stu rename to student;

truncate table student;

insert into student values
(101,'anil',78,'C','pune'),
(102,'bhumika',93,'A','mumbai'),
(103,'chetan',85,'B','mumbai'),
(104,'dhruv',92,'A','delhi'),
(105,'emanual',12,'F','delhi'),
(106,'farah',82,'B','delhi');






