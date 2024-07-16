-- 데이터베이스 선택
use hellodb;

-- 검색
SELECT * FROM hello;

create table hello2 (
	hid integer,
	name varchar(40),
	age integer);

-- hello의 테이블에서 hello2로 모든 데이터를 카피
insert into hello2 (select * from hello);

select * from hello2;    

-- hello의 테이블의 구조와 데이터를 새로운 테이블 hello3를 만들고
-- 데이터도 복사
create table hello3 as select * from hello;
select * from hello3;

-- 구조만 복사
create table hello4 as select * from hello limit 0;
select * from hello4;

drop table hello2;
drop table hello3;
drop table hello4;

show tables;