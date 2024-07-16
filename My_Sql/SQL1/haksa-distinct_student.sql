# 중복되지 않는 유일한 값의 조합만 선택

select * from student;

select grade from student;

select distinct grade from student;

select juya, class, grade from student order by 1,2,3;

select distinct juya, class from student order by 1,2;
select distinct juya, class, grade from student order by 1,2,3;

-- 등록금
select stu_no from fee order by 1;
select distinct stu_no from fee order by 1;