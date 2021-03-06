

/*부서 테이블 --- 형준*/
SELECT * FROM DEPT; 	/*부서*/
INSERT INTO DEPT VALUES (10,'개발팀',null);
INSERT INTO DEPT VALUES (20,'디자인팀',null);
INSERT INTO DEPT VALUES (30,'재무관리팀',null);
INSERT INTO DEPT VALUES (40,'리스크관리팀',null);
INSERT INTO DEPT VALUES (50,'인사팀',null);


/*직급 테이블 --- 형준*/
SELECT * FROM emprank;	/*직급*/
INSERT INTO EMPRANK VALUES (1,'사원',null);
INSERT INTO EMPRANK VALUES (2,'대리',null);
INSERT INTO EMPRANK VALUES (3,'과장',null);
INSERT INTO EMPRANK VALUES (4,'차장',null);
INSERT INTO EMPRANK VALUES (5,'부장',null);
INSERT INTO EMPRANK VALUES (6,'대표이사',null);


/*권한 테이블 --- 형준*/
SELECT * FROM author;	/*권한*/
INSERT INTO AUTHOR VALUES (1,'NORMAL','프로젝트 참여멤버');
INSERT INTO AUTHOR VALUES (2,'PM','프로젝트 관리자');
INSERT INTO AUTHOR VALUES (3,'ADMIN','PMS시스템 관리자');


/*사원테이블 --- 형준&현주*/
SELECT * FROM emp;		/*사원*/
DROP SEQUENCE emp_sequence;

CREATE SEQUENCE emp_sequence
	INCREMENT BY 1
	START WITH 1
	MAXVALUE 999
	MINVALUE 1
	CYCLE;


INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||'00'||lpad(emp_sequence.nextval,3,0)),null,6,3,'7777','박대표','master@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||40||lpad(emp_sequence.nextval,3,0)),40,5,1,'7777','김사부','dr1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||30||lpad(emp_sequence.nextval,3,0)),30,5,1,'7777','사계절','season1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||20||lpad(emp_sequence.nextval,3,0)),20,4,1,'7777','조수석','design1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||10||lpad(emp_sequence.nextval,3,0)),10,3,2,'7777','박관리','park1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||50||lpad(emp_sequence.nextval,3,0)),50,2,1,'7777','김새로이','new1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||20||lpad(emp_sequence.nextval,3,0)),20,1,1,'7777','정앙드','0001234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||10||lpad(emp_sequence.nextval,3,0)),10,1,1,'7777','임길동','lim1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||40||lpad(emp_sequence.nextval,3,0)),40,1,1,'7777','김베이스','base1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||20||lpad(emp_sequence.nextval,3,0)),20,1,1,'7777','한차트','chart1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||30||lpad(emp_sequence.nextval,3,0)),30,1,1,'7777','김겨울','winter1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||10||lpad(emp_sequence.nextval,3,0)),10,1,1,'7777','박현주','hyeonju1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||20||lpad(emp_sequence.nextval,3,0)),20,1,1,'7777','김그림','art1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||10||lpad(emp_sequence.nextval,3,0)),10,1,1,'7777','박형준','hyeongjun1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||50||lpad(emp_sequence.nextval,3,0)),50,1,1,'7777','김하이걸','higirl1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||40||lpad(emp_sequence.nextval,3,0)),40,1,1,'7777','김스크립','script1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||10||lpad(emp_sequence.nextval,3,0)),10,1,1,'7777','임진혁','jinhyeok1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||30||lpad(emp_sequence.nextval,3,0)),30,1,1,'7777','김봄','spring1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||50||lpad(emp_sequence.nextval,3,0)),50,1,1,'7777','김헬로','hello1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||10||lpad(emp_sequence.nextval,3,0)),10,1,1,'7777','임성빈','sungbin1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||40||lpad(emp_sequence.nextval,3,0)),40,1,1,'7777','김데타','data1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||40||lpad(emp_sequence.nextval,3,0)),40,1,1,'7777','김뷰','vue1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||30||lpad(emp_sequence.nextval,3,0)),30,1,1,'7777','김여름','summer1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||10||lpad(emp_sequence.nextval,3,0)),10,1,1,'7777','이윤배','yunbae1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||40||lpad(emp_sequence.nextval,3,0)),40,1,1,'7777','김자바','java1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||50||lpad(emp_sequence.nextval,3,0)),50,1,1,'7777','최인사','insa1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||30||lpad(emp_sequence.nextval,3,0)),30,1,1,'7777','김가을','maple1234@ps.com',sysdate,'');

SELECT *FROM emp;

SELECT e.EMPNO, e.DEPTNO, d.DNAME, e.RANKNO, e.AUTHNO, e.NAME, e.EMAIL, e.HIREDATE 
FROM EMP e, DEPT d
WHERE e.DEPTNO = d.DEPTNO(+);


/* 사원 등록 */

SELECT * FROM emp;
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||10||lpad(emp_sequence.nextval,3,0)),10,1,1,'123456a!','임길동','lim1234@ps.com',sysdate,'');

/* 직책 수정 */
UPDATE EMP SET AUTHNO = 2 WHERE EMPNO='202020043';

/* 삭제 */
DELETE FROM EMP WHERE EMPNO='202020043';

/* 2020-06-02 */
UPDATE EMP SET AUTHNO = #{authno}, RANKNO = #{rankno} WHERE EMPNO=#{empno}

UPDATE EMP SET AUTHNO = 2, RANKNO = 2 WHERE EMPNO='202040054';
SELECT * 
		FROM(
			SELECT rownum cnt,a.*
			FROM 
			(SELECT e.EMPNO, e.DEPTNO, d.DNAME, er.rname, e.rankno, au.aname, e.AUTHNO, e.NAME, e.EMAIL, e.HIREDATE 
			FROM EMP e, DEPT d, EMPRANK er, Author au
			WHERE e.DEPTNO = d.DEPTNO(+)
			AND e.rankno = er.rankno
			AND e.authno = au.authno) a
			WHERE 1=1
			)
		    ;
		  
