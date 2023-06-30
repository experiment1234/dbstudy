/*

    테이블(table)
    1. 데이터베이스에서 데이터를 저장하는 객체이다.
    2. 표 형식을 가진다. 
    3. 행(row)과 열(column)의 집합 형태이다.
    
*/

/*
    데이터 타입
    1. NUMBER(숫자타입)(p,s) : 정밀도 p, 스케일 s로 표현하는 숫자 형식
        1) 정밀도 p : 전체 유효 숫자의 갯수(의미있는 숫자) 
           1
           01 = 1
           001 =1 (1개)
        2) 스케일 s : 소수부의 유효 숫자의 갯수(소수점만 따로) \
            0.1 <-1(소수한자리)
            0.01 <- 2(소수두자리)
            0.10 <- 1(0은 의미x)
            (ex) 0.99 (정밀도 2, 스케일 2) 
            number(2,2) : 전체 두자리인데 그 중 소숫점이 두자리
            ~0.99(1이 안넘는 숫자, 백분율과 유사한 숫자) (0.01~0.99 ->> 1%~99%)
            정밀도, 스케일 모두다 생략도 가능
    2.CHAR(size) : character(문자뜻) / 고정 문자(character) 
         1) 글자 수가 고정된 타입(예시 : 핸드폰번호, 주민번호 등)
         2) size : 2000 byte
    3.VARCHAR2(size) : 가변 문자(저장하는 데이터가 길어질경우 많이 씀)
        1) 글자수가 고정되지 않은 타입(예시 : 이름, 이메일, 주소 등)
        2) size : 최대 4000 byte
    4.CLOB(4000byte가 넘어가는 문자) : 큰 텍스트 타입(최대 4GIGA)
    5.DATE : 날짜와 시간을 동시에 표현하는 타입(년,월,일,시,분,초)
    6.TIMESTAMP : 날짜와 시간을 동시에 표현하는 타입(년,월,일,시,분,초,마이크로초(백만분의 1초)
    */
    
/* 
    제약조건 5가지
    1. NOT NULL : 필수
    2. UNIQUE : 중복 불가
    3. PRIMARY KEY : 기본키(기본키가 제약조건 이름)
    4. FOREIGN KEY : 외래키(이키로 다른 키를 참조하겠음)
    5. CHECK(중요X) : 값의 제한(잘못된 데이터 들어오려고 할때 막을 수 있음)
*/

--고객 테이블
DROP TABLE CUSTOMER_T;
CREATE TABLE CUSTOMER_T (
    NO    NUMBER            NOT NULL PRIMARY KEY
 ,  ID    VARCHAR2(32 BYTE) NOT NULL UNIQUE
 ,  NAME  VARCHAR2(32 BYTE) NOT NULL
 ,  JOB   VARCHAR2(32 BYTE) NULL
 ,  PHONE CHAR(13 BYTE)     NULL UNIQUE
 ,  JUBUN CHAR(14 BYTE)     NULL UNIQUE
);

    
        