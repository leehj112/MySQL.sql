# [예제 7 2] 등록 테이블("fee")에서 장학금을 1,000,000원 이상 지급 받은 학생 중에서
# 2회 이상 지급받은 학생의 학번과 지급받은 횟수를 학번 내림차순으로 출력하라.

select stu_no, count(*) "장학금수령 횟수"
	from fee
	where jang_total > 1000000 -- 1백만원 이상
	group by stu_no            -- 학번기준 그룹핑
	having count(*) >= 2       -- 2회 이상: 그룹핑에 대한 조건
	order by stu_no desc;

-- 그룹: '학번'을 기준으로 카운트
select stu_no, count(*)
	from fee
	group by stu_no; 

-- 장학금을 1,000,000원 초과 받는 학생
select stu_no, jang_total
	from fee
	where jang_total > 1000000 -- 백만원 초과