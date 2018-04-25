SELECT nvl(min(a.aie175),0) aie175
        FROM id54 a
       WHERE a.aae100 = '1'
         AND EXISTS(SELECT 1 
                      FROM id24 c,
                           id34 d 
                     WHERE c.aaz430 = d.aaz430
                       AND a.aaz434 = d.aaz434  
                       AND c.aae100 = '1' 
     AND c.aie136 < a.aie175)
         AND a.aaz434 = '123'
         AND a.aaa027 = '123'
