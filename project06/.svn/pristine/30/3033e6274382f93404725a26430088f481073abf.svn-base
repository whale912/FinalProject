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

<link rel="stylesheet" href="${path}/assets/vendor/bootstrap/css/bootstrap.min.css">
<link href="${path}/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
<link rel="stylesheet" href="${path}/assets/libs/css/style.css">
<link rel="stylesheet" href="${path}/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
<link rel="stylesheet" type="text/css" href="${path}/assets/vendor/datatables/css/dataTables.bootstrap4.css">
<link rel="stylesheet" type="text/css" href="${path}/assets/vendor/datatables/css/buttons.bootstrap4.css">
<link rel="stylesheet" type="text/css" href="${path}/assets/vendor/datatables/css/select.bootstrap4.css">
<link rel="stylesheet" type="text/css" href="${path}/assets/vendor/datatables/css/fixedHeader.bootstrap4.css">
<link rel="stylesheet" href="${path}/a00_com/dhtmlxgantt.css?v=7.0.2">
<style type="text/css">
.pagination{justify-content:center;align-items: center;}
.form-control-select {
	width: 20%;
	min-width:250px;
	padding: .375rem .75rem;
	font-size: 1rem;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: .25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out
}
.form-control-sch {
	padding: .375rem .75rem;
	font-size: 1rem;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: .25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out
}
#schDiv{float:right;display: flex;
    align-items: center;}
#schBtn{height:38px;}

	th{background-color:#E6E6F2}
	.gantt_task_line.gantt_project{color:white;}
	.gantt_side_content{color:#333;}
	.summary-bar{font-weight: bold;}
	.gantt_resource_task .gantt_task_content{color:inherit;}
	.gantt_resource_task .gantt_task_progress{background-color:rgba(33,33,33,0.3);}
	.gantt_cell:nth-child(1) .gantt_tree_content{
			border-radius: 16px;
			width: 100%;
			height: 80%;
			margin: 5% 0;
			line-height: 230%;
	}
.form-control-sch {
	padding: .375rem .75rem;
	font-size: 1rem;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: .25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out
}
#schDiv{float:right;display: flex;
    align-items: center;}
#schBtn{height:38px;}
</style>
<script type="text/javascript">
	
function goPage(no){
	$("#curPage").val(no);
	$("form").submit();
}	

	
</script>
</head>
<body>
	<!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
                <a class="navbar-brand" href="#"><img style="width:160px;height:40px;" src="${path}/img/logo.png"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-right-top">
                        <li class="nav-item">
                            <div id="custom-search" class="top-search-bar">
                                <input class="form-control" type="text" placeholder="Search..">
                            </div>
                        </li>
                        <li class="nav-item dropdown notification">
                            <a class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-fw fa-bell"></i>
                            <!-- 새로운 내용 알림 빨간 점  -->
                            <span class="indicator"></span></a>
                            <ul class="dropdown-menu dropdown-menu-right notification-dropdown">
                                <li>
                                    <div class="notification-title"> Notification</div>
                                    <div class="notification-list">
                                        <div class="list-group">
                                        	<!-- 알림 내용 -->
                                            <a href="#" class="list-group-item list-group-item-action active">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="assets/images/avatar-2.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">Jeremy Rakestraw</span>accepted your invitation to join the team.
                                                        <div class="notification-date">2 min ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                	<!-- 알림 상세 페이지로 이동 -->
                                    <div class="list-footer"> <a href="#">전체 알림 보기</a></div>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown connection">
                            <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-fw fa-th"></i> </a>
                            <ul class="dropdown-menu dropdown-menu-right connection-dropdown">
                            	<!-- 연결 리스트 -->
                                <li class="connection-list">
                                	<!-- 연결프로그램? -->
                                    <div class="row">
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="assets/images/github.png" alt="" > <span>Github</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="assets/images/dribbble.png" alt="" > <span>Dribbble</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="assets/images/dropbox.png" alt="" > <span>Dropbox</span></a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="assets/images/bitbucket.png" alt=""> <span>Bitbucket</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="assets/images/mail_chimp.png" alt="" ><span>Mail chimp</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="assets/images/slack.png" alt="" > <span>Slack</span></a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="conntection-footer"><a href="#">더 보기</a></div>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown nav-user">
                            <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="assets/images/avatar-1.jpg" alt="" class="user-avatar-md rounded-circle"></a>
                            <!-- 로그인정보창 -->
                            <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                <div class="nav-user-info">
                                    <h5 class="mb-0 text-white nav-user-name">ID : ${mem.empno}</h5>
                                    <span class="status"></span><span class="ml-2"></span>
                                </div>
                                <a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i>프로필 보기</a>
                                <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>회원정보 수정</a>
                                <a class="dropdown-item" id="goLogout"><i class="fas fa-power-off mr-2"></i>로그아웃</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
        <div class="nav-left-sidebar sidebar-dark">
            <div class="menu-list">
            	<!-- 메뉴바 -->
                <nav class="navbar navbar-expand-lg navbar-light">
                    
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                            <li class="nav-divider">
                                Menu
                            </li>
                            <li class="nav-item ">
                                <!-- 대쉬보드 상위메뉴 -->
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1" aria-controls="submenu-1"><i class="fas fa-fw fa-chart-bar"></i>Dashboard<span class="badge badge-success">6</span></a>
                                <div id="submenu-1" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                    	<!-- 대쉬보드 하위메뉴 -->
                                    	<!-- 전체 대쉬보드  -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">전체 Dashboard</a>
                                        </li>
                                        <!-- 상세 대쉬보드 -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">상세 Dashboard</a>
                                        </li>                                        
                                    </ul>
                                </div>
                            </li>
                            <!-- 프로젝트 상위메뉴  -->
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-2" aria-controls="submenu-2"><i class="fa fa-fw fa-folder"></i>프로젝트</a>
                                <div id="submenu-2" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                    	<!-- 프로젝트 관리 -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">프로젝트 관리</a>
                                        </li>
                                        <!-- 프로젝트 작업승인 -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">프로젝트 작업 승인</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <!-- 내 작업 상위메뉴 -->
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-3" aria-controls="submenu-3"><i class="fas fa-fw fa-tasks"></i>내 작업</a>
                                <div id="submenu-3" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                    	<!-- 개인 Dashboard -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">개인 Dashboard</a>
                                        </li>
                                        <!-- 내 작업 -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">내 작업</a>
                                        </li>
                                        <!-- 내 일정 -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">내 일정</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="#"><i class="fas fa-fw fa-exclamation-triangle"></i>이슈관리</a>                                
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-4" aria-controls="submenu-4"><i class="far fa-fw fa-comments"></i>커뮤니케이션</a>
                                <div id="submenu-4" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                    	<!-- 프로젝트 게시판 -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">게시판</a>
                                        </li>
                                        <!-- 회의록 -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">회의록</a>
                                        </li>
                                        <!-- 채팅 -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">채팅</a>
                                        </li>
                                        <!-- 메일 보내기 -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">메일 보내기</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <!-- 관리자 메뉴 -->
                            <li class="nav-divider">
                                Admin
                            </li>
                            <!-- 회원관리 메뉴 -->
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-6" aria-controls="submenu-6"><i class="fas fa-fw fa-user-circle"></i> 회원관리 </a>
                                <div id="submenu-6" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <!-- 회원관리 -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">회원 관리</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        
        
        <div class="dashboard-wrapper" style="height:1700px">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content" style="height:1660px;">
                    
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                            	<!-- 페이지 타이틀 -->
                                <h2 class="pageheader-title">Dashboard</h2>
                                
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">전체 Dashboard</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="ecommerce-widget">
                        <div class="row"> 
							<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
		                        <div class="card">
		                            <div class="card-header">주요 프로젝트
		                            <form method="post" id="form2">
		                            	<input type="hidden" name="memempno" value="${mem.empno}"/>
		                            </form>
		                            <form:form id="form1" class="form" commandName="psch" method="post">
		                            <form:hidden path="curPage"	/>
		                            <div id="schDiv" >&nbsp;&nbsp;
	                                        <form:input path="keyword" type="text" class="form-control-sch" />
	                                        <input type="submit" id="schBtn" class="btn btn-dark" value="검색" />
	                                        </div>	
		                            </div>
		                            </form:form>
		                            <div class="card-body">
		                                <div class="table-responsive">
		                                    <table class="table table-striped table-bordered first">
		                                        <thead>
		                                            <tr>		                                            
		                                                <th>프로젝트명</th>
		                                                <th>PM</th>
		                                                <th>상태</th>
		                                                <th>시작일</th>
		                                                <th>종료일</th>
		                                                <th>진행율</th>
		                                                <th>이슈</th>
		                                                <th>상세</th>
		                                            </tr>
		                                        </thead>
		                                        <tbody>
		                                        <c:forEach var="pro" items="${prolist}" varStatus="sts">
		                                            <tr>
		                                                <td  onclick="javascript:goDetail(${pro.projectno})">${pro.pname}</td>
		                                                <td>${pro.name}</td>
		                                                <td>${pro.state}</td>
		                                                <td>${pro.startdate}</td>
		                                                <td>${pro.enddate}</td>
		                                                <td><fmt:formatNumber type="percent" value="${pro.progress}" /></td>
		                                                <td>${pro.issuecnt}</td>
		                                                <td onclick="javascript:goDetail2(${pro.projectno})">*</td>
		                                            </tr>
		                                       	</c:forEach>
		                                        </tbody>
		                                    </table>
		                                </div>   
		                            </div>
		                            <ul class="pagination">
                                   	 	<li class="page-item"><a class="page-link" href="javascript:goPage(${psch.startBlock-1})">Prev</a></li>
                                   	 	<c:forEach var="cnt" begin="${psch.startBlock}" end="${psch.endBlock}">                                       
                                        <li class="page-item ${psch.curPage==cnt?'active':''}"><a class="page-link" href="javascript:goPage(${cnt})">${cnt}</a></li>
                                        </c:forEach>
                                        <li class="page-item"><a class="page-link" href="javascript:goPage(${(psch.endBlock==psch.pageCount)?psch.endBlock:psch.endBlock+1})">Next</a></li>
                                    </ul>
		                        </div>
		                    </div>      
                        </div>
                        <div class="row">
                        
	                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12" style="width:50%">
					        	<div class="card" style="height:450px">
					            	<div class="card-header" style="font-weight:bold">프로젝트 현황
					            	</div>
					            	<div class="card-body" style="height:414px;padding-top:40px;">
					           			<div id="c3chart_pie"></div>
					            	</div>
					            </div>
					        </div>
					        
					        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12" style="width:50%">
					        	<div class="card" style="height:450px">
					            	<div class="card-header" style="font-weight:bold">이슈 현황
					            	</div>
					            	<div class="card-body" style="height:414px;padding-top:40px;">
					           			<div id="c3chart_pie2"></div>
					            	</div>
					            </div>
					        </div>
					        					        
                        </div>
                        <div class="row">
	                        <div class="col-xl-12 col-lg-10 col-md-6 col-sm-12 col-12">
	                        	<div class="card">
	                        		<div class="card-header" style="font-weight:bold;">간트차트</div>
	                       		 	<div class="card-body" style="height:500px;">
	                        			<div id="gantt_here" style='width:100%; height:100%;'></div>
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
    <script src="${path}/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <!-- bootstap bundle js -->
    <script src="${path}/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <!-- slimscroll js -->
    <script src="${path}/assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <!-- main js -->
    <script src="${path}/assets/libs/js/main-js.js"></script>
    <!-- chart chartist js -->
    <script src="${path}/assets/vendor/charts/chartist-bundle/chartist.min.js"></script>
    <!-- sparkline js -->
    <script src="${path}/assets/vendor/charts/sparkline/jquery.sparkline.js"></script>
    <!-- morris js -->
    <script src="${path}/assets/vendor/charts/morris-bundle/raphael.min.js"></script>
    <script src="${path}/assets/vendor/charts/morris-bundle/morris.js"></script>
    <!-- chart c3 js -->
    <script src="${path}/assets/vendor/charts/c3charts/c3.min.js"></script>
    <script src="${path}/assets/vendor/charts/c3charts/d3-5.4.0.min.js"></script>
    <script src="${path}/assets/vendor/charts/c3charts/C3chartjs.js"></script>
    <script src="${path}/assets/libs/js/dashboard-ecommerce.js"></script>
    <!-- full calendar js -->
	<script src='${path}/assets/vendor/full-calendar/js/moment.min.js'></script>
	<script src='${path}/assets/vendor/full-calendar/js/fullcalendar.js'></script>
	<script src='${path}/assets/vendor/full-calendar/js/jquery-ui.min.js'></script>
	<script src='${path}/assets/vendor/full-calendar/js/calendar.js'></script>
	<script src="${path}/a00_com/dhtmlxgantt.js?v=7.0.2"></script>
</body>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">
var memempno="${mem.empno}";
var memauthno="${mem.authno}";
var empno="${param.memempno}";

if(memempno==null||memempno==""){
	$(location).attr("href","${path}/login.do?method=base");
}

if(memauthno=='1'||memauthno=='2'||memauthno=='3'){
	alert("권한이 없습니다.");
	window.history.back();
}
var logoutOk="${logoutOk}";
if(logoutOk=="true"){
	$(location).attr("href","${path}/login.do?method=base");
}

$("#goLogout").click(function(){
	if(memempno!=null){
		if(confirm("로그아웃 하시겠습니까?")){
			$(location).attr("href","${path}/login.do?method=logout");	
		}
	}
});	

	$(document).ready(function(){
		var keyword = "${param.keyword}";
		if(keyword!=""){
			$("#keyword").val("");	
		}
		
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
		$(function() {
			if ($('#c3chart_pie2').length) {
	            var chart = c3.generate({
	                bindto: "#c3chart_pie2",
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
		
	});
		

	var demo_tasks = {
			"data":[
				{"id":11, "text":"Project #1", "start_date":"28-03-2018", "duration":"11", "progress": 0.6, "open": true},
				{"id":1, "text":"Project #2", "start_date":"01-04-2018", "duration":"18", "progress": 0.4, "open": true},

				{"id":2, "text":"Task #1", "start_date":"02-04-2018", "duration":"8", "parent":"1", "progress":0.5, "open": true},
				{"id":3, "text":"Task #2", "start_date":"11-04-2018", "duration":"8", "parent":"1", "progress": 0.6, "open": true},
				{"id":4, "text":"Task #3", "start_date":"13-04-2018", "duration":"6", "parent":"1", "progress": 0.5, "open": true},
				{"id":5, "text":"Task #1.1", "start_date":"02-04-2018", "duration":"7", "parent":"2", "progress": 0.6, "open": true},
				{"id":6, "text":"Task #1.2", "start_date":"03-04-2018", "duration":"7", "parent":"2", "progress": 0.6, "open": true},
				{"id":7, "text":"Task #2.1", "start_date":"11-04-2018", "duration":"8", "parent":"3", "progress": 0.6, "open": true},
				{"id":8, "text":"Task #3.1", "start_date":"14-04-2018", "duration":"5", "parent":"4", "progress": 0.5, "open": true},
				{"id":9, "text":"Task #3.2", "start_date":"14-04-2018", "duration":"4", "parent":"4", "progress": 0.5, "open": true},
				{"id":10, "text":"Task #3.3", "start_date":"14-04-2018", "duration":"3", "parent":"4", "progress": 0.5, "open": true},
				
				{"id":12, "text":"Task #1", "start_date":"03-04-2018", "duration":"5", "parent":"11", "progress": 1, "open": true},
				{"id":13, "text":"Task #2", "start_date":"02-04-2018", "duration":"7", "parent":"11", "progress": 0.5, "open": true},
				{"id":14, "text":"Task #3", "start_date":"02-04-2018", "duration":"6", "parent":"11", "progress": 0.8, "open": true},
				{"id":15, "text":"Task #4", "start_date":"02-04-2018", "duration":"5", "parent":"11", "progress": 0.2, "open": true},
				{"id":16, "text":"Task #5", "start_date":"02-04-2018", "duration":"7", "parent":"11", "progress": 0, "open": true},

				{"id":17, "text":"Task #2.1", "start_date":"03-04-2018", "duration":"2", "parent":"13", "progress": 1, "open": true},
				{"id":18, "text":"Task #2.2", "start_date":"06-04-2018", "duration":"3", "parent":"13", "progress": 0.8, "open": true},
				{"id":19, "text":"Task #2.3", "start_date":"10-04-2018", "duration":"4", "parent":"13", "progress": 0.2, "open": true},
				{"id":20, "text":"Task #2.4", "start_date":"10-04-2018", "duration":"4", "parent":"13", "progress": 0, "open": true},
				{"id":21, "text":"Task #4.1", "start_date":"03-04-2018", "duration":"4", "parent":"15", "progress": 0.5, "open": true},
				{"id":22, "text":"Task #4.2", "start_date":"03-04-2018", "duration":"4", "parent":"15", "progress": 0.1, "open": true},
				{"id":23, "text":"Task #4.3", "start_date":"03-04-2018", "duration":"5", "parent":"15", "progress": 0, "open": true}
			],
			"links":[
				{"id":"1","source":"1","target":"2","type":"1"},
				{"id":"2","source":"2","target":"3","type":"0"},
				{"id":"3","source":"3","target":"4","type":"0"},
				{"id":"4","source":"2","target":"5","type":"2"},
				{"id":"5","source":"2","target":"6","type":"2"},
				{"id":"6","source":"3","target":"7","type":"2"},
				{"id":"7","source":"4","target":"8","type":"2"},
				{"id":"8","source":"4","target":"9","type":"2"},
				{"id":"9","source":"4","target":"10","type":"2"},
				{"id":"10","source":"11","target":"12","type":"1"},
				{"id":"11","source":"11","target":"13","type":"1"},
				{"id":"12","source":"11","target":"14","type":"1"},
				{"id":"13","source":"11","target":"15","type":"1"},
				{"id":"14","source":"11","target":"16","type":"1"},
				{"id":"15","source":"13","target":"17","type":"1"},
				{"id":"16","source":"17","target":"18","type":"0"},
				{"id":"17","source":"18","target":"19","type":"0"},
				{"id":"18","source":"19","target":"20","type":"0"},
				{"id":"19","source":"15","target":"21","type":"2"},
				{"id":"20","source":"15","target":"22","type":"2"},
				{"id":"21","source":"15","target":"23","type":"2"}
			]
		};

		var users_data = {
			"data":[
				{"id":1, "text":"Project #1", "start_date":"01-04-2018", "duration":"11", "progress": 0.6, "open": true, "users": ["John", "Mike", "Anna"], "priority": "2"},
				{"id":2, "text":"Task #1", "start_date":"03-04-2018", "duration":"5", "parent":"1", "progress": 1, "open": true, "users": ["John", "Mike"], "priority": "1"},
				{"id":3, "text":"Task #2", "start_date":"02-04-2018", "duration":"7", "parent":"1", "progress": 0.5, "open": true, "users": ["Anna"], "priority": "1"},
				{"id":4, "text":"Task #3", "start_date":"02-04-2018", "duration":"6", "parent":"1", "progress": 0.8, "open": true, "users": ["Mike", "Anna"], "priority": "2"},
				{"id":5, "text":"Task #4", "start_date":"02-04-2018", "duration":"5", "parent":"1", "progress": 0.2, "open": true, "users": ["John"], "priority": "3"},
				{"id":6, "text":"Task #5", "start_date":"02-04-2018", "duration":"7", "parent":"1", "progress": 0, "open": true, "users": ["John"], "priority": "2"},
				{"id":7, "text":"Task #2.1", "start_date":"03-04-2018", "duration":"2", "parent":"3", "progress": 1, "open": true, "users": ["Mike", "Anna"], "priority": "2"},
				{"id":8, "text":"Task #2.2", "start_date":"06-04-2018", "duration":"3", "parent":"3", "progress": 0.8, "open": true, "users": ["Anna"], "priority": "3"},
				{"id":9, "text":"Task #2.3", "start_date":"10-04-2018", "duration":"4", "parent":"3", "progress": 0.2, "open": true, "users": ["Mike", "Anna"], "priority": "1"},
				{"id":10, "text":"Task #2.4", "start_date":"10-04-2018", "duration":"4", "parent":"3", "progress": 0, "open": true, "users": ["John", "Mike"], "priority": "1"},
				{"id":11, "text":"Task #4.1", "start_date":"03-04-2018", "duration":"4", "parent":"5", "progress": 0.5, "open": true, "users": ["John", "Anna"], "priority": "3"},
				{"id":12, "text":"Task #4.2", "start_date":"03-04-2018", "duration":"4", "parent":"5", "progress": 0.1, "open": true, "users": ["John"], "priority": "3"},
				{"id":13, "text":"Task #4.3", "start_date":"03-04-2018", "duration":"5", "parent":"5", "progress": 0, "open": true, "users": ["Anna"], "priority": "3"}
			],
			"links":[
				{"id":"10","source":"11","target":"12","type":"1"},
				{"id":"11","source":"11","target":"13","type":"1"}
			]
		};

		var projects_with_milestones = {
			"data":[
				{"id":11, "text":"Project #1", type:gantt.config.types.project, "progress": 0.6, "open": true},

				{"id":12, "text":"Task #1", "start_date":"03-04-2018", "duration":"5", "parent":"11", "progress": 1, "open": true},
				{"id":13, "text":"Task #2", "start_date":"03-04-2018", type:gantt.config.types.project, "parent":"11", "progress": 0.5, "open": true},
				{"id":14, "text":"Task #3", "start_date":"02-04-2018", "duration":"6", "parent":"11", "progress": 0.8, "open": true},
				{"id":15, "text":"Task #4", type:gantt.config.types.project, "parent":"11", "progress": 0.2, "open": true},
				{"id":16, "text":"Final milestone", "start_date":"15-04-2018", type:gantt.config.types.milestone, "parent":"11", "progress": 0, "open": true},

				{"id":17, "text":"Task #2.1", "start_date":"03-04-2018", "duration":"2", "parent":"13", "progress": 1, "open": true},
				{"id":18, "text":"Task #2.2", "start_date":"06-04-2018", "duration":"3", "parent":"13", "progress": 0.8, "open": true},
				{"id":19, "text":"Task #2.3", "start_date":"10-04-2018", "duration":"4", "parent":"13", "progress": 0.2, "open": true},
				{"id":20, "text":"Task #2.4", "start_date":"10-04-2018", "duration":"4", "parent":"13", "progress": 0, "open": true},
				{"id":21, "text":"Task #4.1", "start_date":"03-04-2018", "duration":"4", "parent":"15", "progress": 0.5, "open": true},
				{"id":22, "text":"Task #4.2", "start_date":"03-04-2018", "duration":"4", "parent":"15", "progress": 0.1, "open": true},
				{"id":23, "text":"Mediate milestone", "start_date":"14-04-2018", type:gantt.config.types.milestone, "parent":"15", "progress": 0, "open": true}
			],
			"links":[
				{"id":"10","source":"11","target":"12","type":"1"},
				{"id":"11","source":"11","target":"13","type":"1"},
				{"id":"12","source":"11","target":"14","type":"1"},
				{"id":"13","source":"11","target":"15","type":"1"},
				{"id":"14","source":"23","target":"16","type":"0"},
				{"id":"15","source":"13","target":"17","type":"1"},
				{"id":"16","source":"17","target":"18","type":"0"},
				{"id":"17","source":"18","target":"19","type":"0"},
				{"id":"18","source":"19","target":"20","type":"0"},
				{"id":"19","source":"15","target":"21","type":"2"},
				{"id":"20","source":"15","target":"22","type":"2"},
				{"id":"21","source":"15","target":"23","type":"0"}
			]
		};

		var projects_milestones_critical = {
			data: [
				{ id: 1, text: "Office itinerancy", type: "project", progress: 0.4, open: true, start_date: "02-04-2018 00:00", duration: 17, parent: 0 },
				{ id: 2, text: "Office facing", type: "project", start_date: "02-04-2018 00:00", duration: 5, progress: 0.6, parent: 1, open: true},
				{ id: 5, text: "Interior office", type: "task", start_date: "02-04-2018 00:00", duration: 3, parent: 2, progress: 0.6, open: true},
				{ id: 6, text: "Air conditioners check", type: "task",  start_date: "05-04-2018 00:00", duration: 2, parent: 2, progress: 0.29, open: true},
				{ id: 3, text: "Furniture installation", type: "project", start_date: "08-04-2018 00:00", duration: 2, parent: 1, progress: 0.6, open: false},
				{ id: 7, text: "Workplaces preparation", type: "task",  start_date: "08-04-2018 00:00", duration: 2, parent: 3, progress: 0.6, open: true},
				{ id: 4, text: "The employee relocation", type: "project", start_date: "10-04-2018 00:00", duration: 9, parent: 1, progress: 0.5, open: true},
				{ id: 8, text: "Preparing workplaces", type: "task",  start_date: "10-04-2018 00:00", duration: 3, parent: 4, progress: 0.5, open: true},
				{ id: 9, text: "Workplaces importation", type: "task",  start_date: "13-04-2018 00:00", duration: 3, parent: 4, progress: 0.5, open: true},
				{ id: 10, text: "Workplaces exportation", type: "task",  start_date: "16-04-2018 00:00", duration: 3, parent: 4, progress: 0.5, open: true},
				{ id: 11, text: "Product launch", type: "project", progress: 0.6, open: true, start_date: "02-04-2018 00:00", duration: 17, parent: 0 },
				{ id: 12, text: "Perform Initial testing", type: "task",  start_date: "02-04-2018 00:00", duration: 5, parent: 11, progress: 1, open: true},
				{ id: 13, text: "Development", type: "project", start_date: "03-04-2018 00:00", duration: 16, parent: 11, progress: 0.5, open: true},
				{ id: 17, text: "Develop System", type: "task",  start_date: "03-04-2018 00:00", duration: 5, parent: 13, progress: 1, open: true},
				{ id: 25, text: "Beta Release", type: "milestone", start_date: "08-04-2018 00:00", duration: 0, parent: 13, progress: 0, open: true},
				{ id: 18, text: "Integrate System", type: "task",  start_date: "08-04-2018 00:00", duration: 4, parent: 13, progress: 0.8, open: true},
				{ id: 19, text: "Test", type: "task",  start_date: "12-04-2018 00:00", duration: 3, parent: 13, progress: 0.2, open: true},
				{ id: 20, text: "Marketing", type: "task",  start_date: "15-04-2018 00:00", duration: 4, parent: 13, progress: 0, open: true},
				{ id: 14, text: "Analysis", type: "task",  start_date: "02-04-2018 00:00", duration: 4, parent: 11, progress: 0.8, open: true},
				{ id: 15, text: "Design", type: "project", start_date: "06-04-2018 00:00", duration: 6, parent: 11, progress: 0.2, open: true},
				{ id: 21, text: "Design database", type: "task",  start_date: "06-04-2018 00:00", duration: 4, parent: 15, progress: 0.5, open: true},
				{ id: 22, text: "Software design", type: "task",  start_date: "08-04-2018 00:00", duration: 4, parent: 15, progress: 0.1, open: true},
				{ id: 16, text: "Documentation creation", type: "task",  start_date: "11-04-2018 00:00", duration: 5, parent: 11, progress: 0, open: true},
				{ id: 24, text: "Release v1.0", type: "milestone",  start_date: "19-04-2018 00:00", duration: 0, parent: 11, progress: 0, open: true}
			],
			links: [
				{ id: 1, source: "2", target: "3", type: "0"},
				{ id: 2, source: "3", target: "4", type: "0"},
				{ id: 3, source: "17", target: "25", type: "0"},
				{ id: 4, source: "18", target: "19", type: "0"},
				{ id: 5, source: "19", target: "20", type: "0"},
				{ id: 6, source: "13", target: "24", type: "0"},
				{ id: 7, source: "25", target: "18", type: "0"},
				{ id: 8, source: "5", target: "6", type: "0"},
				{ id: 9, source: "8", target: "9", type: "0"},
				{ id: 10, source: "9", target: "10", type: "0"},
				{ id: 11, source: "16", target: "24", type: "0"},
				{ id: 12, source: "14", target: "15", type: "0"}
			]
		};

		function generateData(count, dateFrom, dateTo){
			var tasks =  {
				data:[],
				links:[]
			};

			count = parseInt(count, 10) || 100;

			var date = new Date(dateFrom.getFullYear(),5,1);
			var project_id = 1;
			tasks.data.push({
				id:  project_id,
				text: "Project1",
				start_date: date,
				type: gantt.config.types.project,
				open:true
			});
			for (var i = 1; i < count; i++) {
				date = gantt.date.add(date, 1, "day");
				var task = {
					id: i + 1,
					start_date: date,
					text: "Task " + (i + 1),
					duration: 8,
					parent: project_id
				};

				if(gantt.date.add(date, 8, "day").valueOf() > dateTo.valueOf()){
					date = new Date(dateFrom);
					project_id = i + 1;
					delete task.parent;
					task.open = true;
				}
				tasks.data.push(task);

			}
			return tasks;
		}
		gantt.config.columns = [
			{name: "text", label: "Task name", tree: true, width: 230, template: function (task) {
				if (task.priority == 1)
					return "<div class='important'>" + task.text + " (" + task.users + ") </div>";
				return task.text + " (" + task.users + ")";
			}},
			{name: "start_date", label: "Start time", align: "center"},
			{name: "duration", label: "Duration", align: "center"}
		];
		gantt.init("gantt_here");
		gantt.parse(users_data);	
</script>
</html>