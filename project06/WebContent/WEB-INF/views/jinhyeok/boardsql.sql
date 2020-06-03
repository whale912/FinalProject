SELECT * FROM pjboard;
SELECT * FROM project;
SELECT * FROM pjreply;
SELECT * FROM emp;
SELECT * FROM member;
SELECT p.projectno , p.pname FROM emp e , MEMBER m  , project p 
WHERE e.empno = m.empno AND p.PROJECTNO = m.PROJECTNO AND state ='진행' AND e.empno='201910001';

INSERT INTO pjboard VALUES (pjboard_seq.nextval,1,0,'201910002','프로젝트 방안','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,1,0,'201910003','프로젝트 계획','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,1,0,'201910004','프로젝트 공지','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,1,0,'201910005','프로젝트 역할분담','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,1,0,'201910006','프로젝트 변경내용','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,1,0,'201910007','프로젝트 변경사항','내용입니다',sysdate,sysdate,0,'N');

INSERT INTO pjboard VALUES (pjboard_seq.nextval,2,0,'201910002','프로젝트 방안','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,2,0,'201910003','프로젝트 계획','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,2,0,'201910004','프로젝트 공지','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,2,0,'201910005','프로젝트 역할분담','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,2,0,'201910006','프로젝트 변경내용','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,2,0,'201910007','프로젝트 변경사항','내용입니다',sysdate,sysdate,0,'N');

INSERT INTO pjboard VALUES (pjboard_seq.nextval,3,0,'201910002','프로젝트 방안','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,3,0,'201910003','프로젝트 계획','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,3,0,'201910004','프로젝트 공지','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,3,0,'201910005','프로젝트 역할분담','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,3,0,'201910006','프로젝트 변경내용','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,3,0,'201910007','프로젝트 변경사항','내용입니다',sysdate,sysdate,0,'N');

INSERT INTO pjboard VALUES (pjboard_seq.nextval,4,0,'201910002','프로젝트 방안','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,4,0,'201910003','프로젝트 계획','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,4,0,'201910004','프로젝트 공지','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,4,0,'201910005','프로젝트 역할분담','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,4,0,'201910006','프로젝트 변경내용','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,4,0,'201910007','프로젝트 변경사항','내용입니다',sysdate,sysdate,0,'N');

INSERT INTO pjboard VALUES (pjboard_seq.nextval,5,0,'201910002','프로젝트 방안','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,5,0,'201910003','프로젝트 계획','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,5,0,'201910004','프로젝트 공지','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,5,0,'201910005','프로젝트 역할분담','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,5,0,'201910006','프로젝트 변경내용','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,5,0,'201910007','프로젝트 변경사항','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjreply VALUES (pjreply_seq.nextval,1,1,'201910002','내용내용내용',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,1,1,'201910002','내용내용내용22',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,1,1,'201910002','내용내용내용33',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,1,1,'201910002','내용내용내용44',sysdate);
SELECT * FROM pjboard;
	댓글번호
   	pjboardno NUMBER NOT NULL, /* 글 번호 */
	projectno NUMBER NOT NULL, /* 프로젝트 번호 */
	writer VARCHAR2(50), /* 댓글 작성자 */
	content VARCHAR2(1000), /* 내용 */
	credate DATE /* 작성일 */

	pjboardno NUMBER NOT NULL, /* 글 번호 */
	projectno NUMBER NOT NULL, /* 프로젝트 번호 */
	refno NUMBER, /* 상위 글 번호 */
	empno NUMBER, /* 작성자 */
	title VARCHAR2(50), /* 제목 */
	content VARCHAR2(3000), /* 내용 */
	credate DATE, /* 작성일 */
	uptdate DATE, /* 수정일 */
	views NUMBER, /* 조회수 */
	noticetype CHAR /* 공지여부 */
	
SELECT * FROM emp;	
SELECT * FROM pjboard;
SELECT * FROM pjreply;
SELECT COUNT(*) FROM PJREPLY WHERE pjboardno=1;
SELECT views FROM pjboard;

SELECT b.*, b.CREDATE, e.name
FROM pjboard b , emp e
WHERE b.projectno=1 AND e.empno = b.writer; 
SELECT * FROM project;
 		
 		SELECT *
 		FROM pjboard;

SELECT * FROM project WHERE empno = 201910002;
	SELECT *
 		FROM(
			select rownum cnt, level, b.* ,e.*
			from pjboard b , emp e
			where b.projectno=1 AND e.empno = b.writer					
			START WITH refno = 0
			CONNECT BY PRIOR b.PROJECTNO = refno
			ORDER siblings BY b.PROJECTNO DESC )
			WHERE cnt BETWEEN 1 AND 5;
		
			SELECT *
 		FROM(
			select rownum cnt, level, b.PJBOARDNO,b.PROJECTNO,b.REFNO,b.TITLE,b.CREDATE,b.VIEWS,e.name
			from pjboard b , emp e
			where b.projectno=6 AND e.empno = b.writer					
			START WITH refno = 0
			CONNECT BY PRIOR b.PROJECTNO = refno)		
			WHERE cnt BETWEEN 1 AND 5;		
			ORDER BY NOTICETYPE DESC, 
		
SELECT * FROM project;
INSERT INTO pjboard values(PROJECTNO_seq.nextval,1,0,)

SELECT * FROM pjboard;
		SELECT * FROM pjboard
 				WHERE pjboardno =#{pjboardno}	
 				
SELECT b.*, e.name
FROM pjboard b, emp e
WHERE pjboardno=41 AND e.empno = b.writer;

SELECT * FROM emp;
SELECT * FROM pjboard;
UPDATE pjboard SET title = '프로젝트 방안수정', content= '내용 수정', UPtdate = sysdate WHERE pjboardno=1;
SELECT * FROM member;
SELECT * FROM project;
UPDATE project SET state = '진행' WHERE state='진행 중';
UPDATE emp SET PASS = '1234' WHERE empno = '201910001';
INSERT INTO PROJECT VALUES(project_seq.nextval,4,'테스트 할 프로젝트명','201910001',5,10000000,to_date('2020-05-02'),to_date('2020-06-08'),0.5,'gantt.config.types.project',1,'진행 중');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,4,0,201910002,'공지공지공지1','내용입니다',sysdate,sysdate,0,'Y');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,4,0,201910002,'공지공지공지2','내용입니다',sysdate,sysdate,0,'N');


SELECT p.pname,p.projectno
FROM project p , MEMBER m
WHERE m.empno = 201910001 AND p.PROJECTNO = m.PROJECTNO 
ORDER BY p.enddate desc ;
		SELECT pname,projectno FROM project 
		WHERE empno = 201910001
		ORDER BY enddate desc ;

 		SELECT pname,projectno FROM project 
		WHERE empno = 201910001
		ORDER BY enddate desc 
SELECT pname FROM project 
WHERE empno = 201910002
ORDER BY enddate desc ;
/* 조회수 업뎃*/
		UPDATE pjboard
 		   SET views = views+1
 		 WHERE pjboardno = 1;
 	SELECT * 
 		FROM pjboard_file;	
 		
 SELECT *
 		FROM(
			select rownum cnt, level, b.PJBOARDNO,b.PROJECTNO,b.REFNO,b.TITLE,b.CREDATE,b.VIEWS,b.writer,e.name, b.NOTICETYPE 
			from pjboard b , emp e
			where b.projectno=6 AND e.empno = b.writer
		START WITH refno = 0
			CONNECT BY PRIOR b.PJBOARDNO = refno
			ORDER siblings BY b.PJBOARDNO DESC )		
			WHERE cnt BETWEEN 1 AND 5
			ORDER BY NOTICETYPE DESC, CNT;
		SELECT *
 		FROM(
		select rownum cnt, level, b.PJBOARDNO,b.PROJECTNO,b.REFNO,b.TITLE,
			case to_char(b.CREDATE,'YYYY-MM-DD') when to_char(sysdate,'YYYY-MM-DD') then to_char(b.credate,'HH24:MI') else to_char(b.CREDATE,'YYYY-MM-DD') END "CREDATE",
			b.VIEWS,b.writer,e.name,b.NOTICETYPE
			from pjboard b , emp e
			where b.projectno=4 AND e.empno = b.writer
			START WITH refno = 0
			CONNECT BY PRIOR b.PJBOARDNO = refno
			ORDER siblings BY b.PJBOARDNO DESC )		
			WHERE cnt BETWEEN 1 AND 5
			ORDER BY NOTICETYPE DESC, CNT;
			
			 SELECT *
 		FROM(
			select rownum cnt, level, nvl(r.totrecnt,0)totrecnt , b.PJBOARDNO,b.PROJECTNO,b.REFNO,b.TITLE,to_char(b.CREDATE,'YYYY-MM-DD')CREDATE,b.VIEWS,b.writer,e.name, b.NOTICETYPE 
			from pjboard b , emp e, (select PJBOARDNO, count(*) totrecnt from pjreply GROUP BY PJBOARDNO) r
			where b.projectno=6 AND e.empno = b.writer AND b.PJBOARDNO = r.pjboardno(+)
		START WITH refno = 0
			CONNECT BY PRIOR b.PJBOARDNO = refno
			ORDER siblings BY b.PJBOARDNO DESC )		
			WHERE cnt BETWEEN 1 AND 5
			ORDER BY NOTICETYPE DESC, CNT;
		SELECT * FROM pjreply;
		select PJBOARDNO, count(*) totrecnt from pjreply GROUP BY PJBOARDNO;
DELETE pjboard WHERE pjboardno=43;
UPDATE PJREPLY SET PJboardno = 36 WHERE pjboardno=20;
SELECT * FROM pjboard WHERE projectno=6;
SELECT * FROM PJBOARD_FILE;
SELECT * FROM emp;
SELECT * FROM pjboard;
SELECT * FROM pjreply;
INSERT INTO PJREPLY values(pjreply_seq.nextval,20,'201910001','내용',sysdate);
INSERT INTO PJREPLY values(pjreply_seq.nextval,20,'201910001','내용',sysdate);

INSERT INTO PJREPLY values(pjreply_seq.nextval,20,'201910001','내용',sysdate);


SELECT p.pjreplyno, p.writer , p.pjboardno,e.name,p.content,to_char(p.credate,'YYYYMMDDHH24MISS')CREDATE   FROM PJREPLY p , emp e
WHERE pjboardno = 36 AND e.empno = p.writer
ORDER BY credate ASC;
INSERT INTO PJREPLY values(pjreply_seq.nextval,10,'201910002','내용',sysdate);
SELECT * FROM pjreply;
DELETE pjreply WHERE pjreplyno = 15;
UPDATE pjreply SET content = '수정할게요' WHERE pjreplyno= 21;

 		select count(*) from PJreply where pjboardno=20;
		
	SELECT rownum cnt,p.pjreplyno,(select count(*) from pjreply	where pjboardno= 35)totrecnt,
		 p.pjboardno,e.name,p.content,p.credate FROM PJREPLY p , emp e
		WHERE pjboardno = 35 AND e.empno = p.writer	
		ORDER BY credate,cnt ASC;
SELECT * FROM emp;

SELECT *
 		FROM(
			select rownum cnt, level, b.PJBOARDNO,b.PROJECTNO,b.REFNO,b.TITLE,b.CREDATE,b.VIEWS,b.writer,e.name,b.NOTICETYPE
			from pjboard b , emp e
			where b.projectno=6 AND e.empno = b.writer
		START WITH refno = 0
			CONNECT BY PRIOR b.PJBOARDNO = refno
			ORDER siblings BY b.PJBOARDNO DESC ) 		
			WHERE cnt BETWEEN 11 AND 15
			ORDER BY NOTICETYPE DESC, CNT;
		
			SELECT * FROM pjboard WHERE projectno=6;
		
		SELECT *
 		FROM(		
 		SELECT rownum cnt,p.pjreplyno, p.pjboardno,e.name,p.content, p.credate FROM PJREPLY p , emp e
		WHERE pjboardno = 36 AND e.empno = p.writer	
		ORDER BY p.credate asc)		
		WHERE cnt BETWEEN 1 AND  5; 
	
		
		DELETE pjreply WHERE pjboardno =36;
			 
SELECT * FROM pjreply;
SELECT * FROM emp;

SELECT * FROM pjboard;
SELECT * FROM pjreply ORDER BY PJREPLYNO ASC;
DELETE pjreply WHERE pjboardno = 36;
SELECT * FROM pjboard_file;

		INSERT INTO PJREPLY values(pjreply_seq.nextval,36,'201910001','내용',sysdate);

SELECT * FROM(
SELECT rownum cnt,a.*
FROM
(SELECT p.pjreplyno, p.pjboardno,e.name,p.content, p.credate FROM PJREPLY p , emp e
      WHERE pjboardno = 36 AND e.empno = p.writer   
      ORDER BY p.credate asc) a )
     WHERE cnt BETWEEN 1 AND 10;
    SELECT*FROM pjboard;
    	UPDATE pjboard SET title = 'dffd' ,
						   content= 'dfdf',
						   uptdate = sysdate 
						   WHERE pjboardno = 36; 
						  
				UPDATE pjboard SET title = #{title, jdbcType=VARCHAR}, 
						   content= #{content, jdbcType=VARCHAR},
						   uptdate = sysdate 
						   WHERE pjboardno = #{pjboardno}
						   
				SELECT * FROM PJBOARD_FILE;	 
(SELECT * FROM pjboard WHERE NOTICETYPE ='Y' AND projectno = 6)
UNION ALL 
(SELECT * FROM pjboard WHERE projectno =6 AND noticetype='N');
ORDER BY noticetype , pjboardno;	
SELECT * FROM emp;
