<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<%--

--%>
<html>
<head>
<meta charset="${encoding}">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${path}/assets/vendor/bootstrap/css/bootstrap.min.css">
<link href="${path}/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
<link rel="stylesheet" href="${path}/assets/libs/css/style.css">
<link rel="stylesheet" href="${path}/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
<link rel="stylesheet" href="${path}/assets/vendor/charts/chartist-bundle/chartist.css">
<link rel="stylesheet" href="${path}/assets/vendor/charts/morris-bundle/morris.css">
<link rel="stylesheet" href="${path}/assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
<link rel="stylesheet" href="${path}/assets/vendor/charts/c3charts/c3.css">
<link rel="stylesheet" href="${path}/assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
<link href='${path}/assets/vendor/full-calendar/css/fullcalendar.css' rel='stylesheet' />
<link href='${path}/assets/vendor/full-calendar/css/fullcalendar.print.css' rel='stylesheet' media='print' />
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<link rel="stylesheet" href="${path}/a00_com/dhtmlxgantt.css?v=7.0.2">
<link rel="stylesheet" href="${path}/a00_com/controls_styles.css?v=7.0.2">
<link href="${path}/assets/vendor/fonts/circular-std/style.css?v=7.0.2" rel="stylesheet">
<style type="text/css">
	th{background-color:#E6E6F2}
	.gantt_task_progress {text-align: left;padding-left: 10px;box-sizing: border-box;
			color: white;font-weight: bold;}
	.gantt_task_line.gantt_project{color:white;}
	.gantt_side_content{color:#333;}
	.summary-bar{font-weight: bold;}
	.gantt_resource_task .gantt_task_content{color:inherit;}
	.gantt_resource_task .gantt_task_progress{background-color:rgba(33,33,33,0.3);}
	.gantt_cell:nth-child(1) .gantt_tree_content{
			border-radius: 16px;
			width: 100%;
			height: 80%;
	}
	ul{margin:0;padding:0}
	ul>li{list-style:none;}
	.gantt_cell{padding-top:5px;line-height:23.19px;}
	.gantt_tree_content{line-height:23.19px;}
	#cruTask{display:none;}
	#joinMember{display:none;}
</style>
</head>
<body>        
	<!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">        
		<jsp:include page="../nav_bar.jsp"/>
		<jsp:include page="../menu_bar.jsp"/>
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div id="wholeContainer" class="dashboard-wrapper" >
            <div class="dashboard-ecommerce">
                <div id="mainContainer" class="container-fluid dashboard-content " style="min-height:792px;" >
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                            	<!-- 페이지 타이틀 -->
                                <h2 class="pageheader-title">프로젝트 상세</h2>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><span class="breadcrumb-link">프로젝트</span></li>
                                            <li class="breadcrumb-item"><a href="${path}/project.do?method=main" class="breadcrumb-link">프로젝트 관리</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">프로젝트 상세</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end pageheader  -->
                    <!-- ============================================================== -->
                    <div class="ecommerce-widget">
                    	<div class="row">                            
                        	<div id="mainWrapper" class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
	                          	<div class="tab-outline">
	                                <ul class="nav nav-tabs" id="myTab2" role="tablist">
	                                    <li class="nav-item">
	                                        <a class="nav-link active" id="tab-outline-one" data-toggle="tab" href="#outline-one" role="tab" aria-controls="home" aria-selected="true">프로젝트 정보</a>
	                                    </li>
	                                    <li class="nav-item">
	                                        <a class="nav-link" id="tab-outline-two" data-toggle="tab" href="#outline-two" role="tab" aria-controls="profile" aria-selected="false">작업관리</a>
	                                    </li>
	                                    <li class="nav-item">
	                                        <a class="nav-link" id="tab-outline-three" data-toggle="tab" href="#outline-three" role="tab" aria-controls="contact" aria-selected="false">멤버 관리</a>
	                                    </li>
	                                    <li class="nav-item">
	                                        <a class="nav-link" id="tab-outline-four" data-toggle="tab" href="#outline-four" role="tab" aria-controls="contact" aria-selected="false">이슈&리스크</a>
	                                    </li>
	                                    <li class="nav-item">
	                                        <a class="nav-link" id="tab-outline-five" data-toggle="tab" href="#outline-five" role="tab" aria-controls="contact" aria-selected="false">프로젝트 결과물</a>
	                                    </li>
	                                </ul>
	                                <div class="tab-content" id="myTabContent2">
	                                    <div class="tab-pane fade show active" id="outline-one" role="tabpanel" aria-labelledby="tab-outline-one">
	                                        <!-- 첫 번째 탭 내용 -->
	                                        <div class="row">
	                                        	<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12" style="width:50%">
					                                <div class="card" style="height:505px">
					                                    <div class="card-header" style="font-weight:bold;line-height:34px;">
					                                    	프로젝트 정보
					                                    	<input type="button" id="updateProject" value="수정" class="btn btn-dark" style="float:right;"/> 
					                                    </div>
					                                    <div class="card-body" style="height">
					                                        <table class="table table-bordered">
						                                        <tbody>
						                                            <tr>
						                                                <th style="font-weight:bold;width:40%">프로젝트명</th>
						                                                <td>${project.pname}</td>
						                                            </tr>
						                                            <tr>
						                                                <th style="font-weight:bold">프로젝트 분류</th>
						                                                <td class="text-center">${project.kname}</td>
						                                            </tr>
						                                            <tr>
						                                                <th style="font-weight:bold">프로젝트 상태</th>
						                                                <td class="text-center">${project.state}</td>
						                                            </tr>
						                                            <tr>
						                                                <th style="font-weight:bold">프로젝트 담당자</th>
						                                                <td class="text-center">${project.name}</td>
						                                            </tr>
						                                            <tr>
						                                                <th style="font-weight:bold">프로젝트 기간</th>
						                                                <td>${project.startdate} ~ ${project.enddate}</td>
						                                            </tr>
						                                            <tr>
						                                                <th style="font-weight:bold">프로젝트 인원</th>
						                                                <td class="text-right">${project.personnel}명</td>
						                                            </tr>
						                                            <tr>
						                                                <th style="font-weight:bold">프로젝트 예산</th>
						                                                <td class="text-right"><fmt:formatNumber type="currency" value="${project.budget}"/></td>
						                                            </tr>
						                                        </tbody>
						                                    </table>
					                                    </div>
					                                </div>
					                            </div>
					                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12" style="width:50%">
					                                <div class="card" style="height:505px">
					                                    <div class="card-header" style="font-weight:bold;line-height:34px;">
					                                    	프로젝트 멤버(총 ${project.personnel}명)				                                    	
					                                    </div>
					                                    <div class="card-body" style="height:400px">
					                                    	<table class="table">
						                                        <thead>
						                                            <tr>
						                                                <th scope="col">이름</th>
						                                                <th scope="col">등록일</th>
						                                                <th scope="col">역할</th>
						                                            </tr>
						                                        </thead>
						                                        <tbody>
						                                        	<c:forEach var="member" items="${mlist}">
						                                            <tr 
						                                            <c:if test="${member.rname.equals('PM')}">
						                                            class="table-primary"
						                                            </c:if>
						                                            <c:if test="${member.rname.equals('백엔드')}">
						                                            class="table-success"
						                                            </c:if>
						                                            <c:if test="${member.rname.equals('프론트엔드')}">
						                                            class="bg-warning"
						                                            </c:if>
						                                            >
						                                                <td>${member.name}</td>
						                                                <td>${member.regdate}</td>
						                                                <td>${member.rname}</td>
						                                            </tr>
						                                            </c:forEach>					                                            
						                                        </tbody>
						                                    </table>
						                                    <form id="pageFr" method="post" action="${path}/issue.do?method=dashDetail&projectno=${project.projectno}">
						                                    	<input type="hidden" name="curPage" value="${memMA.curPage}">
						                                    </form>
						                                    <div style="width:100%;height:50px;text-align:right;margin-top:10px;">
						                                    	<div id="pervMem" class="fas fa-angle-left" 
						                                    	style="background-color:#e6e6f2;border:1px solid #e6e6f2;
						                                    	padding:5px;cursor:pointer">
						                                    	</div>
						                                    	<div id="nextMem" class="fas fa-angle-right" 
						                                    	style="background-color:#e6e6f2;border:1px solid #e6e6f2;
						                                    	padding:5px;cursor:pointer">
						                                    	</div>
						                                    </div>
						                                   	
					                                	</div>
					                            	</div>
					                            </div>   
					                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12" style="width:50%">
					                                <div class="card" style="height:505px">
					                                    <div class="card-header" style="font-weight:bold">
					                                    	프로젝트 이슈&리스크 
					                                    </div>
					                                    <div class="card-body" style="height:414px;padding-top:40px;">
					                                    	<div id="c3chart_pie"></div>
					                                	</div>
					                            	</div>
					                            </div>                                             
	                                        </div>
	                                        <div class="row">
	                                        	<div class="col-xl-12 col-lg-10 col-md-6 col-sm-12 col-12">
	                                        		<div class="card">
	                                        			<div class="card-header" style="font-weight:bold;">
	                                        				간트차트
	                                        			</div>
	                                        			<div class="card-body">
	                                        				<div id="gantt_here" style='width:100%;'></div>
	                                        			</div>
	                                        		</div>
	                                        	</div>	
	                                        </div>                                        
	                                    </div>                                    
	                                    <div class="tab-pane fade" id="outline-two" role="tabpanel" aria-labelledby="tab-outline-two">
	                                        <!-- 두 번째 탭 내용 -->
	                                        <div class="row">
		                                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
		                                        	<div class="card">
		                                        		<div class="card-header">
		                                        			작업 배정
		                                        		</div>
		                                        		<div id="ganttwrap" class="card-body">	                                        			
		                                        			<div id="gantt_here2" style='width:100%;'></div>
		                                        		</div>
		                                        	</div>
		                                        
		                                        </div>   
	                                        </div>                                     
	                                    </div>
	                                    <div class="tab-pane fade" id="outline-three" role="tabpanel" aria-labelledby="tab-outline-three">
	                                        <!-- 세 번째 탭 내용 -->
	                                        <div class="row">
		                                        <div class="col-xl-5 col-lg-12 col-md-12 col-sm-12 col-12">
		                                        	<div class="card">
		                                        		<div class="card-header">
		                                        			프로젝트 참여 가능 사원
		                                        		</div>
		                                        		<div class="card-body">
		                                        			<div style="background-color:#FFF;height:600px;overflow:auto;border:1px solid #E6E6F2">
		                                        				<ul id="joinable_list">
		                                        				</ul>
		                                        			</div>
		                                        		</div>
		                                        	</div>
		                                        </div>
		                                        <div class="col-xl-2 col-lg-12 col-md-12 col-sm-12 col-12">
		                                        	<div style="width:100px;height:130px;position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);">
		                                        		<input id="addMem" disabled="disabled" type="button" class="btn btn-primary" value="추가" style="width:100%;height:50px;margin-bottom:30px"/>
		                                        		<input id="delMem" disabled="disabled" type="button" class="btn btn-danger" value="삭제" style="width:100%;height:50px;"/>
		                                        	</div>                                     
		                                        </div>
		                                        <div class="col-xl-5 col-lg-12 col-md-12 col-sm-12 col-12">
		                                        	<div class="card">
		                                        		<div class="card-header">
		                                        			프로젝트 멤버
		                                        		</div>
		                                        		<div class="card-body">
		                                        			<div style="background-color:#FFF;height:600px;overflow:auto;border:1px solid #E6E6F2">
		                                        				<ul id="mem_list">
		                                        				</ul>
		                                        			</div>
		                                        		</div>
		                                        	</div>
		                                        </div>
		                                    </div>	
	                                    </div>
	                                    <div class="tab-pane fade" id="outline-four" role="tabpanel" aria-labelledby="tab-outline-four">
	                                        <!-- 네 번째 탭 내용 -->
	                                        	넷
	                                    </div>
	                                    <div class="tab-pane fade" id="outline-five" role="tabpanel" aria-labelledby="tab-outline-five">
	                                        <!-- 다섯 번째 탭 내용 -->
	                                        	다섯
	                                    </div>
	                                </div>
	                            </div>
                        	</div>  
                    	</div>                        
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <div class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                             Copyright © 2018 Concept. All rights reserved. Dashboard by <a href="https://colorlib.com/wp/">Colorlib</a>.
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="text-md-right footer-links d-none d-sm-block">
                                <a href="javascript: void(0);">About</a>
                                <a href="javascript: void(0);">Support</a>
                                <a href="javascript: void(0);">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- end wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper  -->
    <!-- ============================================================== -->
    
    
    
    <!-- Optional JavaScript -->
    <!-- jquery 3.3.1 -->
    <script src="${path}/a00_com/jquery-3.4.1.js"></script>
    <!-- bootstap bundle js -->
    <script src="${path}/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <!-- slimscroll js -->
    <script src="${path}/assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <!-- main js -->
    <script src="${path}/assets/libs/js/main-js.js"></script>
    <!-- sparkline js -->
    <script src="${path}/assets/vendor/charts/sparkline/jquery.sparkline.js"></script>
    <!-- morris js -->
    <script src="${path}/assets/vendor/charts/morris-bundle/raphael.min.js"></script>
    <!-- full calendar js -->
	<script src='${path}/assets/vendor/full-calendar/js/moment.min.js'></script>
	<script src='${path}/assets/vendor/full-calendar/js/fullcalendar.js'></script>
	<script src='${path}/assets/vendor/full-calendar/js/jquery-ui.min.js'></script>
	<script src='${path}/assets/vendor/full-calendar/js/calendar.js'></script>
	<!-- chart -->	
    <script src="${path}/assets/vendor/charts/c3charts/c3.min.js"></script>
    <script src="${path}/assets/vendor/charts/c3charts/d3-5.4.0.min.js"></script>
	<script src="${path}/a00_com/dhtmlxgantt.js?v=7.0.2"></script>
	<script src="${path}/a00_com/popper.min.js"></script>
	<script src="${path}/a00_com/jquery-ui.js"></script>
	
	<!-- 작업 생성/수정/확인 다이얼로그창 -->
	<div id="cruTaks" class="gantt_cal_light" title="작업 생성">
		<form name="add_Task" id="add_Task" method="post">
		<input type="hidden" name="projectno" value="${project.projectno}">
		<input type="hidden" name="taskno">
		<input type="hidden" name="open" value="1"/>
		<div class="gantt_cal_larea" style="height: 530px;">
			<div id="title_label" class="gantt_cal_lsection">
				<label for="title">제목</label>
			</div>
			<div class="gantt_cal_ltext" style="height:38px;">
				<textarea id="title" name="title"></textarea>
			</div>
			<div id="content_label" class="gantt_cal_lsection">
				<label for="content">내용</label>
			</div>
			<div class="gantt_cal_ltext" style="height:76px;">
				<textarea id="content" name="content"></textarea>
			</div>
			<div id="priority_label" class="gantt_cal_lsection">
				<label for="priority">우선순위</label>
			</div>
			<div class="gantt_cal_ltext" style="height:22px;">
				<select style="width:100%;" id="priority" name="priority">
					<option value="1">상</option>
					<option value="2">중</option>
					<option value="3">하</option>
				</select>
			</div>
			<div id="empno_label" class="gantt_cal_lsection">
				<label for="empno">담당자</label>
			</div>
			<div class="gantt_cal_ltext" style="height:22px;">
				<select style="width:100%;" id="empno" name="empno">
					<option value="미배정">미배정</option>
					<c:forEach var="member" items="${mlist}">
						<option value="${member.empno}">${member.name}</option>
					</c:forEach>
				</select>
			</div>
			<div id="start_end_date" class="gantt_cal_lsection">
				<label for="startdate">작업 기간</label>
			</div>
			<div class="dhx_calendar_cont">
				<input type="text" readonly="true" id="startdate" name="p_startdate" style="border:1px solid #cecece;margin-left:10px;">
				<font style="vertical-align: inherit;">
					<font style="vertical-align: inherit;"> – </font>
				</font>
				<input type="text" readonly="true" id="enddate" name="p_enddate" style="border:1px solid #cecece;margin-left:10px;">				
			</div>
			<div id="refno_label" class="gantt_cal_lsection">
				<label for="refno">상위 작업(프로젝트)</label>
			</div>
			<div class="gantt_cal_ltext" style="height:23px;">
				<select style="width:100%;" name="refno">
					<option value="0">없음</option>
					<c:forEach var="task" items="${tlist}">
						<option value="${task.taskno}">${task.title}</option>
					</c:forEach>
				</select>
			</div>
		</div>
		<div role="button" id="reg_btn" class="gantt_btn_set gantt_left_btn_set gantt_save_btn_set">
			<div dhx_button="1" data-dhx-button="1" class="gantt_save_btn"></div>
			<div id="btn_name">저장</div>
		</div>
		<div role="button" id="cancel_btn" class="gantt_btn_set gantt_left_btn_set gantt_cancel_btn_set">
			<div dhx_button="1" data-dhx-button="1" class="gantt_cancel_btn"></div>
			<div>취소</div>
		</div>
		<div role="button" aria-label="Delete" tabindex="0" class="gantt_btn_set gantt_left_btn_set gantt_delete_btn_set" style="float:right;">
			<div dhx_button="1" data-dhx-button="1" class="gantt_delete_btn"></div>
			<div>삭제</div>
		</div>
		</form>
	</div>
	<div id="joinMember" title="멤버 추가">
		<form id="joinMemFr">
		<input type="hidden" name="selected_memberno"/>
		<div class="form-group">
			<label for="roleno">선택된 사원번호</label>
			<input id="sel_member" style="text-align:center" type="hidden" class="form-control" readonly/>
			<input id="sel_empno" style="text-align:center" type="text" class="form-control" readonly/>
		</div>
		<div class="form-group">
			<label for="roleno">역할</label>
	        <select id="sel_roleno" name="roleno" class="form-control">
	        	<c:forEach var="role" items="${roles}">
	        		<option 
	        		<c:if test="${role.roleno==1}">disabled="disabled"</c:if>
	        		 value="${role.roleno}">${role.rname}</option>
	        	</c:forEach>
	        </select>
	        <form method="post" id="form5">
	        	<input type="hidden" value="${param.projectno}" />
	        </form>
        </div>
        </form>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- --%>
		function resize(){
			var tab2_height = $("#mainWrapper").height();
			$("#mainContainer").css("height",tab2_height+150+"px");
			$("#wholeContainer").css("height",$("#mainContainer").height()+40+"px");
		}
		setTimeout(resize, 200);
		// 프로젝트 번호 정보
		var projectno = "${project.projectno}";	    
		var prono = "${param.projectno}";
		
		
		var mem = "${mem.empno}";
		/* 로그인 되지않았을때 로그인창으로 이동 */
		if (mem == null || mem == "") {
			$(location).attr("href", "${path}/login.do?method=base");
		}else{
			/* 로그인 되었을 때 회원 권한 처리 */
			var authno = "${mem.authno}";
			switch (authno*1) {
				case 1:
					$(".ml-2").text("권한 >일반 사용자");
					break;
				case 2:
					$(".ml-2").text("권한 >PM");
					break;
				case 3:
					$(".ml-2").text("권한 >ADMIN");
					break;
				case 4:
					$(".ml-2").text("권한 >CEO");
					break;
			}
		}

		/* 로그아웃 처리 */
		var logoutOk = "${logoutOk}";
		if (logoutOk == "true") {
			$(location).attr("href", "${path}/login.do?method=base");
		}
		$("#goLogout").click(function() {
			if (mem != null) {
				if (confirm("로그아웃 하시겠습니까?")) {
					$(location).attr("href", "${path}/login.do?method=logout");
				}
			}
		});
		var auth = "${mem.authno}";
		if(auth!="4"){
			alert("접근 권한이 없습니다!");
			$(location).attr("href", "${path}/login.do?method=base");
		}
		
		$("#pervMem").click(function(){			
			var curPage = $("[name=curPage]").val();
			if(curPage>1){
				curPage--;
				$("[name=curPage]").val(curPage);	
				$("#pageFr").submit();
			}
		});
		$("#nextMem").click(function(){			
			var curPage = $("[name=curPage]").val();
			var totPage = "${memMA.pageCount}";
			if(curPage<totPage){
				curPage++;
				$("[name=curPage]").val(curPage);
				$("#pageFr").submit();			
			}
		});	
		
		// 데이트피커 설정
		$("#startdate, #enddate").datepicker({
			dateFormat:'yy-mm-dd'
		});
		
		// 파이차트
		"use strict";
	    $(function() {
			if ($('#c3chart_pie').length) {
	            var chart = c3.generate({
	                bindto: "#c3chart_pie",
	                data: {
	                    columns: [
	                        ['조치보류', 0.1],
	                        ['조치완료', 0.7],
	                        ['미조치', 0.2]	                  
	                    ],
	                    type: 'pie',
	
	                    colors: {
	                    	'조치완료': '#5969ff',
	                    	'조치보류': '#ff407b',
	                    	'미조치' : '#FF0000'	
	                    }
	                },
	                pie: {
	                    label: {
	                        format: function(value, ratio, id) {
	                            return d3.format('.0%')(value);
	                        }
	                    }
	                }
	            });
	        }
	    });
	  
	    
		// 다이얼로그 설정
	    $( "#cruTaks" ).dialog({
	        autoOpen: false,
	        height: 640,
	        width: 500,
	        modal: true,
	        close: function() {
	   			$('textarea').prop('readonly', false);
	   			$('select').prop('disabled',false);
	   			$('input').datepicker('option', 'disabled', false);
	        	$("#add_Task")[0].reset();
	        }
	    });
		
	    
	    // 기존 담당자 저장용 (작업 수정 시 담당자 변경을 위한 처리)
		var ori_empno="";
		
		// 다이얼로그 저장/수정/확인 버튼 이벤트
		$("#reg_btn").click(function(){
			/* $("#add_Task").attr("action","${path}/project.do?method=tinsert")
	    	$("#add_Task").submit(); */
	    	var btnname=$("#btn_name").text();
	    	console.log(btnname);
	    	
	    	// 새 작업을 추가할 때 
	    	if($("#btn_name").text()=="저장"){
	    		var addTask={};
		    	addTask.projectno=$("#cruTaks [name=projectno]").val();
		    	addTask.title=$("#cruTaks [name=title]").val();
		    	addTask.content=$("#cruTaks [name=content]").val();
		    	addTask.p_startdate=$("#cruTaks [name=p_startdate]").val();
		    	addTask.p_enddate=$("#cruTaks [name=p_enddate]").val();	    	
		    	addTask.priority=$("#cruTaks [name=priority]").val();
		    	addTask.refno=$("#cruTaks [name=refno]").val();
				// boolean값 처리	    			
				addTask.open=$("#cruTaks [name=open]").val()==1;
				// 조건처리
				if($("#cruTaks [name=empno]").val()=="미배정"){
					addTask.state="미배정";
					addTask.empno="";
				}else{
					addTask.state="배정완료"
					addTask.empno=$("#cruTaks [name=empno]").val();
				}
				addTask.type="";
					    			
				// 2. ajax로 DB등록
				$.ajax({
					type:"post",
					url:"${path}/issue.do?method=tinsert",
					data:addTask, // 요청 데이터 전송 json객체형식 가능
					success:function(){
						alert("등록 완료!");
						gantt.refreshData();
						gantt.load("${path}/issue.do?method=gantt2&projectno="+prono);  
						$("#add_Task")[0].reset();	    			
						$("#cruTaks").dialog("close");
					},
					error:function(err){
						alert("등록에 실패하였습니다!")
						console.log(err);  
						$("#add_Task")[0].reset();	    			
						$("#cruTaks").dialog("close");
					}
				});
				gantt.refreshData();
				gantt.load("${path}/issue.do?method=gantt2&projectno="+prono);
			
			// 기존 작업을 수정할 때	
	    	}else if($("#btn_name").text()=="수정"){
	    		var update={};
	    		update.projectno=$("#cruTaks [name=projectno]").val();
	    		update.taskno=$("#cruTaks [name=taskno]").val();
	    		update.title=$("#cruTaks [name=title]").val();
	    		update.content=$("#cruTaks [name=content]").val();
	    		update.p_startdate=$("#cruTaks [name=p_startdate]").val();
	    		update.p_enddate=$("#cruTaks [name=p_enddate]").val();	    	
	    		update.priority=$("#cruTaks [name=priority]").val();
	    		update.refno=$("#cruTaks [name=refno]").val();
	    		if($("#cruTaks [name=empno]").val()=="미배정"){
	    			update.state="미배정";
	    			update.empno="";	    			
				}else{
					if(ori_empno!=null&&ori_empno!=""){
		    			if(ori_empno==$("#cruTaks [name=empno]").val()){
		    				update.empno=$("#cruTaks [name=empno]").val();
		    				update.assigndate="noCh";
		    			}else{
		    				update.empno=$("#cruTaks [name=empno]").val();
		    				update.assigndate="sysdate";
		    			}
		    		}
				}
	    		update.type="";
	    		$.ajax({
					type:"post",
					url:"${path}/issue.do?method=tupdate",
					data : update, // 요청 데이터 전송 json객체형식 가능
					success:function(){
						alert("수정 완료!");
						gantt.refreshData();
						gantt.load("${path}/issue.do?method=gantt2&projectno="+prono);  
						$("#add_Task")[0].reset();	    			
						$("#cruTaks").dialog("close");
					},
					error:function(err){
						console.log(err);
						alert("수정에 실패했습니다");						  
						$("#add_Task")[0].reset();	
						$("#cruTaks").dialog("close");
					}
				});
				gantt.refreshData();
				gantt.load("${path}/issue.do?method=gantt2&projectno="+prono);
	    		
	    	}else if($("#btn_name").text()=="확인"){
   				$('textarea').prop('readonly', false);
   				$('select').prop('disabled',false);
   				$('input').datepicker('option', 'disabled', false);
	    		$("#cruTaks").dialog("close");
	    	}
			
	    });
		
	    // 다이얼로그 취소버튼 클릭 이벤트
	    $("#cancel_btn").click(function(){
   			$('textarea').prop('readonly', false);
   			$('select').prop('disabled',false);
   			$('input').datepicker('option', 'disabled', false);
	    	$("#cruTaks").dialog("close");
	    });
	    // 진행률 퍼센트 표시				
	    gantt.templates.progress_text = function (start, end, task) {
			return "<span style='text-align:right;'>" + Math.round(task.progress * 100) + "% </span>";
		};
		// 간트 컬럼 설정
		gantt.config.columns = [
			{name: "text", label: "작업명", tree: true, width: 300, template: function (task) {
				if (task.priority == 1)
					if(task.users==null||task.users==""){
						return "<div class='important'>" + task.text + " (" + "미배정" + ") </div>";
					}else{
						return "<div class='important'>" + task.text + " (" + task.users + ") </div>";
					}					
					return task.text + " (" + task.users + ")";
			}},
			{name: "start_date", label: "시작일", align: "center"},
			{name: "end_date", label: "종료일",width: 90, align: "center"}
		];
		// 자동 크기조절
		gantt.config.autosize = true;
		// 자동 스케일
		gantt.config.fit_tasks = true;
		gantt.config.min_column_width = 50;
		gantt.config.scale_height = 54;
		gantt.config.scales = [
			{unit: "day", format: "%F %d"},
			{unit: "hour", step: 3, format: "%H:%i"}
		];
		function showScaleDesc() {
			var min = gantt.getState().min_date,
				max = gantt.getState().max_date,
				to_str = gantt.templates.task_date;

			return gantt.message("Scale shows days from " + to_str(min) + " to " + to_str(max));
		}
		setTimeout(showScaleDesc, 500);
		setTimeout(function () {
			gantt.message("기간이 변경되어 사이즈가 조절됩니다");
		}, 4500);
		gantt.attachEvent("onScaleAdjusted", showScaleDesc);
		// 간트차트 행 더블클릭 했을 때 이벤트
		gantt.attachEvent("onTaskDblClick",function(id){
			if(gantt.getTask(id).parent!=0){
				$("#cruTaks").dialog("option","title","작업 정보 확인");
				var taskno = id;
				function gettinfo(taskno){
					$.ajax({
				   		type : "post",
				   		url : "${path}/issue.do?method=tinfo&taskno="+taskno,
				   		dataType : "json",
				   		success : function(data){
				        	$("#add_Task")[0].reset();
				   			$("#cruTaks [name=taskno]").val(data.task.taskno);
				   			$("#cruTaks [name=title]").val(data.task.title);
				   			$("#cruTaks [name=content]").val(data.task.content);
				   			$("#cruTaks [name=priority]").val(data.task.priority);
				   			if(data.task.empno==null){
				   				$("#cruTaks [name=empno]").val("미배정");
				   			}else{
					   			$("#cruTaks [name=empno]").val(data.task.empno);
					   			ori_empno=data.task.empno;
				   			}
				   			$("#cruTaks [name=p_startdate]").val(data.task.p_startdate);
				   			$("#cruTaks [name=p_enddate]").val(data.task.p_enddate);
				   			$("#cruTaks [name=refno]").val(data.task.refno);
				   		},
				   		error : function(err){
				   			console.log(err);
				   		}	  
				   	})
				}
				gettinfo(taskno);
					$('textarea').prop('readonly', true);
					$('select').prop('disabled',true);
					$('input').datepicker('option', 'disabled', true);
					$("#btn_name").text("확인");
				$("#cruTaks").dialog("open");
			}else{
				
			}
		});
		
		// 간트 차트 맵핑
		gantt.init("gantt_here");
		
		// 기본 페이지 데이터 불러와서 파싱
		function json(){
			$.ajax({
		   		type : "post",
		   		url : "${path}/issue.do?method=gantt2&projectno="+prono,
		   		dataType : "json",
		   		success : function(data){
		   			//alert(data.callist.length);
		   		    //console.log(data);
		   			// 함수의 기능 내용을 처리
		   			// json객체의 내용을 리스트 처리
		   			gantt.parse(data);
		   			  
		   		},
		   		error : function(err){
		   			console.log(err);
		   		}	  
		   	})
		}
		json();
		
		// 첫번째 탭 클릭 이벤트
		$("#tab-outline-one").click(function(){
			// 진행률 퍼센트 표시				
		    gantt.templates.progress_text = function (start, end, task) {
				return "<span style='text-align:right;'>" + Math.round(task.progress * 100) + "% </span>";
			};
			// 두번째 탭 내용 초기화
			gantt.templates.grid_row_class =
							gantt.templates.task_row_class =
								gantt.templates.task_class = function (start, end, task) {		
									return "";
								};
			
			// 간트 컬럼 설정
			gantt.config.columns = [
				{name: "text", label: "작업명", tree: true, width: 300, template: function (task) {
					if (task.priority == 1)
						if(task.users==null||task.users==""){
							return "<div class='important'>" + task.text + " (" + "미배정" + ") </div>";
						}else{
							return "<div class='important'>" + task.text + " (" + task.users + ") </div>";
						}					
						return task.text + " (" + task.users + ")";
				}},
				{name: "start_date", label: "시작일", align: "center"},
				{name: "end_date", label: "종료일",width: 90, align: "center"}
			];
			
			// 더블클릭 이벤트
			gantt.attachEvent("onTaskDblClick",function(id){
				if(gantt.getTask(id).parent!=0){
					$("#cruTaks").dialog("option","title","작업 정보 확인");
					var taskno = id;
					function gettinfo(taskno){
						$.ajax({
					   		type : "post",
					   		url : "${path}/issue.do?method=tinfo&taskno="+taskno,
					   		dataType : "json",
					   		success : function(data){
					        	$("#add_Task")[0].reset();
					   			$("#cruTaks [name=taskno]").val(data.task.taskno);
					   			$("#cruTaks [name=title]").val(data.task.title);
					   			$("#cruTaks [name=content]").val(data.task.content);
					   			$("#cruTaks [name=priority]").val(data.task.priority);
					   			if(data.task.empno==null){
					   				$("#cruTaks [name=empno]").val("미배정");
					   			}else{
						   			$("#cruTaks [name=empno]").val(data.task.empno);
						   			ori_empno=data.task.empno;
					   			}
					   			$("#cruTaks [name=p_startdate]").val(data.task.p_startdate);
					   			$("#cruTaks [name=p_enddate]").val(data.task.p_enddate);
					   			$("#cruTaks [name=refno]").val(data.task.refno);
					   		},
					   		error : function(err){
					   			console.log(err);
					   		}	  
					   	})
					}
					gettinfo(taskno);
	   				$('textarea').prop('readonly', true);
	   				$('select').prop('disabled',true);
	   				$('input').datepicker('option', 'disabled', true);
	   				$("#btn_name").text("확인");
					$("#cruTaks").dialog("open");
				}else{
					
				}
			});
				
			gantt.init("gantt_here");

			function resize(){
				var tab2_height = $("#mainWrapper").height();
				$("#mainContainer").css("height",tab2_height+150+"px");
				$("#wholeContainer").css("height",$("#mainContainer").height()+40+"px");
			}
			setTimeout(resize, 200);
			
		});
		
		
		
		
		
	});
	
		
	
	
</script>
</html>