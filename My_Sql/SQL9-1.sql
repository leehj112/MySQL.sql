# [예제 9-23] "20141001”인 학생이 가입한 동아리를 제외한 다른 동아리에 적어도 
# 한 번 가입을 한 학생의 학번과 이름을 출력하라

INSERT INTO CIRCLE VALUES (2,'빅데이터','20230529','홍길동','1');
INSERT INTO CIRCLE VALUES (3,'경영자','20241001','전형배','2');

select * from circle;

select stu_no, stu_name
	from student
	where stu_no in (
		select stu_no 
		from circle 
		where cir_name not in (
			select cir_name 
			from circle 
			where stu_no = '20141001')
	);