    SELECT ''''||a.aae008||''''
                   ||','''||b.aae044||''''
                   AS outstring  
              FROM af07 a,ae10 b
             WHERE a.aaz065 = b.aaz001
               AND NVL(b.aaa017,'1') = '1'


select * from ad21
select * from ac43_170
select * from ac01
select * from aa05_170
select * from ac41
select * from ac02
SELECT * from af02
SELECT * from af14
select * from ac41aa
SELECT * from ae03
SELECT * from ayaf507 varchar2(6) c41;

SELECT * from af14select * from ac01

 SELECT a.*,b.aaz070,b.aac030, b.aae041, b.yac121, c.aae044
           FROM ac01 a,ac02 b,af02 c 
          WHERE a.aac001 = b.aac001
            AND b.aaz070 = c.aaz070
            AND b.aae140 = '170' 
            AND b.aac008 = '1'
            AND nvl(b.yac084,'0') != '1'
            AND b.aae042 IS NULL
            AND b.aaz070='1669'
            
SELECT * from aa10a1 WHERE aaa100 = 'YAC558'

SELECT * from ac01
SELECT * from ac41
SELECT * from tmp_ac41
SELECT * from ae60a1
SELECT * from sibpm_db WHERE aaa121 LIKE 'A0410%'
INSERT INTO sibpm_db VALUES('A04101','baseService_rp','flowServiceProxy_sca_rp');
INSERT INTO sibpm_db VALUES('A04102','baseService_rp','flowServiceProxy_sca_rp');
INSERT INTO sibpm_db VALUES('A04103','baseService_rp','flowServiceProxy_sca_rp');
INSERT INTO sibpm_db VALUES('A04104','baseService_rp','flowServiceProxy_sca_rp');

INSERT INTO sibpm_db VALUES('A06101','baseService_rp','flowServiceProxy_sca_rp');
INSERT INTO sibpm_db VALUES('A06102','baseService_rp','flowServiceProxy_sca_rp');
INSERT INTO sibpm_db VALUES('A06103','baseService_rp','flowServiceProxy_sca_rp');
INSERT INTO sibpm_db VALUES('A06104','baseService_rp','flowServiceProxy_sca_rp');

SELECT * from sibpm_aaa121_service
INSERT INTO sibpm_aaa121_service VALUES('A04101','居民个人缴费申报','approveCService','0');
INSERT INTO sibpm_aaa121_service VALUES('A04102','居民个人中断缴费申报','interruptedApproveCService','0');
INSERT INTO sibpm_aaa121_service VALUES('A04103','居民一次性缴费申报','oneApproveCService','0');
INSERT INTO sibpm_aaa121_service VALUES('A04104','居民村集体补助','collectiveSubsidiesCService','0');

INSERT INTO sibpm_aaa121_service VALUES('A06101','居民银行文件报盘','bankOfferCService','0');
INSERT INTO sibpm_aaa121_service VALUES('A06102','居民银行回盘','bankReturnCService','0');
INSERT INTO sibpm_aaa121_service VALUES('A06103','居民村集体补助到账处理','collectiveAccountCService','0');
INSERT INTO sibpm_aaa121_service VALUES('A06104','居民到账信息查询','queryAccountCCService','0');

SELECT * from ad21
SELECT * from ac02
SELECT * from ac01
SELECT * from af02;
SELECT * from tmp_ac94
SELECT * from ac45a1
DELETE FROM ad21 WHERE aaz010='11029000131'

UPDATE ac01 SET aac147='421081199402080612'
SELECT * from ac43
 SELECT a.aae008 id,
                   b.aae044 name
              FROM af07 a,ae10 b
             WHERE a.aaz065 = b.aaz001
               AND b.aaa017 = '1'

SELECT * from ac43_170;

SELECT * FROM ae22
SELECT * from af07
SELECT * from ae10
SELECT f.aae008,
                   g.aae044,
                   c.aae002,
                   count(1) as rc,
                   sum(a.yad001) as jehj
             FROM ad21 a,ac45a1 b,ac43 c,ae03 d,ae04 e,af07 f,ae10 g
	        WHERE a.aaz288 = b.aaz288
	          AND b.yae567 = c.yae567
	          AND b.aaa093 = '2'
	          AND a.yad009 = '1'
	          AND a.aae100 = '1'
	          AND c.aae100 = '1'
	          AND a.yad005 = '2'
	          AND a.yad006 = '1' 
	          AND c.aaa115 IN ('10','103','40')

SELECT * from ac02 WHERE aac001 = '15161827'
SELECT * from ac01 WHERE  aac147 = 'number1'
SELECT * from ae03
UPDATE ae03 
SET aae010='123456' WHERE aae009 = '警察4'
