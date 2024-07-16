# SUBJECT 테이블 데이터
INSERT INTO SUBJECT VALUES('4001', '데이터베이스 응용', 'Database Application', '2002');
INSERT INTO SUBJECT VALUES('4002', '웹사이트 구축', 'Web Site Construction', '2003');
INSERT INTO SUBJECT VALUES('4003', '소프트웨어공학', 'Software Engineering', '2004');
INSERT INTO SUBJECT VALUES('4004', '빅데이터 분석', 'Big Data Analysis', '2020');
INSERT INTO SUBJECT VALUES('4005', '빅데이터 시스템 구축', 'Big Data System Construction', '2022');

select * from subject;

# ATTEND 테이블 데이터
INSERT INTO ATTEND VALUES ('20241001','2024',1,1,4005,'4100',4, 99,'Y','1','2024-02-06');
INSERT INTO ATTEND VALUES ('20251001','2025',1,1,4004,'3100',4, 99,'Y','1','2025-03-02');

INSERT INTO STUDENT VALUES ('20251001', '박세리', 'Park Selee', 50, 1, 1, '주', '20021011','2','01066','101동 203호','031','567','5678','010-1234-1234');


select * from attend;