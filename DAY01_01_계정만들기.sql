ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;
DROP USER GD CASCADE;
CREATE USER GD IDENTIFIED BY 1111;
GRANT DBA TO GD;