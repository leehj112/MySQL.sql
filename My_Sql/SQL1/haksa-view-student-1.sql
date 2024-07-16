# [예제 4-9] 학적 테이블의 학번, 이름, 생년월일, 나이를 출력하라.

select now() "오늘날짜", year(now()) "당해년도";

select birthday from student;

select substring("20000501", 1, 4);  -- "2000"

select year(now()) - substring("20000501", 1, 4); -- 24

select stu_no "학번", stu_name "이름", birthday "생년월일", 
	year(now()) - substring(birthday, 1, 4) "나이"
	from student;

-- 뷰 생성 : ages
drop view ages;
create view ages(학번, 이름, 생년월일, 나이) as
	select stu_no "학번", stu_name "이름", birthday "생년월일", 
	year(now()) - substring(birthday, 1, 4) "나이"
	from student;

desc ages;

select * from ages;
select * from ages where 나이 > 30;

-- 뷰 생성 : ages30
-- 검색조건을 지정하여 뷰를 생성
create or replace view ages30(학번, 이름, 생년월일, 나이) as
	select stu_no "학번", stu_name "이름", birthday "생년월일", 
	year(now()) - substring(birthday, 1, 4) "나이"
	from student
	where year(now()) - substring(birthday, 1, 4) >= 30;

select * from ages30;