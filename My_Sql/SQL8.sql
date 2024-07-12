
# [예제 9-20] 등록을 한 각 학생의 학번, 이름을 출력하라. (in 연산자를 이용 )

select * from student;

select stu_no, stu_name 
	from student
	where stu_no = '20141001' 
    or stu_no = '20241001';

select stu_no, stu_name
       from student 
       where stu_no in ('20141001', '20241001') 

       