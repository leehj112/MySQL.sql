use haksa1;

# join 활용 
select distinct s.stu_no, s.stu_name, s.dept_code, d.dept_name, d.dept_ename, s.post_no, p.road_name  
	from student s, department d, post p
	where s.dept_code = d.dept_code
	and s.post_no = p.post_no;
	
# 시스템의 날짜
select now();

# [예제 4-1] STUDENT 테이블로부터 성별이 남자인 각 학생의 학번, 이름, 영문이름, 학년, 성별을 영문이름 순서로 출력하라
select stu_no, stu_name, stu_ename, grade, gender
	from student
	where gender = 1 or gender = 3 or gender = 5
	order by stu_ename;
	
# [예제 4-1A] 위 문제에서 여자만 출력하라.
select stu_no, stu_name, stu_ename, grade, gender
	from student
	where gender in (2,4,6)
	order by stu_ename;
	
# [예제 4-2] 학년이 3 학년이고 성별이 여자인 각 학생의 학번과 이름을 출력하는데, 출력 순서는 학번 내림차순이다 .
select stu_no, stu_name, stu_ename, grade, gender
	from student
	where gender in (2,4,6) # 성별:여자(2,4,6)
	and grade = 3           # 학년: 3학년
	order by stu_no desc;   # 내림차순