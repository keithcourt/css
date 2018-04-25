select * from emp;
select last_day(hiredate) from emp;
select * from emp where
extract(day from hiredate) = extract(day from last_day(hiredate))-2; 

select * from emp
where months_between(sysdate,hiredate) > 12*12;

select initcap(ename) from emp;

select ename from emp
where length(ename)=5;

select ename from emp
where ename not in (select ename from emp where ename like '%R%');

select substr('Hello World',3,5) from dual;
select replace(ename,'A','a') from emp;

select ename,hiredate from emp
where (sysdate-hiredate) > 10*12;
select ename,hiredate from emp
order by hiredate asc;


select ename,job,sal from emp
order by job desc, sal asc;

select ename, extract(year from hiredate) year,extract(month from hiredate) mon from emp
order by mon,year asc;

select ename,round((sal/30)) from emp;

select * from emp
where extract(month from hiredate) = 2;

select ename, round((sysdate-hiredate),2) from emp;

select ename from emp
where ename like '%A%';

select ename,hiredate from emp
where months_between(sysdate,hiredate) > 10*12;

select substr(ename,1,3) from emp;

select * from emp where deptno = 10 and job = 'MANAGER'
union
select * from emp where deptno = 20 and job = 'MANAGER'


select * from emp where deptno = 10 and job = 'MANAGER'
union
select * from emp where deptno = 20 and job = 'MANAGER'
union 
select * from emp where job <>'MANAGER' AND job <> 'CLERK' and sal >= 2000


select ename,trunc((sal/30)) from emp;


select * from emp where deptno = 10 and job = 'MANAGER'
union
select * from emp where deptno = 20 and job = 'CLERK'


select * from emp
 where to_char(hiredate,'dd') = to_char(last_day(hiredate),'dd')-2; 
 
 
 
 
 select * from employees;
 select last_name,lpad(salary,15,'$') from employees;
 
 select last_name, coalesce(to_char(commission_pct),'�޽���')  from employees;
 
 select last_name, round(months_between(sysdate,hire_date));
 
 select job_id, decode(job_id,'AD_PRES', 'A' ,'ST_MAN', 'B','IT_PROG','C','SA_REP', 'D','ST_CLERK', 'E','0') "Job Grade" from employees;
 
 SELECT job_id, 
     CASE job_id when 'AD_PRES' THEN 'A' 
        when 'ST_MAN' THEN 'B'
         when 'IT_PROG' THEN 'C' 
            when 'SA_REP' THEN 'D' 
              WHEN 'ST_CLERK'THEN 'E' 
       else '0' end
      "Job Grade" from employees;
      
      
      
 select last_name, trunc(months_between(sysdate,hire_date)) from employees;
 
 s
 
 
 
 
 
 
