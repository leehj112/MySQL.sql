-- 테이블 생성, 수정, 삭제

-- 테이블 삭제
drop table example;

-- 테이블 생성
create table example (
	name varchar(10),
	phone varchar(15),
	id varchar(10),
	city varchar(10)
);

show tables;

-- 데이터 추가
insert into example values('홍길동', '010-1234-5678', '1010', '한양');
insert into example values('전우치', '010-9090-9090', '9090', '울릉도');
insert into example values('강감찬', '010-8080-8080', '8080', '개성');
select * from example;

-- 테이블 구조 변경
-- 컬럼추가: email
-- 추가된 컬럼의 값은 NULL(빈값)
alter table example add email varchar(20);

-- 컬럼삭제: id
alter table example drop id;

desc example;
select * from example;

-- 컬럼이름 변경: phone -> hp
alter table example change phone hp varchar(15);

-- 전체 컬럼에 값을 지정하지 않으면 컬럼명을 명시해야 한다.
-- SQL Error [1136] [21S01]: Column count doesn't match value count at row 1
-- insert into example values('이성계', '한양');

insert into example (name, city) values('이성계', '한양');
commit;

-- 검색 컬럼을 지정
select name, city from example;

-- 검색조건 : where
select name, city from example where hp is null;     -- 전화번호가 없는 사람
select name, city from example where hp is not null; -- 전화번호가 있는 사