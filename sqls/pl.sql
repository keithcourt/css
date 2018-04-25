

declare
   salary number(7,2);
   avg_sal number(7,2):=1000.00;
   basesal  number(7,2);
   high_sal number(7,2):=avg_sal*3;
   low_sal number(7,2):=avg_sal*0.6;
begin
  if (salary > high_sal)then
    basesal:=high_sal;
  else if(salary < low_sal)then
    basesal:=low_sal;
  else
    basesal:=salary;
  end if;
  dbms_output.put_line(basesal);
end

select * from dept;

--forѭ���α�
declare 
   cursor c_dept is
      select deptno,dname,loc from dept;
begin
   for v_dept in c_dept loop
       dbms_output.put_line(v_dept.deptno||','||v_dept.dname||','||v_dept.loc);
   end loop;
end; 

  
--loop  ѭ��

declare 
   cursor c_dept is
      select deptno,dname,loc from dept;
   v_dept; 
begin
   for v_dept in c_dept loop
       dbms_output.put_line(v_dept.deptno||','||v_dept.dname||','||v_dept.loc);
   end loop;


CREATE OR REPLACE PROCEDURE emp_count_liuxw
as
v_number VARCHAR2(10);
BEGIN
  select count(*) into v_number from emp;
  dbms_output.put_line('��Ա������Ϊ:'||v_number);
END;


create or replace procedure change_salary_liuxw(p_empno in number default 7788,
p_raise number default 10)
as
v_ename varchar2(10);
v_sal number(5);
begin
  select ename,sal into v_ename,v_sal from emp
  where empno=p_empno;
  update emp set sal=sal+p_raise where empno=p_empno;
  dbms_output.put_line('��Ա'||v_ename||'�Ĺ��ʱ���Ϊ'||to_char(v_sal+p_raise));
  commit;
  exception 
    when others then 
      dbms_output.put_line('���ʹ���,�޸�ʧ��!');
    rollback;
end;

   





