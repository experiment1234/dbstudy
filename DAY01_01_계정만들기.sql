CREATE TABLE CUSTOMER_T (
    고객번호 NUMBER NOT NULL PRIMARY KEY, 
    아이디   VARCHAR2(32 BYTE) NOT NULL UNIQUE,
    고객명   VARCHAR2(32 BYTE) NOT NULL,
    직업     VARCHAR2(32 BYTE) NULL,
    핸드폰   VARCHAR2(11 BYTE) NULL UNIQUE,
    주민번호 VARCHAR2(13 BYTE) NULL UNIQUE
);
DROP TABLE CUSTOMER_T;

ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;
DROP USER GD CASCADE;
CREATE USER GD IDENTIFIED BY 1111;
GRANT DBA TO GD;