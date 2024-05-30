
use haksa1;

# 조인: 학생정보와 학과정보
# 학생, 학과
select s.stu_no, s.stu_name, s.dept_code, d.dept_name, d.dept_ename 
	from student s, department d
	where s.dept_code = d.dept_code;
    


# 뷰: 
create or replace view stud_dept as
select s.stu_no, s.stu_name, s.dept_code, d.dept_name, d.dept_ename 
	from student s, department d
	where s.dept_code = d.dept_code;


# 뷰 조회
select * from stud_dept vw;

select * from stud_dept vw where stu_no = '20141001';
select * from stud_dept vw where dept_code = 40;
select * from stud_dept vw where dept_code = 50;
select * from stud_dept vw where dept_code = 50;
