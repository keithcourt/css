SELECT * from pools_baseinfo;
SELECT * from pools_param;
SELECT * from POOLS_SERVER;
SELECT * from pools_serverstate;
SELECT * from pools_taskstate;
SELECT * from pools_yshdtask;
SELECT * from pools_yfhdtask
SELECT * from pools_tasklock;

DELETE FROM  pools_server
WHERE pools_id='yshdService';
DELETE FROM  pools_param
WHERE pools_id='yshdService';
DELETE FROM pools_baseinfo
WHERE pools_id='yshdService';
UPDATE pools_taskstate SET pools_id = 'yshdThreadExcuteService' WHERE batchid='2016042774'


SELECT a.pools_id,   
           a.pools_name,  
		       a.databaseid, 
		       b.server_ip,  
		       b.server_port,
		       b.pools_taskwhere,
		       b.pools_control, 
		       b.pools_taskscaninterval,   
		       b.pools_waittime,            
		       decode(a.c_yxbz,'1',b.c_yxbz,'0') as c_yxbz    
		  FROM pools_baseinfo a,
		       pools_server b
		 WHERE a.pools_id=b.pools_id

SELECT * from aa10a1 WHERE aaa100='C_YXBZ'
