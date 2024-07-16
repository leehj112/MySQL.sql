
# [예제 9-27] 가장 나이가 많은 학생의 학번, 이름, 생년월일을 출력하라.
# (단, 가장 나이가 많은 학생은 다른 학생의 생년월일보다 생년월일이 더 적거나 같은 생년월일을 가진 학생이다

select stu_no, stu_name, birthday
	from student
	where birthday <= all (select birthday from student);
	
select stu_no, stu_name, birthday
	from student
	where birthday <= (select min(birthday) from student);