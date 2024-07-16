show tables;
desc student;

# DEPARTMENT 입력
INSERT INTO DEPARTMENT VALUES (10,'간호학과','Dept. of Nersing','1991-02-01');
INSERT INTO DEPARTMENT VALUES (20,'경영학과','Dept. of Management','1991-02-10');
INSERT INTO DEPARTMENT VALUES (40,'컴퓨터정보학과','Dept. of Computer Information','1997-02-01');

# STUDENT 학생 테이블 입력
INSERT INTO STUDENT VALUES ('20141001', '박도상', 'Park Do-Sang', 40, 4, 1, '주', '19960116','1','01066','101동 203호','02','744','6126','010-0611-9884');
INSERT INTO STUDENT VALUES ('20230529', '홍길동', 'Hond Gil-Dong', 20, 3, 4, '야', '19930314','1','01066','101동 203호','02','744','6126','010-0007-0007');
INSERT INTO STUDENT VALUES ('20240206', '사유리', '', 10, 1, 1, '주', '20040506','2','01066','101동 203호', null, null, null, null);
INSERT INTO STUDENT VALUES ('20230626', '고은아', '', 20, 3, 4, '야', '19930314','4','13964','102동 1004호', null, null, null, null);

select * from department;
select * from student;

# 조인: join
select s.stu_no, s.stu_name, s.dept_code, d.dept_name, d.dept_ename 
	from student s, department d
	where s.dept_code = d.dept_code;
	