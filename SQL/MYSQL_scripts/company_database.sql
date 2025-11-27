create database company;

use company;

create table payments
(
	customer_id int primary key,
    customer varchar(50),
    mode varchar(30),
    city varchar(30)
    );

select * from payments;

insert into payments values
(101,'olivia berrat','Netbanking','portland'),
(102,'ethan sindare','credit card','miami'),
(103,'maya hemandez','credit card','seatle'),
(104,'liam donovan','Netbanking','denvar'),
(105,'sophia nguyen','credit card','new orleans'),
(106,'celeb foster','debit card','minneapolis'),
(107,'ava patel','debit card','pheonix'),
(108,'lucas carter','Netbanking','boston'),
(109,'isabella martinez','Netbanking','nashville'),
(110,'Jactson brooks','credit card','boston');

select mode,count(customer_id) as mode_count from payments group by mode order by mode_count;



    
    
    
    
    