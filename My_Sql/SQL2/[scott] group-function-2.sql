# 그룹함수
# 그룹함수 결과 제한

# 부서별 급여 총액
select deptno, max(sal)
	from emp
	group by deptno;

# 부서별 급여 총액이 3000이상인 부서의 번호와 부서별 급여 총액
select deptno, max(sal)
	from emp
	group by deptno
	having max(sal) >= 3000;

# 부서별 급여 총액이 3000이상인 부서의 번호와 부서별 급여 총액
# 부서별로 내림차순 정렬
select deptno, max(sal)
	from emp
	group by deptno
	having max(sal) >= 3000
	order by deptno desc;

# 사원정보에서 직책(job)이 'MANAGER'를 제외하고 급여 총액이 5000 이상인 직책별 급여 총액
select job, count(*), sum(sal)
	from emp
	where job not like '%MANAGER%'
	group by job
	having sum(sal) >= 5000
	order by sum(sal);

# 부서별 평균 급여
select deptno, avg(sal) from emp group by deptno;

# 부서별 평균 급여 중 가장 급여가 많은 부서의 급여액은?
# 2916.666667
select max(x.avg_sal) 
	from (select avg(sal) as avg_sal 
		from emp 
		group by deptno) x;
	
# 부서별 평균 급여 중 가장 급여가 많은 부서의 급여액은?
# SQL Error [1111] [HY000]: Invalid use of group function
# select max(avg(sal)) from emp group by deptno;

# [문제]	
# 부서별 평균급여와 부서정보(부서이름)를 출력
select deptno, round(avg(sal)) from emp group by deptno;
	
select d.deptno, d.dname, x.avgsal
	from dept d, 
		(select deptno, round(avg(sal)) as avgsal from emp group by deptno) x
	where d.deptno = x.deptno;
	
select d.deptno, d.dname, x.avgsal
	from dept d 
		join (select deptno, round(avg(sal)) as avgsal 
			from emp group by deptno) x
		on(d.deptno = x.deptno);

# view view_dept_avgsal
create or replace view view_dept_avgsal as
select d.deptno, d.dname, x.avgsal
	from dept d 
		join (select deptno, round(avg(sal)) as avgsal 
			from emp group by deptno) x
		on(d.deptno = x.deptno);
	
desc view_dept_avgsal;	
select * from view_dept_avgsal;
select max(avgsal) from view_dept_avgsal;

select avgsal from view_dept_avgsal where deptno = 10 or deptno =20;
select avgsal from view_dept_avgsal where deptno in(10, 20);
select avgsal from view_dept_avgsal where deptno between 10 and 20;