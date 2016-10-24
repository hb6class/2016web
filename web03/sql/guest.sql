drop table guest;

create table guest(
	sabun number primary key,
	name varchar2(50),
	nalja date,
	pay number
);

insert into guest values (1111,'user1',sysdate,1000);
insert into guest values (2222,'user2',sysdate,2000);

select * from guest;

select count(*) as cnt from guest where sabun=1111 and name='user';