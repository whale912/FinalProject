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
                        
                        
                        
                        <li class="nav-item dropdown nav-user">
                            <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span style="margin-right:20px;">${mem.name}님 로그인</span><img src="assets/images/avatar-1.jpg" alt="" class="user-avatar-md rounded-circle"></a>
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
                        <li class="nav-item dropdown notification">
                            <a class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="width:50px"><i class="fas fa-fw fa-bell" style="margin-left:8px;"></i>
                            <!-- 새로운 내용 알림 빨간 점  -->
                            <span class="indicator" style="right:15px;"></span></a>
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
        <div class="dashboard-wrapper" style="height:880px">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content " style="height:850px; background-color:#efeff6;">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                            	<!-- 페이지 타이틀 -->
                                <h2 class="pageheader-title">프로젝트 생성</h2>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">프로젝트</a></li>
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">프로젝트 관리</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">프로젝트 생성</li>
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
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            	<div class="card" style="width:900px;">
                                    <h5 class="card-header">프로젝트 생성</h5>
                                    <div class="card-body">
                                        <form method="post" action="${path}/project.do?method=insert">
                                        <p style="font-size:10px;" class="text-danger"><span class="badge-dot badge-danger"></span>&nbsp;는 필수 입력 표시입니다</p>
                                            <div class="form-group" style="height:75px;">
                                                <label for="pname" class="col-form-label"><span class="badge-dot badge-danger"></span>&nbsp;프로젝트 명</label><br>
                                                <div style="width:90%;float:left">
                                                	<input id="pname" name="pname" type="text" class="form-control" style="width:100%;margin:0px" maxlength="40"/>
                                                </div>
                                                <div style="float:left;width:10%;height:38px;line-height:38px;">
                                                <span style="margin-left:10px;"><span id="pnameLength">0</span>/40</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="empno"><span class="badge-dot badge-danger"></span>&nbsp;담당자(PM)</label>
                                                <input id="empno" name="empno" value="201910002" type="text" class="form-control" readonly style="width:40%">
                                            </div>
                                            <div class="form-group">
                                                <label for="kindno"><span class="badge-dot badge-danger"></span>&nbsp;프로젝트 분류</label>
                                                <select class="form-control" id="kindno" name="kindno" style="width:60%;">
                                                    <option value="" disabled selected hidden>프로젝트 분류 선택</option>
                                                    <c:forEach var="kind" items="${klist}">
                                                    	<option value="${kind.kindno}">${kind.kname}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="personnel" class="col-form-label"><span class="badge-dot badge-danger"></span>&nbsp;인원</label><br>
                                                <div style="width:20%;float:left">
                                                	<input name="personnel" id="personnel" type="number" class="form-control" placeholder="인원(명)" style="width:100%;text-align:center">
                                                </div>
                                                <div style="width:10%;float:left;height:38px;line-height:38px;margin-left:10px;">명</div><br>
                                            </div>
                                            <div class="form-group" style="margin-top:20px;">
                                                <label for="budget" class="col-form-label"><span class="badge-dot badge-danger"></span>&nbsp;예산</label><br>
                                                <div style="width:20%;float:left">
                                                	<input id="budget" name="budget" type="text" class="form-control" placeholder="예산(원)" style="width:100%;text-align:center">
                                            	</div>
                                            	<div style="width:10%;float:left;height:38px;line-height:38px;margin-left:10px;">원</div><br>
                                            </div>
                                            <label style="margin-top:20px;"><span class="badge-dot badge-danger"></span>&nbsp;프로젝트 기간</label>
                                            <div class="form-group row" style="margin-top:-10px;">                                            	
                                            	<div class="col-sm-4 col-lg-3 mb-3 mb-sm-0">
                                                	<input id="startdate" name="startdate" type="text" placeholder="시작 날짜" class="form-control" style="text-align:center">
                                            	</div>
                                            	<div class="col-sm-4 col-lg-3">
                                                	<input id="enddate" name="enddate" type="text" placeholder="종료 날짜" class="form-control" style="text-align:center">
                                            	</div>
                                        	</div>
                                        		
                                        	
                                        </form>
                                        
                                    </div>  
                                    <div class="card-footer d-flex text-muted">
                                    	<div style="width:100%;text-align:right">
                                    		<input id="cancel_btn" type="button" value="취소" class="btn btn-danger" style="width:100px;float:right"/>                                        	
                                        	<input id="insert_project" type="button" value="생성" class="btn btn-dark" style="width:100px;float:right;margin-right:10px;"/>                                        	
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
    <script src="${path}/assets/vendor/inputmask/js/jquery.inputmask.bundle.js"></script>
</body>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- --%>
		var mem="${mem.empno}"
		
		
		/* 로그인 되지않았을때 로그인창으로 이동 */
		
		if(mem==null||mem==""){
			$(location).attr("href","${path}/login.do?method=base");
			
		}else{
			/* 로그인 되었을 때 회원 권한 처리 */
			
			var authno=${mem.authno}+0;
			
				switch(authno){
				
					case 1: $(".ml-2").text("권한 >일반 사용자");
							break;
						
					case 2: $(".ml-2").text("권한 >PM");
							break;
							
					case 3: $(".ml-2").text("권한 >ADMIN");
							break;
							
					case 4: $(".ml-2").text("권한 >CEO");
							break;
				
				}
			
		}
	
		/* 로그아웃 처리 */
	
		
		var logoutOk="${logoutOk}";
		if(logoutOk=="true"){
			
			$(location).attr("href","${path}/login.do?method=base");
		}
		$("#goLogout").click(function(){
			if(mem!=null){
			
				if(confirm("로그아웃 하시겠습니까?")){
					$(location).attr("href","${path}/login.do?method=logout");
					
				}
			}
		});
		
		
		$("[name=pname]").keyup(function(){
			var leng = $(this).val().length;
			$("#pnameLength").text(leng);
			if(leng>=41){
				$(this).val($(this).val().substr(0,40));
				alert("프로젝트 명은 40자를 넘길 수 없습니다");
				$("#pnameLength").text(40);
			}
		});
		$("[name=personnel]").change(function(){
			var person = $(this).val();
			if(parseInt(person)<0){
				alert("인원은 음수로 설정할 수 없습니다!");
				$(this).val(0);
			}			
		});
		$("input[name='personnel']").bind('keyup', function(e){
			var rgx1 = /\D/g;
			var rgx2 = /(\d+)(\d{3})/;
			var num = this.value.replace(rgx1,"");
			
			while (rgx2.test(num)) num = num.replace(rgx2, '$1' + ',' + '$2');
			this.value = num;
		});
		$("input[name='budget']" ).bind('keyup', function(e){
			var rgx1 = /\D/g;
			var rgx2 = /(\d+)(\d{3})/;
			var num = this.value.replace(rgx1,"");
			
			while (rgx2.test(num)) num = num.replace(rgx2, '$1' + ',' + '$2');
			this.value = num;
		});
		$("#startdate, #enddate").datepicker({
			dateFormat:'yy-mm-dd',
			minDate:0
		});
		$("#insert_project").click(function(){
			if($("[name=pname]").val()!=""&&$("[name=empno]").val()!=""
					&&$("[name=kindno]>option:selected").val()!=""
					&&$("[name=personnel]").val()!=""
					&&$("[name=budget]").val()!=""
					&&$("[name=startdate]").val()!=""
					&&$("[name=enddate]").val()!=""){
					var budget = parseInt($("[name=budget]").val().replace(/,/g,""));
					$("[name=budget]").val(budget);					
					$("form").submit();
			}else if($("[name=pname]").val()==""){
				alert("프로젝트명을 입력해주세요!");
				$("[name=pname]").focus();
			}else if($("[name=kindno]>option:selected").val()==""){
				alert("프로젝트 분류를 선택해주세요!");
			}else if($("[name=personnel]").val()==""){
				alert("프로젝트 인원을 입력해주세요!");
				$("[name=personnel]").focus();
			}else if($("[name=budget]").val()==""){
				alert("프로젝트 예산을 입력해주세요");
				$("[name=budget]").focus();
			}else if($("[name=startdate]").val()==""){
				alert("프로젝트 시작 날짜를 선택해주세요!");
			}else if($("[name=enddate]").val()==""){
				alert("프로젝트 종료 날짜를 선택해주세요!");
			}
		});
		var isInsert ="${isInsert}";
		if(isInsert!=""){
			if(isInsert=="Y"){
				alert("프로젝트가 생성되었습니다")
				$(location).attr("href","${path}/project.do?method=main");
			
			}
		}
		$("#cancel_btn").click(function(){
			$(location).attr("href","${path}/project.do?method=main");
		});
	});
	
</script>
</html>