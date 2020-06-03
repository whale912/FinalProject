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
<link rel="stylesheet" href="${path}/a00_com/chart.css?v=6.4.3">
<link rel="stylesheet" href="${path}/a00_com/index.css?v=6.4.3">
<style type="text/css">
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
	.gantt_cell{padding-top:5px;line-height:23.19px;}
	.gantt_tree_content{line-height:23.19px;}
	#taskConfirm{display:none}
</style>
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
        <div id="wholeContainer" class="dashboard-wrapper" style="height:864px">
            <div class="dashboard-ecommerce">
                <div id="mainContainer" class="container-fluid dashboard-content" style="height:824px">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                            	<!-- 페이지 타이틀 -->
                                <h2 class="pageheader-title">업무 승인</h2>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><span class="breadcrumb-link">프로젝트</span></li>
                                            <li class="breadcrumb-item active" aria-current="page">업무 승인</li>
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
                    	<form id="pageFrm" method="post" action="${path}/project.do?method=confirm">
                    		<input type="hidden" name="empno" value="${mem.empno}"/>
                    	</form>
                        <div class="row">                            
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
		                        <div class="card">
		                            <h5 class="card-header">업무 승인</h5>
		                            <div class="card-body">
		                            	<div class="table-responsive">
		                                    <table class="table table-striped table-bordered first" style="font-size:13px;">
		                                        <thead>
		                                            <tr style="text-align:center;font-weight:bold">
		                                                <th style="width:18%;">프로젝트명</th>
		                                                <th style="width:18%;">업무명</th>
		                                                <th style="width:7%;">담당자</th>
		                                                <th style="width:7%;">예정 시작일</th>
		                                                <th style="width:7%;">예정 종료일</th>
		                                                <th style="width:7%;">업무 시작일</th>
		                                                <th style="width:7%;">업무 종료일</th>
		                                                <th style="width:7%;">승인 신청일</th>
		                                                <th style="width:7%;">승인 완료일</th>
		                                                <th style="width:7%;">상태</th>
		                                                <th style="width:7%;">승인</th>
		                                            </tr>
		                                        </thead>
		                                        <tbody>
		                                        	<c:if test="${tlist.size()==0}">
		                                        		<tr class="text-center"><th colspan="11">승인 요청 중인 업무가 없습니다</th></tr>
		                                        	</c:if>
		                                        	<c:forEach var="tinfo" items="${tlist}" varStatus="sts">
			                                            <tr>
			                                                <td>${tinfo.pname}</td>
			                                                <td>${tinfo.title}</td>
			                                                <td>${tinfo.name}</td>
			                                                <td>${tinfo.p_startdate}</td>
			                                                <td>${tinfo.p_enddate}</td>
			                                                <td>${tinfo.t_startdate}</td>
			                                                <td>${tinfo.t_enddate}</td>
			                                                <td>${tinfo.r_condate}</td>
			                                                <td>${tinfo.condate}</td>
			                                                <td class="text-center">${tinfo.state}</td>
			                                                <td class="text-center">			                                                
			                                                	<input onclick="go_confirm(${tinfo.taskno},${tinfo.projectno},'${tinfo.fname}','${tinfo.r_comments}')" style="font-size:13px;" type="button" value="요청확인" class="btn btn-primary">			                                                	
			                                                </td>
			                                            </tr>
		                                            </c:forEach>		                                            
		                                        </tbody>		                                        
		                                    </table>
		                                    
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
	<script src="${path}/a00_com/dhtmlxgantt.js?v=7.0.2"></script>
	
	<!-- 다이얼로그 -->
	
	<div id="taskConfirm" title="요청 내용 확인">
		<form id="taskConfirmFr" method="post">
			<input type="hidden" name="taskno"/>
			<input type="hidden" name="projectno"/>
			<div class="form-group">
				<label for="r_comments">요청 코멘트</label>
				<input type="text" style="background-color:#FFF" class="form-control" id="r_comments" readonly/>
	        </div>
	        <div class="form-group">
	        	<label for="report">결과 파일</label>
		    	<input type="text" style="background-color:#FFF" class="form-control" id="result_file" readonly>
		    </div>
		    <div class="form-group">
				<label for="r_comments">승인/반려 코멘트</label>
				<input type="text" style="background-color:#FFF" class="form-control" name="comments"/>
	        </div>
	        <div style="width:100%;text-align:right">
	        	<input id="tconfirmBtn" type="button" class="btn btn-primary" value="승인"/>
	        	<input id="rejectBtn" type="button" class="btn btn-danger" value="반려"/>
	        </div>
		</form>    
	</div>
	
	
</body>
<script src="${path}/a00_com/chart.js?v=6.4.3"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- --%>		
		callNotice();
		function resize(){
			var defaults = 824;
			var heights = "${tlist.size()-10}";
			var add_height=0;
			if(heights>=1){
				add_height=heights*58;
			}
			$("#mainContainer").css("height",defaults+add_height+"px");
			$("#wholeContainer").css("height",$("#mainContainer").height()+40+"px");
		}
		setTimeout(resize, 200);
		var isConfirm = "${isConfirm}";
		var refCom = "${refCom}";
		var isCon2="${isCon2}";
		if(isCon2!=""){
			if(isCon2=="Y"){
				alert("승인처리 되었습니다");
				$(location).attr("href","${path}/project.do?method=main");
			}
		}
		
		if(isConfirm!=""){
			if(isConfirm=="Y"){
				alert("승인되었습니다");
				if(refCom!="0"){
					if(confirm("해당업무가 승인 되면서 상위 업무의 모든 하위 업무가 모두 완료되었습니다\n상위업무도 승인처리 하시겠습니까? ")){
						$(location).attr("href","${path}/project.do?method=tconfirmRef&taskno="+refCom);
					}				
				}else{
					$("#pageFrm").submit();
				}
			}
		}
		
		var isRj="${isRj}";
		if(isRj!=""){
			if(isRj=="Y"){
				alert("반려처리되었습니다");
				$("#pageFrm").submit();
			}
		}
		
		
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
			var who = "${param.empno}";
			if(who==""){
				$("#pageFrm").submit();
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
			history.back();
		}
		
		$("#result_file").click(function(){
			var fname=$(this).val();
			if(fname!="없음"){
				if(confirm("다운로드 하시겠습니까?")){
					$(location).attr("href","${path}/task.do?method=download&fname="+fname);
				}
			}			
		});
		
		$("#tconfirmBtn").click(function(){
			$("#taskConfirmFr").attr("action","${path}/project.do?method=tconfirm");
			$("#taskConfirmFr").submit(); 
		});
		$("#rejectBtn").click(function(){
			$("#taskConfirmFr").attr("action","${path}/project.do?method=reject");
			$("#taskConfirmFr").submit(); 
		})
		
	});
	function go_confirm(taskno,projectno,fname,comments){
		$("#taskConfirm [name=taskno]").val(taskno);
		$("#taskConfirm [name=projectno]").val(projectno);
		$("#r_comments").val(comments);
		$("#result_file").val(fname);
		$("#taskConfirm").dialog({
			autoOpen: false,
	        height: 390,
	        width: 500,
	        modal: true,
	        close: function() {
	        	$("#taskConfirmFr")[0].reset();
	        }
		});
		$("#taskConfirm").dialog("open");
	}
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