--testuser table create

create table testuser(
	id varchar2(50),
	pw varchar2(50)
);

select * from testuser;
select * from testuser where id='root' and pw='1234';

insert into testuser values ('user1','1234');