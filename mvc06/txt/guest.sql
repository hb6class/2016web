row 10
p1

--select * from guest;
--select rownum,sabun,name from guest where rownum between 1 and 10 order by sabun desc;

select * from (select rownum as rn,A.* from (select * from guest order by sabun desc)A) where rn between (p-1)*10+1 and ((p-1)*10+1)+9;
select * from (select rownum as rn,A.* from (select * from guest order by sabun desc)A) where rn between 1 and 10;
select * from (select rownum as rn,A.* from (select * from guest order by sabun desc)A) where rn between 11 and 20;
select * from (select rownum as rn,A.* from (select * from guest order by sabun desc)A) where rn between 21 and 30;
select * from (select rownum as rn,A.* from (select * from guest order by sabun desc)A) where rn between 31 and 40;
select * from (select rownum as rn,A.* from (select * from guest order by sabun desc)A) where rn between 41 and 50;
select * from (select rownum as rn,A.* from (select * from guest order by sabun desc)A) where rn between 51 and 60;
select * from (select rownum as rn,A.* from (select * from guest order by sabun desc)A) where rn between 61 and 70;
select * from (select rownum as rn,A.* from (select * from guest order by sabun desc)A) where rn between 71 and 80;
--select rownum,sabun,name from guest where rownum between 11 and 20 order by sabun desc;


select count(*) as tot from guest;








