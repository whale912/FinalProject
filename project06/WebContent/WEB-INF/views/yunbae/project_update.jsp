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
		<jsp:include page="../nav_bar.jsp"/>
		<jsp:include page="../menu_bar.jsp"/> 
        
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
                                <h2 class="pageheader-title">프로젝트 수정</h2>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><span class="breadcrumb-link">프로젝트</span></li>
                                            <li class="breadcrumb-item"><a href="${path}/project.do?method=main" class="breadcrumb-link">프로젝트 관리</a></li>
                                            <li class="breadcrumb-item"><a href="${path}/project.do?method=detail&projectno=${project.projectno}" class="breadcrumb-link">프로젝트 상세</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">프로젝트 수정</li>
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
                                    <h5 class="card-header">프로젝트 수정</h5>
                                    <div class="card-body">
                                        <form method="post" action="${path}/project.do?method=update">
                                        <input type="hidden" name="projectno" value="${project.projectno}"/>
                                        <p style="font-size:10px;" class="text-danger"><span class="badge-dot badge-danger"></span>&nbsp;는 필수 입력 표시입니다</p>
                                            <div class="form-group" style="height:75px;">
                                                <label for="pname" class="col-form-label"><span class="badge-dot badge-danger"></span>&nbsp;프로젝트 명</label><br>
                                                <div style="width:90%;float:left">
                                                	<input id="pname" name="pname" type="text" class="form-control" style="width:100%;margin:0px" maxlength="40" value="${project.pname}"/>
                                                </div>
                                                <div style="float:left;width:10%;height:38px;line-height:38px;">
                                                <span style="margin-left:10px;"><span id="pnameLength">0</span>/40</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="empno"><span class="badge-dot badge-danger"></span>&nbsp;담당자 사번(PM)</label>
                                                <input id="empno" name="empno" value="${project.empno}" type="text" class="form-control" readonly style="width:40%">
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
                                                	<input name="personnel" id="personnel" type="number" class="form-control" placeholder="인원(명)" style="width:100%;text-align:right" value="${project.personnel}">
                                                </div>
                                                <div style="width:10%;float:left;height:38px;line-height:38px;margin-left:10px;">명</div><br>
                                            </div>
                                            <div class="form-group" style="margin-top:20px;">
                                                <label for="budget" class="col-form-label"><span class="badge-dot badge-danger"></span>&nbsp;예산</label><br>
                                                <div style="width:20%;float:left">
                                                	<input id="budget" name="budget" type="text" class="form-control" placeholder="예산(원)" style="width:100%;text-align:right" value="${project.budget}">
                                            	</div>
                                            	<div style="width:10%;float:left;height:38px;line-height:38px;margin-left:10px;">원</div><br>
                                            </div>
                                            <label style="margin-top:20px;"><span class="badge-dot badge-danger"></span>&nbsp;프로젝트 기간</label>
                                            <div class="form-group row" style="margin-top:-10px;">                                            	
                                            	<div class="col-sm-4 col-lg-3 mb-3 mb-sm-0">
                                                	<input id="startdate" name="startdate" type="text" placeholder="시작 날짜" class="form-control" style="text-align:center" value="${project.startdate}">
                                            	</div>
                                            	<div class="col-sm-4 col-lg-3">
                                                	<input id="enddate" name="enddate" type="text" placeholder="종료 날짜" class="form-control" style="text-align:center" value="${project.enddate }">
                                            	</div>
                                        	</div>
                                        		
                                        	
                                        </form>
                                        
                                    </div>  
                                    <div class="card-footer d-flex text-muted">
                                    	<div style="width:100%;text-align:right">
                                    		<input id="cancel_btn" type="button" value="취소" class="btn btn-danger" style="width:100px;float:right"/>                                        	
                                        	<input id="update_project" type="button" value="수정" class="btn btn-dark" style="width:100px;float:right;margin-right:10px;"/>                                        	
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
		callNotice();
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
		if(auth!="2"){
			alert("접근 권한이 없습니다!");
			$(location).attr("href", "${path}/login.do?method=base");
		}
		var lengd = $("[name=pname]").val().length;
		$("#pnameLength").text(lengd);
		var kindno = "${project.kindno}";
		$("[name=kindno]").val(kindno);
		
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
		var projectno = "${project.projectno}";
		$("#cancel_btn").click(function(){
			$(location).attr("href","${path}/project.do?method=detail&projectno="+projectno);
		});
		$("#update_project").click(function(){
			$("form").submit();
		});
		var isUpdate = "${isUpdate}";
		if(isUpdate!=""){
			if(isUpdate=="Y"){
				alert("수정되었습니다!");
				$(location).attr("href","${path}/project.do?method=detail&projectno="+projectno);
			}
		}
	});
	function callNotice(){
		var empno = "${mem.empno}";
		$.ajax({
			type:"post",
			url:"${path}/project.do?method=notice&empno="+empno,
			dataType:"json",
			success:function(data){
				var content = "";
				for(var i=0;i<data.nlist.length;i++){
					content += `<div class="list-group-item list-group-item-action active">`+
                        		`<div class="notification-info">`+                                                    
                        		`<div class="notification-list-user-block" style="padding-left:0px;">`+
								`<span class="notice_content text-primary">`+data.nlist[i].text+`</span>`+
	                    		`<div class="notification-date">`+data.nlist[i].notice+`</div>`+
	                    		`</div></div></div>`;
				}
				$("#notice_wrap").html(content);
			},
			error:function(err){
				console.log(err);
			}
		});		
	} 
	
</script>
</html>