use scott;

# 급여
select ename, sal from emp;

# 연봉
select ename, sal, sal * 12 "연봉" from emp;

# 수당
select ename, sal, comm from emp;

# 총연봉 : 급여 * 12 + 수당
# 수당이 없는 경우 총연봉이 계산되지 않음
select ename, sal, comm, sal * 12, sal * 12 + comm "총연봉" from emp;

# 수당이 NULL이면 0으로 처리
# ifnull(expr1, expr2)
select ename, sal, comm, sal * 12, sal * 12 + ifnull(comm,0) "총연봉" from emp;

# 건수
select count(*) from emp;    -- 14건
select count(comm) from emp; -- 4건(수당이 있는 사원수)

# 수당이 있는 사원 정보
# 수당이 0인 경우도 선택
select * from emp where comm is not null;

-- 수당이 등록되어 있으면서 0보다 큰 사원
select * from emp 
	where comm is not null
    and comm > 0;