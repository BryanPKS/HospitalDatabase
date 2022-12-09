--------------------------------------------------------
--  File created - Friday-December-09-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DEPARTMENTS
--------------------------------------------------------

  CREATE TABLE "SYS"."DEPARTMENTS" 
   (	"DEPARTMENTID" NUMBER, 
	"STAFFID" NUMBER, 
	"NAME" VARCHAR2(20 BYTE), 
	"CLEARENCE" VARCHAR2(20 BYTE), 
	"BASEPAY" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYS.DEPARTMENTS
SET DEFINE OFF;
Insert into SYS.DEPARTMENTS (DEPARTMENTID,STAFFID,NAME,CLEARENCE,BASEPAY) values (1,10101,'CEO','Top Secret',180000);
Insert into SYS.DEPARTMENTS (DEPARTMENTID,STAFFID,NAME,CLEARENCE,BASEPAY) values (2,10201,'Doctor','Secret',115000);
Insert into SYS.DEPARTMENTS (DEPARTMENTID,STAFFID,NAME,CLEARENCE,BASEPAY) values (3,10301,'Nurse','Secret',70000);
Insert into SYS.DEPARTMENTS (DEPARTMENTID,STAFFID,NAME,CLEARENCE,BASEPAY) values (4,10401,'Clerk','Confidential',45000);
Insert into SYS.DEPARTMENTS (DEPARTMENTID,STAFFID,NAME,CLEARENCE,BASEPAY) values (5,10501,'HR','Confidential',57000);
Insert into SYS.DEPARTMENTS (DEPARTMENTID,STAFFID,NAME,CLEARENCE,BASEPAY) values (6,10601,'Social Worker','Confidential',61000);
Insert into SYS.DEPARTMENTS (DEPARTMENTID,STAFFID,NAME,CLEARENCE,BASEPAY) values (7,10701,'Janitor','NONE',26000);
--------------------------------------------------------
--  DDL for Index DEPARTMENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS"."DEPARTMENTS_PK" ON "SYS"."DEPARTMENTS" ("DEPARTMENTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table DEPARTMENTS
--------------------------------------------------------

  ALTER TABLE "SYS"."DEPARTMENTS" MODIFY ("DEPARTMENTID" NOT NULL ENABLE);
  ALTER TABLE "SYS"."DEPARTMENTS" ADD CONSTRAINT "DEPARTMENTS_PK" PRIMARY KEY ("DEPARTMENTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;