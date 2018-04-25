DROP TABLE dept;
CREATE TABLE dept
       (deptno NUMBER(2) CONSTRAINT PK_DEPT PRIMARY KEY,
    dname VARCHAR2(14) ,
    loc VARCHAR2(13) ) ;
DROP TABLE emp;
CREATE TABLE emp
       (empno NUMBER(4) CONSTRAINT PK_EMP PRIMARY KEY,
    ename VARCHAR2(10),
    job VARCHAR2(15),
    mgr NUMBER(4),
    hiredate DATE,
    sal NUMBER(7,2),
    comm NUMBER(7,2),
    deptno NUMBER(2) CONSTRAINT FK_DEPTNO REFERENCES DEPT);
INSERT INTO dept VALUES
    (10,'ACCOUNTING','NEW YORK');
INSERT INTO dept VALUES 
   (20,'RESEARCH','DALLAS');
INSERT INTO dept VALUES
    (30,'SALES','CHICAGO');
INSERT INTO dept VALUES
    (40,'OPERATIONS','BOSTON');
 SELECT * FROM dept;




select * from emp;

INSERT INTO emp VALUES(7369,'SMITH','CLERK',7902,to_date('17-12-1980','dd-mm-yyyy'),800,NULL,20);
INSERT INTO emp VALUES(7499,'ALLEN','SALESMAN',7698,to_date('20-2-1981','dd-mm-yyyy'),1600,300,30);
INSERT INTO emp VALUES(7521,'WARD','SALESMAN',7698,to_date('22-2-1981','dd-mm-yyyy'),1250,500,30);
INSERT INTO emp VALUES(7566,'JONES','MANAGER',7839,to_date('2-4-1981','dd-mm-yyyy'),2975,NULL,20);
INSERT INTO emp VALUES(7654,'MARTIN','SALESMAN',7698,to_date('28-9-1981','dd-mm-yyyy'),1250,1400,30);
INSERT INTO emp VALUES(7698,'BLAKE','MANAGER',7839,to_date('1-5-1981','dd-mm-yyyy'),2850,NULL,30);
INSERT INTO emp VALUES(7782,'CLARK','MANAGER',7839,to_date('9-6-1981','dd-mm-yyyy'),2450,NULL,10);
INSERT INTO emp VALUES(7788,'SCOTT','ANALYST',7566,to_date('19-4-87','dd-mm-yyyy'),3000,NULL,20);
INSERT INTO emp VALUES(7839,'KING','PRESIDENT',NULL,to_date('17-11-1981','dd-mm-yyyy'),5000,NULL,10);
INSERT INTO emp VALUES(7844,'TURNER','SALESMAN',7698,to_date('8-9-1981','dd-mm-yyyy'),1500,0,30);
INSERT INTO emp VALUES(7876,'ADAMS','CLERK',7788,to_date('23-5-87','dd-mm-yyyy'),1100,NULL,20);
INSERT INTO emp VALUES(7900,'JAMES','CLERK',7698,to_date('3-12-1981','dd-mm-yyyy'),950,NULL,30);
INSERT INTO emp VALUES(7902,'FORD','ANALYST',7566,to_date('3-12-1981','dd-mm-yyyy'),3000,NULL,20);
INSERT INTO emp VALUES(7934,'MILLER','CLERK',7782,to_date('23-1-1982','dd-mm-yyyy'),1300,NULL,10);

select * from salgrade;



查询雇员姓名,工作,工资及工资等级 

select e.ename,e.job,e.sal,s.grade from emp e, salgrade s
where e.sal between losal and hisal;

select e.ename,e.job,e.sal,decode(s.grade,1,'A',2,'B',3,'C',4,'D',5,'E','A') grade from emp e, salgrade s
where e.sal between losal and hisal;

select dname, c from dept,
(select deptno,count(*) c from emp
group by deptno) t
where dept.deptno = t.deptno;

select deptno, trunc(avg(sal),2) avg_sal from emp
group by deptno
having avg(sal) > 2000;

select * from emp;
select ename,job,sal,dname from emp,dept
where emp.deptno=dept.deptno
and sal in (select max(sal) from emp group by deptno )
order by sal desc;

select ename, (sal+nvl(comm,0))*12 year_sal from emp
order by year_sal desc;

select e1.ename, e1.job,e2.ename
from emp e1,emp e2
where e1.mgr = e2.empno(+);

select e1.ename,e1.job,e2.ename,d.dname
from emp e1,emp e2,dept d
where e1.mgr=e2.empno(+) and e1.deptno = d.deptno;


select e.ename,e.job,e.sal,d.dname from emp e,dept d, (select deptno,max(sal) max_sal from emp group by deptno )x
where e.deptno=d.deptno and x.deptno=e.deptno and e.sal = x.max_sal
order by e.sal desc;

