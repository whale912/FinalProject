<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
                                    <h5 class="mb-0 text-white nav-user-name">ID</h5>
                                    <span class="status"></span><span class="ml-2">회원권한</span>
                                </div>
                                <a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i>프로필 보기</a>
                                <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>회원정보 수정</a>
                                <a class="dropdown-item" href="#"><i class="fas fa-power-off mr-2"></i>로그아웃</a>
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
                            <!-- 메뉴 추가 시 아래 메뉴 레벨 보시고 양식에 맞게 추가해주세요 !
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-10" aria-controls="submenu-10"><i class="fas fa-f fa-folder"></i>Menu Level</a>
                                <div id="submenu-10" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">Level 1</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-11" aria-controls="submenu-11">Level 2</a>
                                            <div id="submenu-11" class="collapse submenu" style="">
                                                <ul class="nav flex-column">
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="#">Level 1</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="#">Level 2</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">Level 3</a>
                                        </li>
                                    </ul>
                                </div>
                            </li> -->
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content ">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                            	<!-- 페이지 타이틀 -->
                                <h2 class="pageheader-title">페이지 제목</h2>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">상위메뉴</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">현재 페이지</li>
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
                             <!-- 첫 줄 내용 -->
                        </div>
                        <div class="row">
                    		 <!-- 두 번째 줄 내용 -->
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
</body>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- --%>
	});
</script>
</html>