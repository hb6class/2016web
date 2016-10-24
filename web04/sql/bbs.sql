drop table bbs01;
create table bbs01 (
	rnum number primary key,
	id varchar2(50) not null,
	title varchar2(50) default '제목없음',
	content varchar2(2048),
	nalja date default sysdate,
	cnt number default 0
);
drop sequence bbs01_seq;
create sequence bbs01_seq;

insert into bbs01 (rnum,id,title,content,nalja) values (bbs01_seq.nextval,'aa','sub01','aaaaa',sysdate);
insert into bbs01 (rnum,id,content,nalja) values (bbs01_seq.nextval,'bb','bbbbb',sysdate);
insert into bbs01 (rnum,id,title,content) values (bbs01_seq.nextval,'cc','sub03','ccccc');

select * from bbs01;

update bbs01 set cnt=cnt+1 where rnum=1;





