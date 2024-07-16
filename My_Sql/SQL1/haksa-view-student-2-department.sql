# 조인: 학생정보와 학과정보
select s.stu_no, s.stu_name, s.dept_code, d.dept_name, d.dept_ename
	from student s, department d
	where s.dept_code = d.dept_code;

# 뷰 : stud_dept_vw
create or replace view stud_dept_vw as
	select s.stu_no, s.stu_name, s.dept_code, d.dept_name, d.dept_ename
		from student s, department d
		where s.dept_code = d.dept_code;
	

# 뷰 조회
select * from stud_dept_vw;

select * from stud_dept_vw where stu_no = '20141001'; -- 학번으로 조회
select * from stud_dept_vw where dept_code = 20;      -- 학과코드로 조회
select * from stud_dept_vw where dept_code = 40;      -- 학과코드로 조회
select * from stud_dept_vw where dept_code = 50;      -- 학과코드로 조회

