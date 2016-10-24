
select * from tab;

create table guestuser(
	id varchar2(50),
	pw varchar2(50),
	name varchar2(50)
);

insert into guestuser (id,pw,name) 
values ('aa','1111','aaaa');

select * from guestuser where name ='';


--切积己利 包府 橇肺弊伐
create table student3(
	idx number primary key,
	name varchar2(30) not null,
	kor number(3),
	eng number(3),
	math number(3)
);
insert into STUDENT3 values(1111,'user1',80,90,70);
insert into STUDENT3 values(2222,'user2',60,70,80);
select * from STUDENT3;









