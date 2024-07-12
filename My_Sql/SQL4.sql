# [예제 8-14] 특정 학생보다 먼저 태어난 학생의 이름과 생년월일을 나타내어라.

select stu_name, birthday from student;

select s.stu_name, s.birthday
	from student s, student st
	where st.stu_name = '홍길동'
	and s.birthday < st.birthday; -- 이전에 태어난 사람(나이가 많은 사람)