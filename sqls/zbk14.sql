select * from zb_bj
where aaa100  between 'A' AND 'Z'

update zb_bj
set aaa100 = 'AKE006'
where aaa100 like '%AKE006%'
select * from dm_bj;

select * from zb_bj
where aaa100 = 'AAF021'

update dm_bj
  set aaa100 = trim(aaa100)
  
  commit;
