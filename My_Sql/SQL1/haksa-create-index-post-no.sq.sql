-- 우편번호
use haksa;

desc post;

-- 인덱스 생성
create index post_sk_post_no on post(post_no);
-- drop index post_sk_post_no on post;

select count(*) from post; -- 1557442
select count(*) from post where post_no = '16269'; -- 360 
select * from post where post_no = '16269';