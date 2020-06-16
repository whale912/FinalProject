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
	#reject_reason{display:none;}
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
                <div id="mainContainer" class="container-fluid dashboard-content " style="min-height:824px;">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                            	<!-- 페이지 타이틀 -->
                                <h2 class="pageheader-title">업무 관리</h2>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><span class="breadcrumb-link">내 업무</span></li>
                                            <li class="breadcrumb-item active" aria-current="page">업무관리</li>
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
                    	<form id="pageFrm" method="post" action="${path}/task.do?method=manage">
                    		<input type="hidden" name="empno" value="${mem.empno}"/>
                    		<input type="hidden" name="taskno" value=""/>
                    	</form>
                        <div class="row">                            
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
		                        <div class="card">
		                            <h5 class="card-header">업무 관리<span style="color:red;font-size:13px;margin-left:10px">표의 각 행을 더블 클릭 시 프로젝트 상세 페이지로 이동합니다</span></h5>
		                            <div class="card-body">
		                            	<div class="table-responsive">
		                                    <table class="table table-striped table-bordered first" style="font-size:13px;">
		                                        <thead>
		                                            <tr style="text-align:center;font-weight:bold">
		                                                <th style="width:19%;">프로젝트명</th>
		                                                <th style="width:19%;">업무명</th>
		                                                <th style="width:7%;">예정 시작일</th>
		                                                <th style="width:7%;">예정 종료일</th>
		                                                <th style="width:7%;">업무 시작일</th>
		                                                <th style="width:7%;">업무 종료일</th>
		                                                <th style="width:5%;">진행률</th>
		                                                <th style="width:7%;">승인 신청일</th>
		                                                <th style="width:7%;">승인 완료일</th>
		                                                <th style="width:7%;">상태</th>
		                                                <th style="width:7%;">승인</th>
		                                            </tr>
		                                        </thead>
		                                        <tbody>
		                                        	
		                                        	<c:forEach var="task" items="${tlist}" varStatus="sts">
			                                            <tr ondblclick="go_detail(${task.taskno})">
			                                                <td>${task.pname}</td>
			                                                <td>${task.title}</td>
			                                                <td>${task.p_startdate}</td>
			                                                <td>${task.p_enddate}</td>
			                                                <td>${task.t_startdate}</td>
			                                                <td>${task.t_enddate}</td>
			                                                <td class="text-right">${task.progress*100}%</td>
			                                                <td>${task.r_condate}</td>
			                                                <td>${task.condate}</td>
			                                                <td class="text-center">				                                                
			                                                	<c:if test="${task.state eq '반려'}">
			                                                		<span class="btn btn-danger" style="font-size:13px;" onclick="showReason('${task.comments}')">반려</span>
			                                                	</c:if>
			                                                	<c:if test="${task.state ne '반려'}">${task.state}</c:if>
			                                                </td>
			                                                <td class="text-center">
			                                                
			                                                	<c:if test="${task.state eq '승인완료'}">
			                                                		<input style="font-size:13px;" type="button" value="승인완료" class="btn btn-success" disabled="disabled">
			                                                	</c:if>
			                                                	<c:if test="${task.state eq '승인대기'}">
			                                                		<input style="font-size:13px;" type="button" value="승인신청" class="btn btn-primary" disabled="disabled">
			                                                	</c:if>
			                                                	<c:if test="${task.state eq '배정완료'}">
			                                                		<input onclick="go_confirm(${task.taskno},${task.projectno})" style="font-size:13px;" type="button" value="승인신청" class="btn btn-primary">
			                                                	</c:if>
			                                                	<c:if test="${task.state eq '반려'}">
			                                                		<input onclick="go_reconfirm(${task.taskno},${task.projectno},'${task.fname}')" style="font-size:13px;" type="button" value="재승인신청" class="btn btn-primary">
			                                                	</c:if>
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
	
	<div id="taskConfirm" title="업무 승인 신청">
		<form id="taskConfirmFr" enctype="multipart/form-data" method="post" action="${path}/task.do?method=trconfirm">
	    	<p style="font-size:13px;color:red;margin-top:10px;"><span class="badge-dot badge-danger"></span>&nbsp;는 필수 입력 표시입니다</p>
			<input type="hidden" name="taskno"/>
			<input type="hidden" name="projectno"/>
			<input type="hidden" name="fname"/>
			<div class="form-group">
				<label for="r_comments">요청 코멘트</label>
				<input type="text" class="form-control" name="r_comments"/>
	        </div>
	        <div style="margin-top:30px;position:relative">
		    	<input type="file" class="custom-file-input" id="result_file" name="report">
		       	<label id="file_label" class="custom-file-label" for="report">파일 첨부</label>
		    </div>
		</form>    
	</div>
	<div id="reject_reason" title="반려 이유 확인">
		<div class="form-group">
			<label for="r_comments">반려이유</label>
			<input type="text" class="form-control" name="comments" readonly/>
	    </div>	
	</div>
	
	
</body>
<script src="${path}/a00_com/chart.js?v=6.4.3"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- --%>
		callNotice()
		function resize(){
			var defaults = 854;
			var heights = "${tlist.size()-10}";
			var add_height=0;
			if(heights>=1){
				add_height=heights*58;
			}
			$("#mainContainer").css("height",defaults+add_height+"px");
			$("#wholeContainer").css("height",$("#mainContainer").height()+40+"px");
		}
		setTimeout(resize, 200);
		
		var isOK = "${isOK}";
		if(isOK!=""){
			if(isOK=="Y"){
				alert("승인 신청되었습니다");
				$(location).attr("href","${path}/task.do?method=manage");
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
		
		$("#result_file").change(function(){
			var filename = this.files[0].name;
			$("#file_label").text(filename);
		});
		
	});
	
	function go_detail(no){
		$("[name=taskno]").val(no);
		$("#pageFrm").attr("action","${path}/task.do?method=detail");
		$("#pageFrm").submit();
	}
	function go_confirm(taskno, projectno){
		$("#taskConfirm").dialog({
			autoOpen: false,
	        height: 350,
	        width: 800,
	        modal: true,
	        buttons:{
	        	"신청":function(){
	        	 	$("#taskConfirm [name=taskno]").val(taskno);
	        	 	$("#taskConfirm [name=projectno]").val(projectno);
	        	 	var report= $("#taskConfirm [name=report]").val();      	 	
	        	 	$('#taskConfirmFr').attr("action","${path}/task.do?method=trconfirm");
	        	 	$('#taskConfirmFr').submit();
	        	},
	        	"취소":function(){
	        		$("#taskConfirm").dialog("close");
	        	}
	        },
	        close: function() {
	        	$("#taskConfirmFr")[0].reset();
	        }
		});
		$("#taskConfirm").dialog("open");
	}
	function go_reconfirm(taskno,projectno,fname){	
		$("#file_label").text(fname);
		$("#taskConfirm").dialog({
			autoOpen: false,
	        height: 350,
	        width: 800,
	        modal: true,
	        buttons:{
	        	"신청":function(){
	        	 	$("#taskConfirm [name=taskno]").val(taskno);
	        	 	$("#taskConfirm [name=projectno]").val(projectno);
	        	 	$("#taskConfirm [name=fname]").val(fname);	        	 	
	        	 	$('#taskConfirmFr').attr("action","${path}/task.do?method=retrconfirm");
	        	 	$('#taskConfirmFr').submit();
	        	},
	        	"취소":function(){
	        		$("#taskConfirm").dialog("close");
	        	}
	        },
	        close: function() {
	        	$("#taskConfirmFr")[0].reset();
	        }
		});
		$("#taskConfirm").dialog("open");
	}
	function showReason(comments){
		$("#reject_reason [name=comments]").val(comments);
		$("#reject_reason").dialog({
			autoOpen:false,
			height:250,
			width:500,
			modal:true,
			buttons:{
				"확인":function(){
					$("#reject_reason").dialog("close");
				},
				"취소":function(){
					$("#reject_reason").dialog("close");
				}
			},
			close:function(){
				
			}
		});
		$("#reject_reason").dialog("open");
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