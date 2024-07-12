
# 다중 테이블
# [예제 8-4] 각 학생의 학번과 이름, 수강신청구분 나타내어라.
# 테이블명에 별칭(alias)을 사용, from 절에서 사용 

select s.stu_no, stu_name, att_div
	from student s, attend a
	where s.stu_no = a.stu_no;