select '编号:'||empno||',姓名:'||ename||',工作:'||job from emp;
select * from emp;
select * from emp where to_char(hiredate,'YYYY') ='2013';
select * from emp where regexp_like(sal,'^[1]\d*$');
select empno,ename,job,sal+(nvl(comm,0))*12  from emp;
select * from emp;
select * tables;

select * from emp where comm is not null;

alter user hr account unlock;

select * from tabs;
desc employees from dual;
select * from employees;

select last_name,salary from employees;
select last_name,salary from employees 
where salary < 5000 or salary > 12000;

select last_name,hire_date from employees
where hire_date like '%94';

select last_name, job_id from employees where manager_id is null;
select last_name,salary,commission_pct from employees
where commission_pct is not null and commission_pct > 0
order by commission_pct desc;

select last_name,salary from employees
where salary > 1000;

select last_name from employees
where last_name like '__a%';
select last_name from employees
where last_name like '%a%' or last_name like '%e%';


SA_REP”或“ST_CLERK”，且月薪不是$2500、$3500、$7000的员工信息 

select * from employees 
where job_id in('SA_REP','ST_CLERK') 
and salary not in (2500,3500,7000);

select last_name,salary,commission_pct from employees
where commission_pct = 0.2

select last_name,salary,commission_pct*salary from employees
where commission_pct is not null 
order by commission_pct desc;

select * from emp;
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
    
    
