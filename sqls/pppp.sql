
SELECT * from pools_baseinfo

SELECT * from ae60;
SELECT  a.* from ae60a1 a;
SELECT * from ae60a2;
DELETE FROM ae60a2
INSERT INTO ae60a1 SELECT * FROM ae60a2
SELECT * from ae60a1 WHERE yae602= '20160421R10000045'

UPDATE ae60a1 SET yae595 = '2'
WHERE yae602= '20160421R10000045'
AND yae202 IN ('999920160420R498','999920160420R499');

INSERT INTO ae60a2(yae602,yae202,yae594,yae595,aad052,aad053,aad054,aad055,aad057,aad056,
aad058,aad059,aad060,aad061,aad062,aad063,aad064,aad065,aad066,aad067,aad068,aad069,aad070,
aad071,aad072,aad073,aad074,aad075,aad076,aad077,aad078,aad079,yae238,yae400,yae401,yad006,
yae605,prseno)
           SELECT yae602,yae202,yae594,yae595,aad052,aad053,aad054,aad055,aad057,aad056,
aad058,aad059,aad060,aad061,aad062,aad063,aad064,aad065,aad066,aad067,aad068,aad069,aad070,
aad071,aad072,aad073,aad074,aad075,aad076,aad077,aad078,aad079,yae238,yae400,yae401,yad006,
yae605,prseno
             FROM ae60a1
            WHERE yae602 IN('20160422R10000052');
SELECT a.yae602,
       a.sbfspc,
       a.yab003,
       a.aae011,
       a.aae036,
       b.je,
       NVL((c.cgrs+d.sbrs),0)||'(�ɹ�:'||nvl(c.cgrs,0)||'ʧ��:'||nvl(d.sbrs,0)||')' rc    
   FROM ae60 a,
        (SELECT yae602, SUM(nvl(aad065,0)) je FROM ae60a1 GROUP BY yae602) b,
        (SELECT yae602,COUNT(1) AS cgrs FROM ae60a1 WHERE yae595 = '1' GROUP BY yae602) c,
        (SELECT yae602,COUNT(1) AS sbrs FROM ae60a1 WHERE yae595 = '0' GROUP BY yae602) d
    WHERE a.yae602=b.yae602
    AND a.yae602=c.yae602(+)
    AND a.yae602=d.yae602(+)
   AND  a.aae016='1'

SELECT b.yae602, SUM(nvl(b.aad065,0)) AS je FROM ae60a1 b
GROUP BY b.yae602;
SELECT c.yae602,COUNT(1) AS cgrs FROM ae60a1 c
WHERE c.yae595 = '1'
GROUP BY c.yae602;
SELECT d.yae602,COUNT(1) AS sbrs FROM ae60a1 d
WHERE d.yae595 = '0'
GROUP BY d.yae602;

SELECT a.yae602 AS yae602,
       a.aad053 AS aac001,
       a.aad055 AS aac003,
       a.aad057 AS aae008,
       a.aad059 AS aaz010,
       a.aad061 AS aae002,
       a.aad063 AS aae003,
       a.aad065 AS yad001,
       a.aad067 AS aaa115,
       a.aad069 AS aaz070,
       a.aad071 AS aac147,
       a.aad073 AS aac004,
       a.aad075 AS aae006,
       a.aad077 AS aae044
  FROM ae60a1 a
 WHERE a.yae595='1'


      SELECT a.yae602 AS yae602,
             a.aad053 AS aac001,
		     a.aad055 AS aac003,
		     a.aad057 AS aae008,
		     a.aad059 AS aaz010,
		     a.aad061 AS aae002,
		     a.aad063 AS aae003,
		     a.aad065 AS yad001,
		     a.aad067 AS aaa115,
		     a.aad069 AS aaz070,
		     a.aad071 AS aac147,
		     a.aad073 AS aac004,
		     a.aad075 AS aae006,
		     a.aad077 AS aae044,
		     a.yae595 AS yae595,
		     b.aae036 AS aae036
		FROM ae60a1 a,
		     ae60 b
	   WHERE a.yae602=b.yae602
	     AND a.yae595='1'
       AND a.yae602 IN ('20160422R10000057','20160422R10000058')


      SELECT a.yae602 AS yae602,
             a.aad053 AS aac001,
		     a.aad055 AS aac003,
		     a.aad057 AS aae008,
		     a.aad059 AS aaz010,
		     a.aad061 AS kkny,
		     a.aad063 AS aae003,
		     a.aad065 AS yad001,
		     a.aad067 AS aaa115,
		     a.aad069 AS aaz070,
		     a.aad071 AS aac147,
		     a.aad073 AS aac004,
		     a.aad075 AS aae006,
		     a.aad077 AS aae044,
		     a.aad079 AS kkbz,
		     a.yae595 AS yae595,
		     a.aad081 AS aad081,
		     b.aae036 AS aae036
		FROM ae60a1 a,
		     ae60 b
	   WHERE a.yae602=b.yae602
	     
	     AND a.yae595='2'
	 ORDER BY a.yae602,a.aad081

