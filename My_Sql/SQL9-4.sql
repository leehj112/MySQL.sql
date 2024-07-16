# [예제 9-30] 등록을 한 학생의 학번과 이름을 출력하라.
select stu_no, stu_name
	from student
	where stu_no in (select stu_no from fee);
	
select stu_no, stu_name
	from student
	where stu_no in (select distinct stu_no from fee);

# exists
select stu_no, stu_name
	from student
	where exists (
		select * from fee
		where stu_no = student.stu_no
	);

-- 조인을 하면 결합되는 데이터의 갯수만큼 결과가 출력
select * from student;
select * from fee;
select s.stu_no, s.stu_name, f.fee_year, f.fee_term 
	from student s, fee f
	where s.stu_no = f.stu_no;

INSERT INTO STUDENT VALUES ('20249001', '전우치', 'Jeon Woo-Chi', 60, 4, 4, '야', '19990909','1','','','040','999','9999','010-9999-9999');