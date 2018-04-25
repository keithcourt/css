      SELECT a.aaz434 AS aaz434,                  
             a.aie080 AS aie080,                 
             a.aie077 AS aie077,                  
             a.aie079 AS aie079,                
             b.aie138 AS aie138,                  
             b.aie133 AS aie133,                  
             b.aie137 AS aie137,                 
             b.aae100 AS aae100,                 
             b.aie136 AS aie136,                 
             b.aie134 AS aie134,                  
             b.aie076 AS aie076,                 
             NVL(g.aie170,0) aie170,             
             b.aaz430 AS aaz430                 
        FROM id33 a,                             
             id24 b,                              
             id34 c,                             
             (SELECT aaz430,sum(aie170) aie170 
                FROM id40 d                      
               WHERE d.aae100 = '1'
                 AND d.aaz430 != '11'
                 AND d.aaz430 != '99'
               GROUP BY d.aaz430) g
       WHERE a.aaz434 = c.aaz434
         AND c.aaz430 = b.aaz430
         AND b.aae100 = '1'
         AND b.aaz430 != '11'
         AND b.aaz430 != '99'
         AND b.aaz430 = g.aaz430(+)
         AND a.aaz434 = #aaz434#
