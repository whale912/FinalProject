/*부서 테이블 --- 형준*/
SELECT * FROM DEPT;    /*부서*/
INSERT INTO DEPT VALUES (10,'개발팀',null);
INSERT INTO DEPT VALUES (20,'디자인팀',null);
INSERT INTO DEPT VALUES (30,'재무관리팀',null);
INSERT INTO DEPT VALUES (40,'리스크관리팀',null);
INSERT INTO DEPT VALUES (50,'인사팀',null);


/*직급 테이블 --- 형준*/
SELECT * FROM emprank;   /*직급*/
INSERT INTO EMPRANK VALUES (1,'사원',null);
INSERT INTO EMPRANK VALUES (2,'대리',null);
INSERT INTO EMPRANK VALUES (3,'과장',null);
INSERT INTO EMPRANK VALUES (4,'차장',null);
INSERT INTO EMPRANK VALUES (5,'부장',null);
INSERT INTO EMPRANK VALUES (6,'대표이사',null);


/*권한 테이블 --- 형준*/
SELECT * FROM author;   /*권한*/
INSERT INTO AUTHOR VALUES (1,'NORMAL','프로젝트 참여멤버');
INSERT INTO AUTHOR VALUES (2,'PM','프로젝트 관리자');
INSERT INTO AUTHOR VALUES (3,'ADMIN','PMS시스템 관리자');


/*사원테이블 --- 형준&현주*/
SELECT * FROM emp;      /*사원*/

CREATE SEQUENCE emp_sequence
   INCREMENT BY 1
   START WITH 1
   MAXVALUE 999
   MINVALUE 1
   CYCLE;

INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||10||lpad(emp_sequence.nextval,3,0)),20,1,1,'7777','임길동','lim1234@ps.com',sysdate,'');