use college;
select * from student;
create table department
(
	dept_id int primary key,
    dept_name varchar(20)
);
insert into department values 
(101,'science'),
(102,'english'),
(103,'hindi');
select * from department;
create table teacher
(
	t_id int primary key,
    t_name varchar(50),
    d_id int,
    foreign key (d_id) references department(dept_id)
    on update cascade 
    on delete cascade
);
insert into teacher values 
(101,'adam',101),
(102,'bob',103),
(103,'cassey',102),
(104,'donald',102);
select * from teacher;
delete from department where dept_id=103;

update department set dept_id=111 where dept_name='english';








