SELECT * from taconsolemodule;
SELECT * from pbcatcol;

ALTER TABLE ALLOCATE EXTENT;
SELECT table_name FROM user_tables WHERE num_rows=0;

SELECT 'alter table '||table_name||' allocate extent;' FROM user_tables WHERE num_rows=0;

 alter table PBCATCOL allocate extent;
  alter table PBCATTBL allocate extent;
  alter table PBCATVLD allocate extent;
  alter table QRTZ_BLOB_TRIGGERS allocate extent;
  alter table QRTZ_CALENDARS allocate extent;
  alter table QRTZ_CRON_TRIGGERS allocate extent;
  alter table QRTZ_FIRED_TRIGGERS allocate extent;
  alter table QRTZ_JOB_DETAILS allocate extent;
  alter table QRTZ_JOB_LOG allocate extent;
  alter table QRTZ_JOB_MSGS allocate extent;
  alter table QRTZ_PAUSED_TRIGGER_GRPS allocate extent;
  alter table QRTZ_SCHEDULER_STATE allocate extent;
  alter table QRTZ_SIMPLE_TRIGGERS allocate extent;
  alter table QRTZ_SIMPROP_TRIGGERS allocate extent;
  alter table QRTZ_TRIGGERS allocate extent;
  alter table TAADMINYAB139SCOPE allocate extent;
  alter table TACONSOLEMODULE allocate extent;
  alter table TACONSOLEMODULEPRIVILEGE allocate extent;
  alter table TADATAACCESSDIMENSION allocate extent;
  alter table TAMANAGERMG allocate extent;
  alter table TASHAREPOSITION allocate extent;
  alter table TAYAB003SCOPE allocate extent;
  alter table TAYAB139MG allocate extent;
  alter table YHCIP_ORACLE_JOBS allocate extent;
  alter table ZB13 allocate extent;
	alter table ZB14 allocate extent;
	alter table ZB16 allocate extent;
	alter table ZB17 allocate extent;
	alter table ZB18 allocate extent;
	alter table ZB38 allocate extent;
	alter table ZB39 allocate extent;



