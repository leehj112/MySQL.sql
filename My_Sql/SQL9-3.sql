# [예제 9-28] 가장 나이가 많은 학생을 제외한 나머지 모든 학생의 학번, 이름, 생년월일을 출력하라.

select stu_no, stu_name, birthday from student order by birthday desc;

select stu_no, stu_name, birthday
	from student
	where birthday > any (select birthday from student);
	
select stu_no, stu_name, birthday
	from student
	where birthday > (select min(birthday) from student);