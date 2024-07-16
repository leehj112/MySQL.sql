# [예제 9-31] 등록하지 않은 학생의 학번과 이름을 출력하라.

select stu_no, stu_name
	from student
	where not exists
		(select * from fee where stu_no = student.stu_no);
		
select stu_no, stu_name
	from student
	where stu_no not in (select distinct stu_no from fee);	