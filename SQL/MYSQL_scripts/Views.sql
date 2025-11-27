use college;
select * from student;

create view view1 as (select * from student);
select * from view1;


create view view2 as 
(select rollno,stuname,marks,grade from student);

select * from view2;

drop view view1;
drop view view2;
