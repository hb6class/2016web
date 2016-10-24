
select * from guest;
select * from guest where name like '%%';

select * from (select * from guest where name like '%%') where ;


select * from user_sequences;

create sequence guest_seq start with 5555 increment by 1111;
