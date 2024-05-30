use haksa1;


select now() "오늘날짜", year(now()) "당해년도";

select birthday from student;

select substring("2000501", 1, 4);

select year(now()) - substring("2000501", 1, 4);  

select stu_no "학번", stu_name "이름", birthday "생년월일",
year(now()) = substring(birthday, 1, 4) "나이"
from student;


create view ages(학번, 이름, 생년월일, 나이) as
select stu_no "학번", stu_name"이름", birthday "생년월일",
year(now()) - substring(birthday, 1, 4) "나이"
from student;


desc ages;
select * from ages;
select * from ages where 나이 > 30;



create or replace view ages(학번, 이름, 생년월일, 나이) as
select stu_no "학번", stu_name"이름", birthday "생년월일",
year(now()) - substring(birthday, 1, 4) "나이"
from student
where year(now()) - substring(birthday, 1, 4) >= 30;

select * from ages30;





