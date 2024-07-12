# 다중 테이블
# [예제 8-3] 각 학생의 학번과 이름, 수강년도, 학기, 수강과목코드, 교수코드를 나타내어라.

select * from attend;

# 조인을 하는 테이블에 동일한 이름의 컬럼이 있을 때
# 그 컬럼을 select에서 사용하면 오류 발생
# SQL Error [1052] [23000]: Column 'stu_no' in field list is ambiguous
# select stu_no, stu_name,
# 	att_year, att_term, sub_code, prof_code
#	from student, attend
#	where student.stu_no = attend.stu_no;

select student.stu_no, stu_name,
	att_year, att_term, sub_code, prof_code
	from student, attend
	where student.stu_no = attend.stu_no;