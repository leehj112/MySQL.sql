# 그룹함수

# 사원의 급여총액, 평균급여, 최대급여, 최소급여
select sum(sal), avg(sal), max(sal), min(sal) from emp;

# 최근에 입사한 사원과 입사한지 가장 오래된 사원의 입사일
select max(hiredate), min(hiredate) from emp;

# 사원의 직책(job)의 갯수
select count(job) from emp;     -- 14건, 총 사원수

# 사원의 직책(job)의 종류의 갯수
select count(distinct job) from emp; -- 5건

# 사원의 직책의 종류
select distinct job from emp; -- 5건

# 사원의 직책별 건수 
select job, count(*) 
	from emp
	group by job;

# 사원의 부서별 평균 급여
select avg(sal) as "평균급여"
	from emp
	group by deptno;

select deptno as "부서코드", avg(sal) as "평균급여"
	from emp
	group by deptno;


# 부서별, 직책별 사원수
select deptno, job, count(*) as "사원수"
	from emp
	group by deptno, job
	order by 1, 2;

# 부서별, 직책별 평균급여
select deptno, job, avg(sal) as "평균급여"
	from emp
	group by deptno, job;

# 부서별, 직책별 사원수, 평균급여
select deptno, job, count(*) as "사원수", avg(sal) as "평균급여"
	from emp
	group by deptno, job
	order by deptno, job;