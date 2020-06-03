CREATE TABLE measurecode(
	NO number PRIMARY KEY,
	refno number,
	name varchar(2)
);

INSERT INTO task values(task_seq.nextval,1,1,'로그인','202010001','아이디/비밀번호를 통한 인증 => 세션에 회원정보 넣기',sysdate,sysdate,sysdate,sysdate,sysdate,'10%',sysdate,sysdate,'코멘트','완료');
INSERT INTO task values(task_seq.nextval,1,1,'회원가입','202010001','회원정보 INSERT',sysdate,sysdate,sysdate,sysdate,sysdate,'10%',sysdate,sysdate,'코멘트','완료');
INSERT INTO task values(task_seq.nextval,1,1,'ID/PW찾기','202010001','입력정보를 통해 ID/PW 찾기',sysdate,sysdate,sysdate,sysdate,sysdate,'10%',sysdate,sysdate,'코멘트','완료');
INSERT INTO task values(task_seq.nextval,1,1,'회원가입완료','202010001','회원가입 완료 페이지',sysdate,sysdate,sysdate,sysdate,sysdate,'10%',sysdate,sysdate,'코멘트','완료');
INSERT INTO task values(task_seq.nextval,1,1,'마이페이지','201910003','마이페이지',sysdate,sysdate,sysdate,sysdate,sysdate,'10%',sysdate,sysdate,'코멘트','완료');
INSERT INTO task values(task_seq.nextval,1,1,'문의하기','201910003','문의하기',sysdate,sysdate,sysdate,sysdate,sysdate,'10%',sysdate,sysdate,'코멘트','완료');
INSERT INTO task values(task_seq.nextval,1,1,'신고하기','201910003','신고하기',sysdate,sysdate,sysdate,sysdate,sysdate,'10%',sysdate,sysdate,'코멘트','완료');
INSERT INTO task values(task_seq.nextval,1,1,'FAQ','201910003','FAQ',sysdate,sysdate,sysdate,sysdate,sysdate,'10%',sysdate,sysdate,'코멘트','완료');

INSERT INTO task values(task_seq.nextval,2,2,'로그인','201910004','아이디/비밀번호를 통한 인증 => 세션에 회원정보 넣기',sysdate,sysdate,sysdate,sysdate,sysdate,'10%',sysdate,sysdate,'코멘트','완료');
INSERT INTO task values(task_seq.nextval,2,2,'회원가입','201910004','회원정보 INSERT',sysdate,sysdate,sysdate,sysdate,sysdate,'10%',sysdate,sysdate,'코멘트','완료');

INSERT INTO measurecode VALUES (1,1,'회피'); 
INSERT INTO measurecode VALUES (2,1,'전가'); 
INSERT INTO measurecode VALUES (3,1,'완화'); 
INSERT INTO measurecode VALUES (4,1,'수용'); 
INSERT INTO measurecode VALUES (5,2,'활용'); 
INSERT INTO measurecode VALUES (6,2,'공유'); 
INSERT INTO measurecode VALUES (7,2,'증대'); 
INSERT INTO measurecode VALUES (8,2,'수용'); 


INSERT INTO issue VALUES (issue_seq.nextval,1,1,'202010001',sysdate,
'로그인 세션 관련 문제','로그인 시 세션 적용 안됨','조치완료');
INSERT INTO issue VALUES (issue_seq.nextval,1,2,'202010001',sysdate,
'회원정보 프로필 관련 이슈','회원정보 프로필 입력이 안됨','조치완료');
INSERT INTO issue VALUES (issue_seq.nextval,1,3,'202010001',sysdate,
'이메일 발송 기능 문제','이메일 발송 기능 적용 안 됨','조치완료');
INSERT INTO issue VALUES (issue_seq.nextval,1,5,'201910003',sysdate,
'마이페이지 화면구현 지연중','시간 부족','조치완료');
INSERT INTO issue VALUES (issue_seq.nextval,1,6,'201910003',sysdate,
'문의하기 첨부파일 업로드','다중 업로드 시 첫번째 파일만 업로드 됨','대기중');

INSERT INTO issue VALUES (issue_seq.nextval,2,9,'201910004',sysdate,
'로그인 이슈','사번입력안됨','조치완료');
INSERT INTO issue VALUES (issue_seq.nextval,2,10,'201910004',sysdate,
'회원정보 DB변경','회원정보 프로필 입력이 안됨','대기중');
DELETE FROM issue WHERE taskno=10;

INSERT INTO measure VALUES (measure_seq.nextval,1,'201910002',sysdate,sysdate,'세션 적용','로그인 시 세션 적용 됨');
INSERT INTO measure VALUES (measure_seq.nextval,2,'201910002',sysdate,sysdate,'프로필 적용 처리완료','파일 업로드 적용 완료');
INSERT INTO measure VALUES (measure_seq.nextval,3,'201910002',sysdate,sysdate,'이메일 발송 기능 적용','기능 적용 되는 것 확인 함');
INSERT INTO measure VALUES (measure_seq.nextval,4,'201910002',sysdate,sysdate,'이슈 확인함','작업기간 3일 연장');
INSERT INTO measure VALUES (measure_seq.nextval,6,'201910002',sysdate,sysdate,'조치완료','조치 완료');


SELECT i.issueno,p.pname, t.title tname, e.name, i.regdate, i.title,i.content,e2.name mname, 
m.title mtitle, m.content mcontent,m.measuredate, i.state,i.projectno,i.taskno,m.measureno 
FROM issue i LEFT OUTER JOIN measure m ON i.issueno = m.issueno 
JOIN project p ON i.projectno=p.projectno JOIN task t ON i.taskno=t.taskno JOIN emp e ON i.empno=e.empno
LEFT OUTER JOIN emp e2 ON e2.empno=m.empno WHERE i.issueno=30;

SELECT count(*) FROM(
SELECT i.issueno,p.pname, t.title tname, e.name, i.regdate, i.title,i.content,e2.name mname, 
m.title mtitle, m.content mcontent,m.measuredate, i.state,i.projectno,i.taskno 
FROM issue i LEFT OUTER JOIN measure m ON i.issueno = m.issueno 
JOIN project p ON i.projectno=p.projectno JOIN task t ON i.taskno=t.taskno JOIN emp e ON i.empno=e.empno
LEFT OUTER JOIN emp e2 ON e2.empno=m.empno	
WHERE i.empno=201910003 AND i.projectno LIKE '%'||''||'%' 
AND (p.pname LIKE '%'||''||'%'  
OR t.title LIKE '%'||''||'%' 
OR i.title LIKE '%'||''||'%' 
OR e.name LIKE '%'||''||'%'));

SELECT * FROM(
SELECT rownum cnt,a.*
FROM (SELECT i.issueno,p.pname, t.title tname, e.name, i.regdate, i.title,i.content,e2.name mname, 
m.title mtitle, m.content mcontent,m.measuredate, i.state,i.projectno,i.taskno 
FROM issue i LEFT OUTER JOIN measure m ON i.issueno = m.issueno 
JOIN project p ON i.projectno=p.projectno JOIN task t ON i.taskno=t.taskno JOIN emp e ON i.empno=e.empno
LEFT OUTER JOIN emp e2 ON e2.empno=m.empno
WHERE i.empno=201910003 AND i.projectno LIKE '%'||''||'%' 
AND (p.pname LIKE '%'||''||'%'
OR t.title LIKE '%'||''||'%' 
OR i.title LIKE '%'||''||'%' 
OR e.name LIKE '%'||''||'%')ORDER BY regdate DESC) a );


SELECT * FROM(
SELECT rownum cnt,a.*
FROM (SELECT i.issueno,p.pname, t.title tname, e.name, i.regdate, i.title,i.content,e2.name mname, 
m.title mtitle, m.content mcontent,m.measuredate, i.state,i.projectno,i.taskno 
FROM issue i LEFT OUTER JOIN measure m ON i.issueno = m.issueno 
JOIN project p ON i.projectno=p.projectno JOIN task t ON i.taskno=t.taskno JOIN emp e ON i.empno=e.empno
LEFT OUTER JOIN emp e2 ON e2.empno=m.empno
WHERE p.empno LIKE '%'||'201910002'||'%' 
AND (p.pname LIKE '%'||''||'%'
OR t.title LIKE '%'||''||'%' 
OR i.title LIKE '%'||''||'%' 
OR e.name LIKE '%'||''||'%')ORDER BY regdate DESC) a );



--프로젝트명	PM	상태	시작일	종료일	진행율	이슈	상세
SELECT count(*) FROM(
SELECT p.projectno,p.kindno,p.pname,p.empno,(SELECT e.name FROM emp e WHERE p.empno=e.empno) name ,p.state,to_char(p.startdate,'yyyy-mm-dd'),to_char(p.enddate,'yyyy-mm-dd'),p.progress,
(SELECT count(*) FROM issue i WHERE i.projectno=p.projectno) issuecnt
FROM project p 
WHERE p.projectno=p.projectno ORDER BY startdate DESC );

SELECT * FROM(
SELECT rownum cnt,a.*
FROM (
SELECT p.projectno,p.kindno,p.pname,p.empno,(SELECT e.name FROM emp e WHERE p.empno=e.empno) name ,p.state,to_char(p.startdate,'yyyy-mm-dd'),to_char(p.enddate,'yyyy-mm-dd'),p.progress,
(SELECT count(*) FROM issue i WHERE i.projectno=p.projectno) issuecnt
FROM project p 
WHERE p.projectno=p.projectno ORDER BY startdate DESC ) a );




-- 대기 진행 종료 중단 취소


SELECT p.projectno id, p.pname text, p."TYPE",(SELECT e.name FROM emp e WHERE e.empno=p.empno) "users",
to_char(p.startdate,'DD-MM-YYYY') start_date, to_char(p.enddate,'DD-MM-YYYY') end_date, 
(p.ENDDATE-p.STARTDATE) duration,p.progress progress,p."OPEN",p.state state,
p.progress*100||'%' percent
FROM project p where p.state!='종료'


SELECT * FROM (SELECT count(*) codeno1 FROM issue WHERE state='조치완료' AND codeno=1),
(SELECT count(*) codeno2 FROM issue WHERE state='조치완료' AND codeno=2),
(SELECT count(*) codeno3 FROM issue WHERE state='조치완료' AND codeno=3),
(SELECT count(*) codeno4 FROM issue WHERE state='조치완료' AND codeno=4),
(SELECT count(*) codeno5 FROM issue WHERE state='조치완료' AND codeno=5),
(SELECT count(*) codeno6 FROM issue WHERE state='조치완료' AND codeno=6),
(SELECT count(*) codeno7 FROM issue WHERE state='조치완료' AND codeno=7),
(SELECT count(*) codeno8 FROM issue WHERE state='조치완료' AND codeno=8);


(SELECT count(*) codeno1 FROM issue WHERE state='조치완료' AND codeno=1),
(SELECT count(*) codeno2 FROM issue WHERE state='조치완료' AND codeno=2),
(SELECT count(*) codeno3 FROM issue WHERE state='조치완료' AND codeno=3) FROM issue;


SELECT * FROM issue;
SELECT * FROM project;

SELECT * FROM task;
SELECT * FROM issue;
SELECT * FROM measure;

INSERT INTO measure VALUES (measure_seq.nextval,6,'201910001',sysdate,sysdate,'확인','2주 뒤 연기 확인');
UPDATE issue SET state='조치완료',codeno=8 WHERE issueno=6;
INSERT INTO issue (issueno,projectno,taskno,empno,regdate,title,content,state,codeno) VALUES (issue_seq.nextval,6,60012,'201910005',sysdate,
'새로운 내용 적용','클라이언트가 미팅일자를 2주뒤로 연기하길 바람','조치완료',8);
INSERT INTO issue (issueno,projectno,taskno,empno,regdate,title,content,state,codeno) VALUES (issue_seq.nextval,6,60015,'201910003',sysdate,
'커뮤니케이션 게시판 분리','클라이언트 측이 전면수정 요구 함','조치대기',7);
INSERT INTO measure VALUES (measure_seq.nextval,7,'201910001',sysdate,sysdate,'확인','2주 뒤 연기 확인');
INSERT INTO measure VALUES (measure_seq.nextval,8,'201910001',sysdate,sysdate,'조치완료','전면 수정 불가 통보
관리자 페이지만 재작성 하기로 합의함');
UPDATE issue SET state='조치완료',codeno=7 WHERE issueno=8;

INSERT INTO issue (issueno,projectno,taskno,empno,regdate,title,content,state) VALUES (issue_seq.nextval,6,60014,'201910002',sysdate,
'리스크 관리 이슈','추가페이지 작업 시 대시보드와 기능 연계가 안 됨','조치대기');

SELECT codeno codeno,div codediv, name codename,etc codeetc FROM measurecode WHERE codeno=1;

SELECT * FROM project;

SELECT * FROM (SELECT count(*) kindno1 FROM project WHERE kindno=1), 
	(SELECT count(*) kindno2 FROM project WHERE kindno=2),
	(SELECT count(*) kindno3 FROM project WHERE kindno=3),
	(SELECT count(*) kindno4 FROM project WHERE kindno=4),
	(SELECT count(*) kindno5 FROM project WHERE kindno=5)
	
SELECT to_char(sysdate,'q') FROM dual;

SELECT * FROM kind;

SELECT * FROM(
SELECT to_char(enddate,'yyyy') enddate, count(*) cnt
FROM project
GROUP BY to_char(enddate,'yyyy')
ORDER BY cnt DESC) WHERE rownum=1;



INSERT INTO PROJECT VALUES(project_seq.nextval,4,'7번프로젝트','201910001',5,10000000,to_date('2019-05-02'),to_date('2019-06-08'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,2,'8번프로젝트','201910001',5,10000000,to_date('2019-01-02'),to_date('2019-03-08'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,3,'9번프로젝트','201910001',5,10000000,to_date('2018-05-02'),to_date('2019-02-08'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,4,'9번프로젝트','201910001',5,10000000,to_date('2018-05-02'),to_date('2018-10-08'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,5,'9번프로젝트','201910001',5,10000000,to_date('2017-05-02'),to_date('2017-10-08'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,2,'스탯티즈 어플 개발','202010009',5,10000000,to_date('2020-05-04'),to_date('2020-06-10'),0.2,'gantt.config.types.project',1,'진행');

SELECT * FROM kind;
SELECT * FROM emp WHERE authno=2;
SELECT * FROM project;
DELETE FROM project WHERE projectno BETWEEN 19 AND 25;		
SELECT p.projectno,p.kindno,p.pname,p.empno,(SELECT e.name FROM emp e WHERE p.empno=e.empno) name ,p.state,to_char(p.startdate,'yyyy-mm-dd') startdate,to_char(p.enddate,'yyyy-mm-dd') enddate,p.progress,
(SELECT count(*) FROM issue i WHERE i.projectno=p.projectno) issuecnt,(SELECT k.kname FROM kind k WHERE k.kindno=p.kindno) kname,
(SELECT count(*) FROM MEMBER m WHERE p.projectno=m.projectno) cnt,budget
FROM project p WHERE p.projectno=6; 
	
SELECT LEVEL, b.*
	FROM reboard b
	WHERE 1=1
	START WITH refno=0
	CONNECT BY PRIOR NO = refno
	ORDER siblings BY NO DESC 

SELECT * FROM (SELECT count(*) kindno1 FROM project WHERE kindno=1 AND to_char(enddate,'yyyy')=2020), 
(SELECT count(*) kindno2 FROM project WHERE kindno=2 AND to_char(enddate,'yyyy')=2020),
(SELECT count(*) kindno3 FROM project WHERE kindno=3 AND to_char(enddate,'yyyy')=2020),
(SELECT count(*) kindno4 FROM project WHERE kindno=4 AND to_char(enddate,'yyyy')=2020),
(SELECT count(*) kindno5 FROM project WHERE kindno=5 AND to_char(enddate,'yyyy')=2020);


SELECT * FROM project;

SELECT projectno,max(startdate) FROM project WHERE state='진행'
GROUP BY max(startdate),projectno;

		SELECT * FROM 
		(SELECT projectno FROM project
			ORDER BY startdate DESC)
		WHERE ROWNUM <= 1

SELECT * FROM(
SELECT rownum cnt,a.*
FROM
(SELECT to_char(enddate,'yyyy') enddate, count(*) count
	FROM project
	GROUP BY to_char(enddate,'yyyy')
	ORDER BY enddate ASC ) a );


SELECT p.projectno,p.pname FROM project p ORDER BY startdate DESC


SELECT DISTINCT p.projectno,p.pname,p.startdate FROM project p,MEMBER m, issue i
		WHERE p.projectno=m.projectno AND i.empno like 201910002 
		AND p.state='진행' ORDER BY startdate DESC

SELECT DISTINCT to_char(enddate,'yyyy') enddate
	FROM project ORDER BY enddate DESC;

SELECT * FROM (SELECT count(*) kindno1 FROM project WHERE kindno=1 AND to_char(enddate,'yyyy')=2020), 
(SELECT count(*) kindno2 FROM project WHERE kindno=2 AND to_char(enddate,'yyyy')=2020),
(SELECT count(*) kindno3 FROM project WHERE kindno=3 AND to_char(enddate,'yyyy')=2020),
(SELECT count(*) kindno4 FROM project WHERE kindno=4 AND to_char(enddate,'yyyy')=2020),
(SELECT count(*) kindno5 FROM project WHERE kindno=5 AND to_char(enddate,'yyyy')=2020)

SELECT * FROM issue;


		SELECT i.issueno,p.pname, t.title tname, e.name, i.regdate, i.title,i.content,e2.name mname, 
		m.title mtitle, m.content mcontent,m.measuredate, i.state,i.projectno,i.taskno,m.measureno
		FROM issue i LEFT OUTER JOIN measure m ON i.issueno = m.issueno 
		JOIN project p ON i.projectno=p.projectno JOIN task t ON i.taskno=t.taskno JOIN emp e ON i.empno=e.empno
		LEFT OUTER JOIN emp e2 ON e2.empno=m.empno WHERE i.issueno=1
		
		
		SELECT i.issueno,p.pname, t.title tname, e.name, i.regdate, i.title,i.content,e2.name mname, 
		m.title mtitle, m.content mcontent,m.measuredate, i.state,i.projectno,i.taskno,m.measureno,
		i.codeno codeno,mc.name codename,mc.div codediv,mc.etc codeetc 
		FROM issue i LEFT OUTER JOIN measure m ON i.issueno = m.issueno 
		JOIN project p ON i.projectno=p.projectno JOIN task t ON i.taskno=t.taskno JOIN emp e ON i.empno=e.empno
		LEFT OUTER JOIN emp e2 ON e2.empno=m.empno 
		LEFT OUTER JOIN measurecode mc ON mc.codeno=i.codeno WHERE i.issueno=21;
SELECT * FROM issue;		


UPDATE issue SET title='제목2', content='내용' WHERE issueno=21

SELECT * FROM issue;

SELECT * FROM measure;

		SELECT i.issueno,p.pname, t.title tname, e.name, i.regdate, i.title,i.content,e2.name mname, 
		m.title mtitle, m.content mcontent,m.measuredate, i.state,i.projectno,i.taskno,m.measureno,
		i.codeno codeno,mc.name codename,mc.div codediv,mc.etc codeetc,m.empno mempno 
		FROM issue i LEFT OUTER JOIN measure m ON i.issueno = m.issueno 
		JOIN project p ON i.projectno=p.projectno JOIN task t ON i.taskno=t.taskno JOIN emp e ON i.empno=e.empno
		LEFT OUTER JOIN emp e2 ON e2.empno=m.empno 
		LEFT OUTER JOIN measurecode mc ON mc.codeno=i.codeno WHERE i.issueno=1
		
DELETE FROM measure WHERE measureno=46;
DELETE FROM issue WHERE issueno=43;

SELECT * FROM issue;
SELECT * FROM measure;

SELECT * FROM project;

INSERT INTO PROJECT VALUES(project_seq.nextval,4,'자바버거 배달 시스템 개발','201910001',5,1000000,to_date('2020-01-13'),to_date('2020-01-31'),1,'gantt.config.types.project',1,'종료');

UPDATE project SET startdate = to_date('2018-01-13'), enddate=to_date('2018-01-31') WHERE projectno=1;
UPDATE project SET startdate = to_date('2018-02-13'), enddate=to_date('2018-03-31') WHERE projectno=2;
UPDATE project SET startdate = to_date('2019-01-13'), enddate=to_date('2019-01-31') WHERE projectno=3;
UPDATE project SET startdate = to_date('2019-02-13'), enddate=to_date('2019-03-31') WHERE projectno=4;

SELECT * FROM project;

		SELECT i.issueno,p.pname, t.title tname, e.name, i.regdate, i.title,i.content,e2.name mname, 
		m.title mtitle, m.content mcontent,m.measuredate, i.state,i.projectno,i.taskno,m.measureno,
		i.codeno codeno,mc.name codename,mc.div codediv,mc.etc codeetc 
		FROM issue i LEFT OUTER JOIN measure m ON i.issueno = m.issueno 
		JOIN project p ON i.projectno=p.projectno JOIN task t ON i.taskno=t.taskno JOIN emp e ON i.empno=e.empno
		LEFT OUTER JOIN emp e2 ON e2.empno=m.empno 
		LEFT OUTER JOIN measurecode mc ON mc.codeno=i.codeno WHERE i.issueno=1
		
		SELECT * FROM measurecode;
		
	SELECT * FROM measurecode;

SELECT * FROM measure;
SELECT * FROM issue;

SELECT * FROM emp;

INSERT INTO measure VALUES (measure_seq.nextval,9,'201910001',sysdate,sysdate,'조치완료','전면 수정 불가 통보
관리자 페이지만 재작성 하기로 합의함');
UPDATE issue SET state='조치완료',codeno=1 WHERE issueno=9;

INSERT INTO issue (issueno,projectno,taskno,empno,regdate,title,content,state,codeno) VALUES (issue_seq.nextval,6,60016,'201910004',sysdate,
'사원관리 관련 이슈','전면 수정필요','조치완료',4);
INSERT INTO measure VALUES (measure_seq.nextval,10,'201910001',sysdate,sysdate,'조치완료','전면 수정 불가 통보
관리자 페이지만 재작성 하기로 합의함');
INSERT INTO issue (issueno,projectno,taskno,empno,regdate,title,content,state,codeno) VALUES (issue_seq.nextval,6,60016,'201910004',sysdate,
'사원관리 번호체계 변경','사원정보에 직급 추가됨','조치완료',4);
INSERT INTO measure VALUES (measure_seq.nextval,11,'201910001',sysdate,sysdate,'조치완료','직급 추가 확인
확인한 내용대로 진행');
INSERT INTO issue (issueno,projectno,taskno,empno,regdate,title,content,state) VALUES (issue_seq.nextval,6,60014,'201910002',sysdate,
'전체 Dashboard 차트 구성 변경','bar chart - 연도별 프로젝트 건수 / pie chart - 연도별 프로젝트 분류
radar chart - 조치유형별 조치코드 건수
위와 같이 변경 예정입니다','조치대기');



SELECT * FROM issue;


SELECT * FROM task WHERE projectno=6;

SELECT * FROM emp;

