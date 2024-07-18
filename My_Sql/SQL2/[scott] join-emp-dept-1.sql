# 조인 

# 사원의 부서정보 출력 
# 사원정보, 부서정보
select e.empno, e.ename, e.deptno, d.dname, d.loc
	from emp e, dept d
	where e.deptno = d.deptno;
	
select e.empno, e.ename, e.deptno, d.dname, d.loc
	from emp e join dept d	on(e.deptno = d.deptno);

# 부서정보
select * from dept; 

# 사원정보
select * from emp;

# 사원정보 중에서 사원이름이 'A'로 시작하는 사원
select * from emp where ename like 'A%';


# 사원정보 중에서 사원이름이 'A'로 시작하는 사원과 해당부서 정보
select e.empno, e.ename, e.deptno, d.dname, d.loc
	from emp e, dept d
	where e.deptno = d.deptno
	and e.ename like 'A%';

# 사원정보 중에서 사원이름이 'J'로 시작하는 사원과 해당부서 정보
select e.empno, e.ename, e.deptno, d.dname, d.loc
	from emp e join dept d	
	on(e.deptno = d.deptno and e.ename like 'J%');

# 사원정보 중에서 사원이름에 'S'가 포함된 사원
select * from emp where ename like '%S%';

select cast(empno as char), emp.* from emp where ename like '%S%';

select cast(e.empno as char), e.* from emp e where ename like '%S%';
select convert(e.empno, char), e.* from emp e where ename like '%S%';

# 사원정보 중에서 사원이름이 'S'로 끝나는 사원
select * from emp where ename like '%S';

# 사원정보 중에서 사원이름의 두 번째 글자가 'A'인 사원
select * from emp where ename like '_A%';

# 사원정보 중에서 사원이름의 세 번째 글자가 'R'인 사원
select * from emp where ename like '__R%';

# 사원정보 중에서 사원이름의 세 번째 글자가 'R'인 사원을 제외한 사원정보
select * from emp where ename not like '__R%';

	