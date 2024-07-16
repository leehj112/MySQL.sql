use haksa;

# DEPARTMENT 입력
INSERT INTO DEPARTMENT VALUES (10,'간호학과','Dept. of Nersing','1991-02-01');
INSERT INTO DEPARTMENT VALUES (20,'경영학과','Dept. of Management','1991-02-10');
INSERT INTO DEPARTMENT VALUES (30,'수학학과','Dept. of Mathematics','1993-02-20');
INSERT INTO DEPARTMENT VALUES (40,'컴퓨터정보학과','Dept. of Computer Information','1997-02-01');
INSERT INTO DEPARTMENT VALUES (50,'IT융합학과','Dept. of Information Technology Fusion','2019-02-10');
INSERT INTO DEPARTMENT VALUES (60,'회계학과','Dept. of Accounting','2019-02-01');

# STUDENT
INSERT INTO STUDENT VALUES ('20141001', '연세IT미래교육원', 'Ysedu.or.kr', 50, 3, 1, '주', '19930303','2','16269','702호','031','256','2662','010-0000-0000');
INSERT INTO STUDENT VALUES ('20241001', '전형배', 'Park Do-Sang', 40, 4, 1, '주', '19960116','1','01066','101동 203호','02','744','6126','010-0611-9884');
INSERT INTO STUDENT VALUES ('20230529', '홍길동', 'Hond Gil-Dong', 20, 3, 4, '야', '19930314','1','01066','101동 203호','02','744','6126','010-0007-0007');

# 조인: join
select s.stu_no, s.stu_name, s.dept_code, d.dept_name, d.dept_ename 
	from student s, department d
	where s.dept_code = d.dept_code;

# PROFESSOR 입력
INSERT INTO PROFESSOR VALUES ('1000','윤성혁','Yun Seong-Hyeog','2020-01-10');
INSERT INTO PROFESSOR VALUES ('2000','오승필','Oh Seung-Pil','2021-02-12');
INSERT INTO PROFESSOR VALUES ('2100','성우진','Seong Woo-Jin','2022-02-15');
INSERT INTO PROFESSOR VALUES ('3000','박범철','Park Beom-Cheol','2023-03-02');
INSERT INTO PROFESSOR VALUES ('3100','김세정','Kim Se-Jeong','2020-01-10');
INSERT INTO PROFESSOR VALUES ('4100','홍현하','Hong Hyeon-Ha','2023-04-07');

select * from professor;

# ATTEND 입력
INSERT INTO ATTEND VALUES ('20141001','2014',1,3,4001,'4002',3, 99,'Y','1','2014-03-05');

# FEE 입력
INSERT INTO FEE VALUES ('20141001','2014',1,500000,3000000,3500000,01,500000,3000000,'Y','2014-02-18');

# SCORE 입력
INSERT INTO SCORE VALUES ('20141001','2014',1,18,18,4.5,580,'Y','2014-08-10');

# CIRCLE 입력
INSERT INTO CIRCLE VALUES (1,'컴맹탈출','20141001','박도상','0');