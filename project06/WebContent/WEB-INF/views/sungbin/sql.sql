/* 공통 sql문 */

/*2020-05-11*/
/*부서 테이블 --- 형준*/   /*부서*/
INSERT INTO DEPT VALUES (10,'개발팀',null);
INSERT INTO DEPT VALUES (20,'디자인팀',null);
INSERT INTO DEPT VALUES (30,'재무관리팀',null);
INSERT INTO DEPT VALUES (40,'리스크관리팀',null);
INSERT INTO DEPT VALUES (50,'인사팀',null);

/*2020-05-11*/
/*직급 테이블 --- 형준*//*직급*/
INSERT INTO EMPRANK VALUES (1,'사원',null);
INSERT INTO EMPRANK VALUES (2,'대리',null);
INSERT INTO EMPRANK VALUES (3,'과장',null);
INSERT INTO EMPRANK VALUES (4,'차장',null);
INSERT INTO EMPRANK VALUES (5,'부장',null);
INSERT INTO EMPRANK VALUES (6,'대표이사',null);

/*2020-05-11*/
/*권한 테이블 --- 형준*/   /*권한*/
INSERT INTO AUTHOR VALUES (1,'NORMAL','프로젝트 참여멤버'); -- 로그인 시 개인 대시보드(작업관리메뉴)
INSERT INTO AUTHOR VALUES (2,'PM','프로젝트 관리자'); -- 로그인 시 프로젝트관리페이지
INSERT INTO AUTHOR VALUES (3,'ADMIN','PMS시스템 관리자'); -- 로그인 시 사원관리페이지
INSERT INTO AUTHOR VALUES (4, 'CEO', '전체 프로젝트 조회권한'); -- 로그인 시 종합대시보드 페이지

/*2020-05-11*/
/*사원테이블 --- 형준&현주*/   /*사원*/
INSERT INTO EMP VALUES ('ceo',null,6,4,'123456a!','박대표','master@ps.com',sysdate,'');
INSERT INTO EMP VALUES ('admin',50,3,3,'123456a!','박관리','new1234@ps.com',sysdate,'');

/* 2020-05-11 이윤배 프로젝트 정보*/

/* 2020-05-11 프로젝트 분류*/
INSERT INTO KIND VALUES(1,'웹 개발','웹페이지 개발');
INSERT INTO KIND VALUES(2,'앱 개발','어플리케이션 개발');
INSERT INTO KIND VALUES(3,'웹/앱 개발','웹페이지&어플리케이션 개발');
INSERT INTO KIND VALUES(4,'시스템 개발','시스템 개발');
INSERT INTO KIND VALUES(5,'프로그래밍','프로그램 개발');

/* 2020-05-11 프로젝트 예시회원*/
INSERT INTO EMP VALUES (2019||10||lpad(emp_sequence.nextval,3,0),10,3,2,'123456a!','이윤배','whale912@naver.com',to_date('2019-12-18'),'');
INSERT INTO EMP VALUES (2019||10||lpad(emp_sequence.nextval,3,0),10,2,1,'123456a!','임성빈','twins1234@ps.com',to_date('2019-12-18'),'');
INSERT INTO EMP VALUES (2019||10||lpad(emp_sequence.nextval,3,0),10,2,1,'123456a!','임진혁','sooho1234@ps.com',to_date('2019-12-18'),'');
INSERT INTO EMP VALUES (2019||10||lpad(emp_sequence.nextval,3,0),10,2,1,'123456a!','박현주','louna1234@ps.com',to_date('2019-12-18'),'');
INSERT INTO EMP VALUES (2019||10||lpad(emp_sequence.nextval,3,0),10,2,1,'123456a!','박형준','junny1234@ps.com',to_date('2019-12-18'),'');

/* 2020-05-11 프로젝트 데이터 */
/* 2020-05-18 Progress 진행률 부분 0.0~1.0단위로 변경 */
/* 2020-05-21 프로젝트 상태 회의내용 반영 변경 '진행 중'->'진행'  */
INSERT INTO PROJECT VALUES(project_seq.nextval,4,'자바버거 배달 시스템 개발','201910001',5,1000000,to_date('2020-01-13'),to_date('2020-01-31'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,3,'서울愛가면 웹페이지 개발','201910001',5,3000000,to_date('2020-02-01'),to_date('2020-02-28'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,3,'고래월드 웹/앱 사이트 개발','201910001',5,2000000,to_date('2020-03-01'),to_date('2020-03-27'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,3,'재능마켓 D.Y.L 웹/앱 사이트 개발','201910001',5,2000000,to_date('2020-03-28'),to_date('2020-04-24'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,3,'웹툰 플랫폼 벗꽃툰 웹/앱 사이트 개발','201910001',5,6000000,to_date('2020-04-25'),to_date('2020-05-01'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,4,'PMS시스템 PerfectSolution 개발','201910001',5,10000000,to_date('2020-05-02'),to_date('2020-06-08'),0.5,'gantt.config.types.project',1,'진행');

/* 2020-05-13 역할 테이블 추가  */
INSERT INTO ROLE VALUES(1,'PM','프로젝트 관리자');
INSERT INTO ROLE VALUES(2,'프론트엔드','프론트엔드 개발자');
INSERT INTO ROLE VALUES(3,'백엔드','백엔드 개발자');
INSERT INTO ROLE VALUES(4,'디자이너','웹&앱 디자이너');



/* 2020-05-11 프로젝트 멤버 데이터 */
/* 2020-05-18 간트차트를 위해 멤버테이블에 배경색, 글자색 컬럼데이터 추가 */
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910001,1,to_date('2020-01-13'),1,'#b8daff','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910002,1,to_date('2020-01-13'),3,'#c3e6cb','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910003,1,to_date('2020-01-13'),3,'#c3e6cb','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910004,1,to_date('2020-01-13'),2,'#ffc107','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910005,1,to_date('2020-01-13'),3,'#c3e6cb','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910001,2,to_date('2020-02-01'),1,'#b8daff','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910002,2,to_date('2020-02-01'),3,'#c3e6cb','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910003,2,to_date('2020-02-01'),3,'#c3e6cb','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910004,2,to_date('2020-02-01'),2,'#ffc107','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910005,2,to_date('2020-02-01'),3,'#c3e6cb','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910001,3,to_date('2020-03-01'),1,'#b8daff','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910002,3,to_date('2020-03-01'),3,'#c3e6cb','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910003,3,to_date('2020-03-01'),3,'#c3e6cb','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910004,3,to_date('2020-03-01'),2,'#ffc107','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910005,3,to_date('2020-03-01'),3,'#c3e6cb','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910001,4,to_date('2020-03-28'),1,'#b8daff','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910002,4,to_date('2020-03-28'),3,'#c3e6cb','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910003,4,to_date('2020-03-28'),3,'#c3e6cb','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910004,4,to_date('2020-03-28'),2,'#ffc107','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910005,4,to_date('2020-03-28'),3,'#c3e6cb','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910001,5,to_date('2020-04-25'),1,'#b8daff','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910002,5,to_date('2020-04-25'),3,'#c3e6cb','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910003,5,to_date('2020-04-25'),3,'#c3e6cb','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910004,5,to_date('2020-04-25'),2,'#ffc107','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910005,5,to_date('2020-04-25'),3,'#c3e6cb','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910001,6,to_date('2020-05-02'),1,'#b8daff','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910002,6,to_date('2020-05-02'),3,'#c3e6cb','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910003,6,to_date('2020-05-02'),3,'#c3e6cb','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910004,6,to_date('2020-05-02'),2,'#ffc107','#FFF');
INSERT INTO MEMBER (EMPNO, PROJECTNO, REGDATE, ROLENO, BACKGROUNDCOLOR, TEXTCOLOR) VALUES(201910005,6,to_date('2020-05-02'),3,'#c3e6cb','#FFF');

/* 2020-05-11 사원테이블 데이터*/
/* 2020-05-18 위의 프로젝트 예시를 위한 사원정보(우리조) 중복 제거 */
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||40||lpad(emp_sequence.nextval,3,0)),40,5,1,'123456a!','김사부','dr1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||30||lpad(emp_sequence.nextval,3,0)),30,5,1,'123456a!','사계절','season1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||20||lpad(emp_sequence.nextval,3,0)),20,4,1,'123456a!','조수석','design1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||10||lpad(emp_sequence.nextval,3,0)),10,3,2,'123456a!','김새로이','park1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||20||lpad(emp_sequence.nextval,3,0)),20,1,1,'123456a!','정앙드','0001234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||10||lpad(emp_sequence.nextval,3,0)),10,1,1,'123456a!','임길동','lim1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||40||lpad(emp_sequence.nextval,3,0)),40,1,1,'123456a!','김베이스','base1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||20||lpad(emp_sequence.nextval,3,0)),20,1,1,'123456a!','한차트','chart1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||30||lpad(emp_sequence.nextval,3,0)),30,1,1,'123456a!','김겨울','winter1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||20||lpad(emp_sequence.nextval,3,0)),20,1,1,'123456a!','김그림','art1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||50||lpad(emp_sequence.nextval,3,0)),50,1,1,'123456a!','김하이걸','higirl1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||40||lpad(emp_sequence.nextval,3,0)),40,1,1,'123456a!','김스크립','script1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||30||lpad(emp_sequence.nextval,3,0)),30,1,1,'123456a!','김봄','spring1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||50||lpad(emp_sequence.nextval,3,0)),50,1,1,'123456a!','김헬로','hello1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||40||lpad(emp_sequence.nextval,3,0)),40,1,1,'123456a!','김데타','data1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||40||lpad(emp_sequence.nextval,3,0)),40,1,1,'123456a!','김뷰','vue1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||30||lpad(emp_sequence.nextval,3,0)),30,1,1,'123456a!','김여름','summer1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||40||lpad(emp_sequence.nextval,3,0)),40,1,1,'123456a!','김자바','java1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||50||lpad(emp_sequence.nextval,3,0)),50,1,1,'123456a!','최인사','insa1234@ps.com',sysdate,'');
INSERT INTO EMP VALUES ((to_char(sysdate,'YYYY')||30||lpad(emp_sequence.nextval,3,0)),30,1,1,'123456a!','김가을','maple1234@ps.com',sysdate,'');

/* 2020-05-15 임진혁 프로젝트게시판 데이터추가*/

INSERT INTO pjboard VALUES (pjboard_seq.nextval,1,0,'201910002','프로젝트 방안','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,1,0,'201910003','프로젝트 계획','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,1,0,'201910004','프로젝트 공지','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,1,0,'201910004','프로젝트 역할분담','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,1,0,'201910005','프로젝트 변경내용','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,1,0,'201910005','프로젝트 변경사항','내용입니다',sysdate,sysdate,0,'N');

INSERT INTO pjboard VALUES (pjboard_seq.nextval,2,0,'201910002','프로젝트 방안','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,2,0,'201910003','프로젝트 계획','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,2,0,'201910004','프로젝트 공지','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,2,0,'201910005','프로젝트 역할분담','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,2,0,'201910005','프로젝트 변경내용','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,2,0,'201910004','프로젝트 변경사항','내용입니다',sysdate,sysdate,0,'N');

INSERT INTO pjboard VALUES (pjboard_seq.nextval,3,0,'201910002','프로젝트 방안','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,3,0,'201910003','프로젝트 계획','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,3,0,'201910004','프로젝트 공지','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,3,0,'201910005','프로젝트 역할분담','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,3,0,'201910004','프로젝트 변경내용','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,3,0,'201910005','프로젝트 변경사항','내용입니다',sysdate,sysdate,0,'N');

INSERT INTO pjboard VALUES (pjboard_seq.nextval,4,0,'201910002','프로젝트 방안','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,4,0,'201910003','프로젝트 계획','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,4,0,'201910004','프로젝트 공지','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,4,0,'201910005','프로젝트 역할분담','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,4,0,'201910004','프로젝트 변경내용','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,4,0,'201910002','프로젝트 변경사항','내용입니다',sysdate,sysdate,0,'N');

INSERT INTO pjboard VALUES (pjboard_seq.nextval,5,0,'201910002','프로젝트 방안','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,5,0,'201910003','프로젝트 계획','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,5,0,'201910004','프로젝트 공지','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,5,0,'201910003','프로젝트 역할분담','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,5,0,'201910002','프로젝트 변경내용','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,5,0,'201910001','프로젝트 변경사항','내용입니다',sysdate,sysdate,0,'N');

-- 2020-05-21 예시데이터를 위해서 모두 공지글로 변경 --
INSERT INTO pjboard VALUES (pjboard_seq.nextval,6,0,'201910002','프로젝트 방안','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,6,0,'201910003','프로젝트 계획','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,6,0,'201910004','프로젝트 공지','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,6,0,'201910003','프로젝트 역할분담','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,6,0,'201910002','프로젝트 변경내용','내용입니다',sysdate,sysdate,0,'N');
INSERT INTO pjboard VALUES (pjboard_seq.nextval,6,0,'201910001','프로젝트 변경사항','내용입니다',sysdate,sysdate,0,'N');

---------------------------------------------------------------------------------------------------------------------------


-- 20-05-16 Task 예시데이터
-- 2020-05-21 작업 상태 회의내용 반영 (공백제거)
INSERT INTO TASK VALUES(1||lpad(task_seq.nextval,4,0),1,0,'요구사항정의서 작성','201910002',
'클라이언트와 요구사항을 고려해 요구사항정의서 작성',
to_date('2020-01-14','YYYY-MM-DD'),
to_date('2020-01-14','YYYY-MM-DD'),
to_date('2020-01-16','YYYY-MM-DD'),
to_date('2020-01-14','YYYY-MM-DD'),
to_date('2020-01-15','YYYY-MM-DD'),
1,to_date('2020-01-15','YYYY-MM-DD'),
to_date('2020-01-16','YYYY-MM-DD'),'승인 요청합니다!',
'수고하셨습니다','',1,1,'승인완료');

INSERT INTO TASK VALUES(1||lpad(task_seq.nextval,4,0),1,10001,'클라이언트 면담','201910002',
'클라이언트와 요구사항을 고려해 요구사항정의서 작성',
to_date('2020-01-14','YYYY-MM-DD'),
to_date('2020-01-14','YYYY-MM-DD'),
to_date('2020-01-15','YYYY-MM-DD'),
to_date('2020-01-14','YYYY-MM-DD'),
to_date('2020-01-15','YYYY-MM-DD'),
1,to_date('2020-01-15','YYYY-MM-DD'),
to_date('2020-01-15','YYYY-MM-DD'),'승인 요청합니다!',
'수고하셨습니다','',1,1,'승인완료');

INSERT INTO TASK VALUES(1||lpad(task_seq.nextval,4,0),1,10001,'요구사항정의서 작성','201910002',
'클라이언트와 요구사항을 고려해 요구사항정의서 작성',
to_date('2020-01-14','YYYY-MM-DD'),
to_date('2020-01-15','YYYY-MM-DD'),
to_date('2020-01-15','YYYY-MM-DD'),
to_date('2020-01-15','YYYY-MM-DD'),
to_date('2020-01-15','YYYY-MM-DD'),
1,to_date('2020-01-15','YYYY-MM-DD'),
to_date('2020-01-15','YYYY-MM-DD'),'승인 요청합니다!',
'수고하셨습니다','',1,1,'승인완료');


-- 0520 임성빈 조치코드 데이터 , 이슈/조치 데이터
INSERT INTO measurecode(codeno,div,name) VALUES (1,1,'회피'); 
INSERT INTO measurecode(codeno,div,name) VALUES (2,1,'전가'); 
INSERT INTO measurecode(codeno,div,name) VALUES (3,1,'완화'); 
INSERT INTO measurecode(codeno,div,name) VALUES (4,1,'수용'); 
INSERT INTO measurecode(codeno,div,name) VALUES (5,2,'활용'); 
INSERT INTO measurecode(codeno,div,name) VALUES (6,2,'공유'); 
INSERT INTO measurecode(codeno,div,name) VALUES (7,2,'증대'); 
INSERT INTO measurecode(codeno,div,name) VALUES (8,2,'수용'); 

INSERT INTO issue (issueno,projectno,taskno,empno,regdate,title,content,state) VALUES (issue_seq.nextval,1,10002,'201910002',sysdate,
'클라이언트 미팅 일자 변동','클라이언트가 미팅일자를 2주뒤로 연기하길 바람','조치대기');
INSERT INTO issue (issueno,projectno,taskno,empno,regdate,title,content,state) VALUES (issue_seq.nextval,1,10003,'201910002',sysdate,
'요구사항정의서 관련','클라이언트 측이 요구사항정의서 전면수정 요구 함','조치대기');

INSERT INTO measure VALUES (measure_seq.nextval,1,'201910001',sysdate,sysdate,'미팅 일자 변동 확인','2주 뒤 연기 확인');
INSERT INTO measure VALUES (measure_seq.nextval,2,'201910001',sysdate,sysdate,'조치완료','전면 수정 불가 통보
관리자 페이지만 재작성 하기로 합의함');
UPDATE issue SET state='조치완료', codeno=4 WHERE issueno=1;
UPDATE issue SET state='조치완료', codeno=3 WHERE issueno=2;

-- 2020-05-21 이윤배 작업 예시데이터 추가 -------------

INSERT INTO TASK VALUES(6||lpad(task_seq.nextval,4,0),6,0,'요구사항정의서 작성','201910001',
'클라이언트와 요구사항을 고려해 요구사항정의서 작성',
to_date('2020-05-02','YYYY-MM-DD'),
to_date('2020-05-02','YYYY-MM-DD'),
to_date('2020-05-04','YYYY-MM-DD'),
to_date('2020-05-02','YYYY-MM-DD'),
to_date('2020-05-04','YYYY-MM-DD'),
1,to_date('2020-05-04','YYYY-MM-DD'),
to_date('2020-05-04','YYYY-MM-DD'),'승인 요청합니다!',
'수고하셨습니다','',1,1,'승인완료');
INSERT INTO TASK VALUES(6||lpad(task_seq.nextval,4,0),6,0,'화면설계 ','201910001',
'구현할 화면을 설계',
to_date('2020-05-04','YYYY-MM-DD'),
to_date('2020-05-04','YYYY-MM-DD'),
to_date('2020-05-07','YYYY-MM-DD'),
to_date('2020-05-04','YYYY-MM-DD'),
to_date('2020-05-07','YYYY-MM-DD'),
1,to_date('2020-05-07','YYYY-MM-DD'),
to_date('2020-05-07','YYYY-MM-DD'),'승인 요청합니다!',
'수고하셨습니다','',1,1,'승인완료');
INSERT INTO TASK VALUES(6||lpad(task_seq.nextval,4,0),6,60005,'화면설계(로그인/회원가입) ','201910005',
'로그인/회원가입페이지 화면 설계',
to_date('2020-05-04','YYYY-MM-DD'),
to_date('2020-05-04','YYYY-MM-DD'),
to_date('2020-05-07','YYYY-MM-DD'),
to_date('2020-05-04','YYYY-MM-DD'),
to_date('2020-05-07','YYYY-MM-DD'),
1,to_date('2020-05-07','YYYY-MM-DD'),
to_date('2020-05-07','YYYY-MM-DD'),'승인 요청합니다!',
'수고하셨습니다','',1,1,'승인완료');
INSERT INTO TASK VALUES(6||lpad(task_seq.nextval,4,0),6,60005,'화면설계(프로젝트/작업) ','201910001',
'프로젝트/작업페이지 화면 설계',
to_date('2020-05-04','YYYY-MM-DD'),
to_date('2020-05-04','YYYY-MM-DD'),
to_date('2020-05-07','YYYY-MM-DD'),
to_date('2020-05-04','YYYY-MM-DD'),
to_date('2020-05-07','YYYY-MM-DD'),
1,to_date('2020-05-07','YYYY-MM-DD'),
to_date('2020-05-07','YYYY-MM-DD'),'승인 요청합니다!',
'수고하셨습니다','',1,1,'승인완료');
INSERT INTO TASK VALUES(6||lpad(task_seq.nextval,4,0),6,60005,'화면설계(대시보드/리스크관리) ','201910002',
'대시보드/리스크관리 화면 설계',
to_date('2020-05-04','YYYY-MM-DD'),
to_date('2020-05-04','YYYY-MM-DD'),
to_date('2020-05-07','YYYY-MM-DD'),
to_date('2020-05-04','YYYY-MM-DD'),
to_date('2020-05-07','YYYY-MM-DD'),
1,to_date('2020-05-07','YYYY-MM-DD'),
to_date('2020-05-07','YYYY-MM-DD'),'승인 요청합니다!',
'수고하셨습니다','',1,1,'승인완료');
INSERT INTO TASK VALUES(6||lpad(task_seq.nextval,4,0),6,60005,'화면설계(커뮤니케이션) ','201910003',
'커뮤니케이션페이지 화면 설계',
to_date('2020-05-04','YYYY-MM-DD'),
to_date('2020-05-04','YYYY-MM-DD'),
to_date('2020-05-07','YYYY-MM-DD'),
to_date('2020-05-04','YYYY-MM-DD'),
to_date('2020-05-07','YYYY-MM-DD'),
1,to_date('2020-05-07','YYYY-MM-DD'),
to_date('2020-05-07','YYYY-MM-DD'),'승인 요청합니다!',
'수고하셨습니다','',1,1,'승인완료');
INSERT INTO TASK VALUES(6||lpad(task_seq.nextval,4,0),6,60005,'화면설계(사원관리) ','201910004',
'사원관리페이지 화면 설계',
to_date('2020-05-04','YYYY-MM-DD'),
to_date('2020-05-04','YYYY-MM-DD'),
to_date('2020-05-07','YYYY-MM-DD'),
to_date('2020-05-04','YYYY-MM-DD'),
to_date('2020-05-07','YYYY-MM-DD'),
1,to_date('2020-05-07','YYYY-MM-DD'),
to_date('2020-05-07','YYYY-MM-DD'),'승인 요청합니다!',
'수고하셨습니다','',1,1,'승인완료');

INSERT INTO TASK VALUES(6||lpad(task_seq.nextval,4,0),6,0,'화면구현 ','201910001',
'설계한 화면을 구현',
to_date('2020-05-08','YYYY-MM-DD'),
to_date('2020-05-08','YYYY-MM-DD'),
to_date('2020-05-29','YYYY-MM-DD'),
to_date('2020-05-08','YYYY-MM-DD'),
to_date('2020-05-29','YYYY-MM-DD'),
0,null,null,'',
'','',1,1,'배정완료');

INSERT INTO TASK VALUES(6||lpad(task_seq.nextval,4,0),6,60011,'화면구현(로그인/회원가입) ','201910005',
'로그인/회원가입페이지 화면 구현',
to_date('2020-05-08','YYYY-MM-DD'),
to_date('2020-05-08','YYYY-MM-DD'),
to_date('2020-05-29','YYYY-MM-DD'),
to_date('2020-05-08','YYYY-MM-DD'),
to_date('2020-05-29','YYYY-MM-DD'),
0,null,null,'',
'','',1,1,'배정완료');
INSERT INTO TASK VALUES(6||lpad(task_seq.nextval,4,0),6,60011,'화면구현(프로젝트/작업) ','201910001',
'프로젝트/작업페이지 화면 구현',
to_date('2020-05-08','YYYY-MM-DD'),
to_date('2020-05-08','YYYY-MM-DD'),
to_date('2020-05-29','YYYY-MM-DD'),
to_date('2020-05-08','YYYY-MM-DD'),
to_date('2020-05-29','YYYY-MM-DD'),
0,null,null,'',
'','',1,1,'배정완료');
INSERT INTO TASK VALUES(6||lpad(task_seq.nextval,4,0),6,60011,'화면구현(대시보드/리스크관리) ','201910002',
'대시보드/리스크관리 화면 구현',
to_date('2020-05-08','YYYY-MM-DD'),
to_date('2020-05-08','YYYY-MM-DD'),
to_date('2020-05-29','YYYY-MM-DD'),
to_date('2020-05-08','YYYY-MM-DD'),
to_date('2020-05-29','YYYY-MM-DD'),
0,null,null,'',
'','',1,1,'배정완료');
INSERT INTO TASK VALUES(6||lpad(task_seq.nextval,4,0),6,60011,'화면구현(커뮤니케이션) ','201910003',
'커뮤니케이션페이지 화면 구현',
to_date('2020-05-08','YYYY-MM-DD'),
to_date('2020-05-08','YYYY-MM-DD'),
to_date('2020-05-29','YYYY-MM-DD'),
to_date('2020-05-08','YYYY-MM-DD'),
to_date('2020-05-29','YYYY-MM-DD'),
0,null,null,'',
'','',1,1,'배정완료');
INSERT INTO TASK VALUES(6||lpad(task_seq.nextval,4,0),6,60011,'화면구현(사원관리) ','201910004',
'사원관리페이지 화면 구현',
to_date('2020-05-08','YYYY-MM-DD'),
to_date('2020-05-08','YYYY-MM-DD'),
to_date('2020-05-29','YYYY-MM-DD'),
to_date('2020-05-08','YYYY-MM-DD'),
to_date('2020-05-29','YYYY-MM-DD'),
0,null,null,'',
'','',1,1,'배정완료');

-- 

-- 0521 이슈/조치 데이터 
INSERT INTO issue (issueno,projectno,taskno,empno,regdate,title,content,state,codeno) VALUES (issue_seq.nextval,6,60008,'201910002',sysdate,
'대시보드 설계 내용 일부 변경','새로 작업함','조치완료',4);
INSERT INTO issue (issueno,projectno,taskno,empno,regdate,title,content,state,codeno) VALUES (issue_seq.nextval,6,60006,'201910005',sysdate,
'로그인 페이지 설계 변동사항','기존 템플릿 일부 변경해서 적용할 예정입니다 ','조치완료',7);
INSERT INTO issue (issueno,projectno,taskno,empno,regdate,title,content,state) VALUES (issue_seq.nextval,6,60014,'201910002',sysdate,
'리스크관리 조치코드 새로 추가적용','위험/기회로 분류해서 조치에 따른 코드 새로 적용','조치대기');
INSERT INTO measure VALUES (measure_seq.nextval,3,'201910001',sysdate,sysdate,'설계변동 확인','수용');
INSERT INTO measure VALUES (measure_seq.nextval,4,'201910001',sysdate,sysdate,'템플릿 변경 적용확인','추후에도 변경된 템플릿 그대로 적용해서 작업');

UPDATE issue SET state='조치완료',codeno=5 WHERE issueno=5;
INSERT INTO measure VALUES (measure_seq.nextval,5,'201910001',sysdate,sysdate,'조치완료','위험은 분류1
기회는 분류2로 코드적용');
INSERT INTO issue (issueno,projectno,taskno,empno,regdate,title,content,state) VALUES (issue_seq.nextval,6,60014,'201910002',sysdate,
'대시보드 구현 작업 지연','기존 템플릿에 없는 차트 새로 적용위해 작업 다소 지연됨','조치대기');


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

UPDATE measurecode SET etc='회피 : 부정적 위험이 상당히 커서 수용 가능한 수준을 넘으면 적극적 조치를 취한다' WHERE codeno=1;
UPDATE measurecode SET etc='전가 : 위협을 관리할 책임을 제삼자와 공유하고 대가로서 프리미엄을 지급한다' WHERE codeno=2;
UPDATE measurecode SET etc='완화 : 부정적 위험의 수준을 적정 수준까지 낮추기 위한 대응 방안을 수립한다' WHERE codeno=3;
UPDATE measurecode SET etc='수용 : 우선 순위가 낮거나 타당한 대응 방안이 없는 부정적 위험의 존재를 인지하지만 어떠한 사전 조치도 취하지 않는다' WHERE codeno=4;
UPDATE measurecode SET etc='활용 : 긍정적 위험이 상당히 커서 수용 가능한 수준을 넘으면 적극적 조치를 취한다' WHERE codeno=5;
UPDATE measurecode SET etc='공유 : 기회를 관리할 책임을 제삼자와 공유하고 그 성과를 함께 나누기로 한다' WHERE codeno=6;
UPDATE measurecode SET etc='증대 : 긍정적 위험의 수준을 적정 수준으로 높이기 위한 대응 방안을 수립한다' WHERE codeno=7;
UPDATE measurecode SET etc='수용 : 우선 순위가 낮거나 타당한 대응 방안이 없는 긍정적 위험의 존재를 인지하지만 어떠한 사전 조치도 취하지 않는다' WHERE codeno=8;

--2020-05-24 이윤배 작업 분할 테이블 데이터 추가

INSERT INTO TASK_DIVISION VALUES (5000||LPAD(task_division_seq.nextval,4,0),60014,6,'간트차트 구성',to_date('2020-05-08','YYYY-MM-DD'),to_date('2020-05-10','YYYY-MM-DD'),0,'간트차트 템플릿결정 후 DB연동하여 구현');

-- 2020-06-02  이윤배 예전 프로젝트 추가

INSERT INTO PROJECT VALUES(project_seq.nextval,2,'앱개발 프로젝트','201910001',5,1000000,to_date('2018-01-01'),to_date('2018-01-31'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,2,'앱개발 프로젝트2','201910001',5,1000000,to_date('2018-02-01'),to_date('2018-02-28'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,2,'앱개발 프로젝트3','201910001',5,1000000,to_date('2018-03-01'),to_date('2018-03-31'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,2,'앱개발 프로젝트4','201910001',5,1000000,to_date('2018-04-01'),to_date('2018-04-30'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,2,'앱개발 프로젝트5','201910001',5,1000000,to_date('2018-05-01'),to_date('2018-05-31'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,2,'앱개발 프로젝트6','201910001',5,1000000,to_date('2018-06-01'),to_date('2018-06-30'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,2,'앱개발 프로젝트7','201910001',5,1000000,to_date('2018-07-01'),to_date('2018-07-31'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,2,'앱개발 프로젝트8','201910001',5,1000000,to_date('2018-08-01'),to_date('2018-08-31'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,2,'앱개발 프로젝트9','201910001',5,1000000,to_date('2018-09-01'),to_date('2018-09-30'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,2,'앱개발 프로젝트10','201910001',5,1000000,to_date('2018-10-01'),to_date('2018-10-31'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,2,'앱개발 프로젝트11','201910001',5,1000000,to_date('2018-11-01'),to_date('2018-11-30'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,2,'앱개발 프로젝트12','201910001',5,1000000,to_date('2018-12-01'),to_date('2018-12-31'),1,'gantt.config.types.project',1,'종료');

INSERT INTO PROJECT VALUES(project_seq.nextval,1,'웹개발 프로젝트','201910001',5,1000000,to_date('2019-01-01'),to_date('2019-01-31'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,1,'웹개발 프로젝트2','201910001',5,1000000,to_date('2019-02-01'),to_date('2019-02-28'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,1,'웹개발 프로젝트3','201910001',5,1000000,to_date('2019-03-01'),to_date('2019-03-31'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,1,'웹개발 프로젝트4','201910001',5,1000000,to_date('2019-04-01'),to_date('2019-04-30'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,1,'웹개발 프로젝트5','201910001',5,1000000,to_date('2019-05-01'),to_date('2019-05-31'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,1,'웹개발 프로젝트6','201910001',5,1000000,to_date('2019-06-01'),to_date('2019-06-30'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,1,'웹개발 프로젝트7','201910001',5,1000000,to_date('2019-07-01'),to_date('2019-07-31'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,1,'웹개발 프로젝트8','201910001',5,1000000,to_date('2019-08-01'),to_date('2019-08-31'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,1,'웹개발 프로젝트9','201910001',5,1000000,to_date('2019-09-01'),to_date('2019-09-30'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,1,'웹개발 프로젝트10','201910001',5,1000000,to_date('2019-10-01'),to_date('2019-10-31'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,1,'웹개발 프로젝트11','201910001',5,1000000,to_date('2019-11-01'),to_date('2019-11-30'),1,'gantt.config.types.project',1,'종료');
INSERT INTO PROJECT VALUES(project_seq.nextval,1,'웹개발 프로젝트12','201910001',5,1000000,to_date('2019-12-01'),to_date('2019-12-31'),1,'gantt.config.types.project',1,'종료');



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


INSERT INTO pjreply VALUES (pjreply_seq.nextval,6,201910001,'댓글테스트1',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,6,201910001,'댓글테스트2',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,6,201910001,'댓글테스트3',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,6,201910001,'댓글테스트4',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,6,201910001,'댓글테스트5',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,6,201910001,'댓글테스트6',sysdate);

INSERT INTO pjreply VALUES (pjreply_seq.nextval,5,201910001,'댓글테스트1',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,5,201910001,'댓글테스트2',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,5,201910001,'댓글테스트3',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,5,201910001,'댓글테스트4',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,5,201910001,'댓글테스트5',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,5,201910001,'댓글테스트6',sysdate);

INSERT INTO pjreply VALUES (pjreply_seq.nextval,4,201910001,'댓글테스트1',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,4,201910001,'댓글테스트2',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,4,201910001,'댓글테스트3',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,4,201910001,'댓글테스트4',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,4,201910001,'댓글테스트5',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,4,201910001,'댓글테스트6',sysdate);

INSERT INTO pjreply VALUES (pjreply_seq.nextval,3,201910001,'댓글테스트1',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,3,201910001,'댓글테스트2',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,3,201910001,'댓글테스트3',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,3,201910001,'댓글테스트4',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,3,201910001,'댓글테스트5',sysdate);
INSERT INTO pjreply VALUES (pjreply_seq.nextval,3,201910001,'댓글테스트6',sysdate);
