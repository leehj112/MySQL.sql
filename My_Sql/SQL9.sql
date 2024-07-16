# [예제 9-21] 부속질의어를 이용하여 등록을 한 각 학생의 학번, 이름을 출력하라.

# 등록금을 한 번이라도 지불한 학생 정보
select * from student;
select stu_no from fee order by 1;

select stu_no, stu_name 
	from student
	where stu_no in (select stu_no from fee);

select stu_no, stu_name 
	from student
	where stu_no in (select distinct stu_no from fee)

# 당해 연도의 등록금을 낸 학생 정보	
select * from fee;	
select year(now());	
select * from fee where fee_year = year(now());

# in의 서브쿼리의 결과는 반드시 유일한 하나의 컬럼이 지정되어야 한다.
select stu_no, stu_name 
	from student
	where stu_no in (select distinct stu_no from fee where fee_year = year(now()))

# 당해 연도의 등록금을 낸 학생을 제외한 나머지 학생(등록금을 지불하지 않은 학생 포함)
# not in
select stu_no, stu_name 
	from student
	where stu_no not in (select distinct stu_no from fee where fee_year = year(now()))


-- 서브쿼리 결과가 1건만 나와야 한다.
select stu_no, stu_name 
	from student
	where stu_no = (select distinct stu_no from fee where stu_no = '20241001');
	
select * from fee;
select stu_no from fee where stu_no = '20249001';

select stu_no, stu_name 
	from student
	where stu_no = (select distinct stu_no from fee where stu_no = '20249001');