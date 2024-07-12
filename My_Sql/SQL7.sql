# [예제 8-7] 학적테이블의 학번과 이름, 수강테이블의 수강년도, 학기, 수강교과목코드
# 교과목테이블의 교과목명을 나타내어라.

select s.stu_no, stu_name, att_year, att_term, a.sub_code, sub_name
	from student s, attend a, subject su
	where s.stu_no = a.stu_no
	and a.sub_code = su.sub_code;
	
# [예제 8-7A] 학적테이블의 학번과 이름, 
# 수강테이블의 수강년도, 학기, 수강교과목코드
# 교과목테이블의 교과목명
# 교수테이블의 교수명을 나타내어라.
select * from professor;
select s.stu_no, stu_name, att_year, att_term, a.sub_code, sub_name, a.prof_code
	from student s, attend a, subject su 
	where s.stu_no = a.stu_no
	and a.sub_code = su.sub_code

-- professor에 attend.prof_code에 해당하는 교수 코드가 없으면 
-- 검색되지 않는다.	
select s.stu_no, stu_name, att_year, att_term, a.sub_code, sub_name, prof_name
	from student s, attend a, subject su, professor p 
	where s.stu_no = a.stu_no
	and a.sub_code = su.sub_code
	and a.prof_code = p.prof_code;

-- left outer join
-- 수강과 교수 테이블을 조인
-- 수강 테이블에 있는 교수코드가 교수 테이블에 존재하지 않아도 출력
-- 존재하지 않는 교수 이름은 NULL
select a.sub_code, a.prof_code, p.prof_name
	from attend a
	left outer join professor p 
	on a.prof_code = p.prof_code;

-- 학생을 기준으로 교과목과 교수가 없는 경우 모두 출력
select s.stu_no, s.stu_name, a.att_year, a.att_term, a.sub_code, su.sub_name, p.prof_name
	from student s left outer join attend a on s.stu_no = a.stu_no
	left outer join subject su on a.sub_code = su.sub_code
	left outer join professor p on a.prof_code = p.prof_code;
	
-- 학생과 교과목을 기준으로 교수가 없는 경우 출력
-- join, outer join 결합
select s.stu_no, s.stu_name, a.att_year, a.att_term, a.sub_code, su.sub_name, p.prof_name
	from student s join attend a on s.stu_no = a.stu_no
	left join subject su on a.sub_code = su.sub_code
	left outer join professor p on a.prof_code = p.prof_code;

-- 수강신청과 교과목 조인
select a.att_year, a.att_term, a.sub_code, su.sub_name
	from attend a, subject su
	where a.sub_code = su.sub_code;

-- 수강신청과 교과목 조인
select a.att_year, a.att_term, a.sub_code, su.sub_name
	from attend a join subject su on a.sub_code = su.sub_code;