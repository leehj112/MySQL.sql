-- 학사관리
create database haksa default character set utf8 collate utf8_general_ci;
show databases;

-- 사용자 관리
use mysql;

-- 사용자 조회
select user, host from user;
select user();

-- 사용자 권한 조회
show grants for 'root'@'localhost';

-- 사용자 추가
-- id : sol@localhost
-- pw : sol
create user sol@localhost identified by 'sol';

-- 사용자 권한 부여
grant all privileges on haksa.* to sol@localhost;
show grants for 'sol'@'localhost';

-- 사용자 삭제
-- drop user sol@localhost;