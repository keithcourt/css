 SELECT to_char(nvl(min(a.aie175),0)) aie175
        FROM id54 a
       WHERE a.aae100 = '1'
         AND EXISTS(SELECT 1 
                      FROM id24 c,
                           id34 d 
                     WHERE c.aaz430 = d.aaz430
                       AND a.aaz434 = d.aaz434  
                       AND c.aae100 = '1' 
     AND c.aie136 < a.aie175)    
    
    select * from id33
    delete from id26; commit;
    
    
    insert into id35 values(1,1,1,1,1,'1',1,1,1,1,1,1,
    to_date('2016-01-01','yyyy-mm-dd'),'1',20160205,100,12,1,1,1,1,1,1,1,1,1,
    'ginger',9999,'liu',to_date('2016-01-01','yyyy-mm-dd'),'1',1212,11);
    
   select PKG_COMM.Fun_Getsequence('','AAZ411')   from dual;   
