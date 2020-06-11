# PerfectSolution

PMS시스템 프로젝트 'PerfectSolution'

참여자 : 이윤배, 임성빈, 박형준, 임진혁, 박현주

# 파일 위치 안내 

다국어 처리 파일 : project06\src\project06\message

MVC 자바파일 : project06\src\project06\mvc
  - controller : Controller 클래스
  - repository : DAO클래스
  - service : Service클래스
  - vo : VO객체 클래스
 
Spring lib ChattingHandler, DownloadViwer : project06\src\project06\util

Mybatis xml파일 : project06\src\resource\mapper
  - spring.xml : Mybatis공통설정파일
  - xxxMapper.xml : 각 파트별 sql mapping xml파일

* 공통 설정파일(DB정보/업로드경로) : project06\src\resource\properties 

css, js 공통 파일 : project06\WebContent\a00_comm

View단(JSP파일) : project06\WebContent\WEB-INF\views
  - 각자 이름 폴더명(각자 담당 view) : 박형준(hyeongjun), 박현주(hyeonju), 임진혁(jinhyeok), 임성빈(sungbin), 이윤배(yunbae)
  - views 하위 파일은 공통 view 또는 sql파일
  - sql파일 : table_sequence_sql.sql - 공통 테이블, Sequence sql문
              sql.sql - 공통(테스트) 데이터 Insert sql문
  - PerfectSolution.exerd : 데이터베이스 ERD설계파일      
  



