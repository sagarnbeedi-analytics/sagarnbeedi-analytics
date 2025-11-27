show databases;
use xyz;
show tables;
create table temp1
(
	id int ,
    primary key(id)
    );
    
insert into temp1 values(1001);
insert into temp1 values(1002);
select * from temp1;

create table temp2
(
	temp2_id int,
    foreign key (temp2_id) references temp1(id)
    );
    
select * from temp2;
select * from emp;

create table city 
(
	CID int primary key,
    city varchar(10),
    age int,
    constraint age_check check(age>=18 and city='delhi')
    );







