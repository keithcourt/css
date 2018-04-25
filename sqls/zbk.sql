select * from BJ_DM t

select * from ad53a4

update  ad53a4 
set yae361 = '0' where yae041='developer'

commit;
select to_number(zbcd) zbcd from 
select CASE
　　WHEN INSTR(zbcd, ',', 1, 1) > 0
    then  substr(zbcd, 1, INSTR(zbcd, ',', 1, 1) - 1) 
      ELSE zbcd
　　END AS zbcd
from bj_zb
where zbcd >= 15

select aaa100 from bj_zb
where CASE
　　WHEN INSTR(zbcd, ',', 1, 1) > 0
    then  substr(zbcd, 1, INSTR(zbcd, ',', 1, 1) - 1) 
      ELSE zbcd
　　END AS zbcd

select 

select  to_number('15','99') from dual;
select to_number('2012','999999')
from bj_zb where aaa100='AAA010'

select * from bj_zb;

select * from bj_dm;

select * from COLUMNSICP3

   SELECT AAA100,
          AAA101
     FROM bj_zb
     
     
     
     
      SELECT t.aaa100,
          t.aaa101,
          t.zbcd
     FROM(SELECT aaa100,
          aaa101,
          CASE  WHEN INSTR(zbcd, ',', 1, 1) > 0
          THEN SUBSTR(zbcd, 1, INSTR(zbcd, ',', 1, 1) - 1) 
          ELSE zbcd END AS zbcd
     FROM bj_zb) t
     where zbcd >= 0
     
     
     select * from bj_zb where aaa100 between '' and 'B' ''
