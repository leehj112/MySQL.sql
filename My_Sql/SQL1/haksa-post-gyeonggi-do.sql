use haksa;
show tables;
show variables like 'secure_file_priv';

-- 파일을 읽어서 테이블에 로딩
load data infile 'C:/MySQL/8.4/dbf/Uploads/zipcode/gyeonggi-do.txt' into table post fields terminated by '|';
load data infile 'C:/MySQL/8.4/dbf/Uploads/zipcode/seoul.txt' into table post fields terminated by '|';

select count(*) from post; -- 1026153 + 531290 = 1557442
select * from post where road_name like '정조로%' and building_bon = 940; -- 16269, 연세IT미래교육원
select * from post where post_no = '16269';

select * from post where road_name like '봉은사로617%';

select post_no, management_no from post;