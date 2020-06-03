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
	th{background-color:#E6E6F2;font-weight:bold;text-align:center;}
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
	#upload_result{display:none;}
	#addDivTask{display:none;}
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
        <div id="wholeContainer" class="dashboard-wrapper">
            <div class="dashboard-ecommerce">
                <div id="mainContainer" class="container-fluid dashboard-content">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                            	<!-- 페이지 타이틀 -->
                                <h2 class="pageheader-title">업무 상세</h2>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><span class="breadcrumb-link">내 업무</span></li>
                                            <li class="breadcrumb-item active" aria-current="page">업무관리</li>
                                            <li class="breadcrumb-item active" aria-current="page">업무상세</li>
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
                    	<form method="post" action="${path}/task.do?method=manage">
                    		<input type="hidden" name="empno" value="${mem.empno}"/>
                    	</form>
                        <div class="row">                            
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
		                        <div class="card">
		                            <h5 class="card-header"><b>업무정보</b></h5>
		                            <div class="card-body">
		                            	<table class="table table-bordered" style="font-size:13px;">
											<tbody>
												<tr>
													<th style="width:9%">업무명</th>
													<td style="width:16%">${task.title}</td>
													<th>담당자</th>
													<td>
														${task.name}
														<c:if test="${task.rname eq 'PM'}">
															<span class="badge badge-primary">PM</span>
														</c:if>
														<c:if test="${task.rname eq '백엔드'}">
															<span class="badge badge-info">백엔드</span>
														</c:if>
														<c:if test="${task.rname eq '프론트엔드'}">
															<span class="badge badge-warning">프론트엔드</span>
														</c:if>
													</td>
													<th>내용</th>
													<td colspan="3">${task.content}</td>
												</tr>
												<tr>
													<th>상위업무명</th>
													<td>
														<c:if test="${task.reftitle eq '' }">
															없음
														</c:if>
														<c:if test="${!task.reftitle ne''}">
															${task.reftitle}
														</c:if>														
													</td>
													<th style="width:9%">배정일</th>
													<td style="width:16%">${task.assigndate}</td>
													<th style="width:9%">상태</th>
													<td class="text-center" style="width:16%">${task.state}</td>
													<th style="width:9%">우선순위</th>
													<td class="text-center" style="width:16%">
														<c:if test="${task.priority==1}">
															상
														</c:if>
														<c:if test="${task.priority==2}">
															중
														</c:if>
														<c:if test="${task.priority==3}">
															하
														</c:if>
													</td>
												</tr>
												<tr>
													<th>예정 시작일</th>
													<td>${task.p_startdate}</td>
													<th>예정 종료일</th>
													<td>${task.p_enddate}</td>
													<th>업무 시작일</th>
													<td>
														${task.t_startdate}
														<c:if test="${task.t_startdate eq ''}">
															<input style="float:right" class="btn btn-primary" type="button" value="업무시작"/>
														</c:if>
													</td>													
													<th>업무 종료일</th>
													<td>${task.t_enddate}</td>
												</tr>
												<tr>
													<th>승인 신청일</th>
													<td>${task.r_condate}</td>
													<th>승인 완료일</th>
													<td>${task.condate}</td>
													<th>승인 메시지</th>
													<td colspan="3">${task.comments}</td>
												</tr>
												<tr>
													<th>결과파일</th>
													<td>파일명</td>													
													<th>업무 진행률</th>
													<td class="text-right"><fmt:formatNumber value="${task.progress*100}"/>%</td>
													<th>업무 분할 개수</th>
													<td id="divCount" class="text-right"></td>
													<th>분할 진행률</th>
													<td id="divProgress" class="text-right"></td>
												</tr>
											</tbody>
		                            	</table>
		                            </div>
		                        </div>
		                    </div>		                            
                    	</div>  
                    	<div class="row">
                    		<div id="" class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
		                        <div class="card">
		                            <h5 class="card-header" style="line-height:38px">
		                            	<b>업무분할</b>
		                            	<span style="font-size:12px;margin-left:20px;">업무 분할은 작업자의 편의를 위해 작업자가 임의로 작업을 분할하여 작업하는 것으로 실제 작업 진행률에는 반영되지 않습니다</span>
		                            	<input id="addTaskD" class="btn btn-dark" type="button" style="float:right;" value="분할추가">
		                            </h5>
		                            <div class="card-body">
		                            	<table class="table table-bordered" style="font-size:13px;">
											<tbody id="dtbody">
												
											</tbody>
										</table>		                            
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
    
    <!-- dialog -->
    <div id="addDivTask" title="업무 분할">
		<form id="taskDivFrm">
		<p style="font-size:13px;color:red"><span class="badge-dot badge-danger"></span>&nbsp;는 필수 입력 표시입니다</p>				
		<input type="hidden" name="taskno" value="${task.taskno}"/>
		<input type="hidden" name="projectno" value="${task.projectno}"/>
		<div class="form-group">
			<label for="title"><span class="badge-dot badge-danger"></span>&nbsp;분할업무 명</label>
			<input name="title" type="text" class="form-control"/>
		</div>
		<div id="start_end_date" class="form-group">
			<label for="startdate"><span class="badge-dot badge-danger"></span>&nbsp;업무 기간</label><br>			
			<div style="width:45%;float:left">					
				<input type="text" readonly id="startdate" name="startdate" class="form-control" style="background-color:#FFF">
			</div>
			<div style="width:10%;float:left;text-align:center">				
				<font style="vertical-align: inherit;">
					<font style="vertical-align: inherit;"> ~ </font>
				</font>
			</div>
			<div style="width:45%;float:left">
				<input type="text" readonly id="enddate" name="enddate" class="form-control" style="background-color:#FFF">	
			</div>			
		</div>
		<div class="form-group">
			<label for="etc">기타</label>
			<input type="text" class="form-control" name="etc"/>
        </div>
        </form>
	</div>
     
    <div id="upload_result" title="결과 업로드">
    	<div class="form-group">
    		<form id="uploadFrm" enctype="multipart/form-data" method="post">
    			<p style="font-size:13px;color:red"><span class="badge-dot badge-danger"></span>&nbsp;는 필수 입력 표시입니다</p>
				<input type="hidden" name="taskno" value="${task.taskno}"/>
				<input type="hidden" name="projectno" value="${task.projectno}"/>
				<input type="hidden" name="divno" value=""/>
				<input type="hidden" name="fname" value=""/>
	    		<label for="progress"><span class="badge-dot badge-danger"></span>&nbsp;진행률</label><br>
				<input style="width:90%;float:left;text-align:right;font-size:13px;" name="progress" type="text" class="form-control" placeholder="진행률입력 (0~100)%"/><span style="float:left;width:10%;text-align:center;font-size:13px;height:38px;line-height:38px">%</span><br>
				<div style="margin-top:30px;position:relative">
	    			<input type="file" class="custom-file-input" id="result_file" name="report">
	            	<label id="file_label" class="custom-file-label" for="report">파일 첨부</label>
	            </div>
            </form>
    	</div>
    </div>
    
    
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
	
</body>
<script src="${path}/a00_com/chart.js?v=6.4.3"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- --%>		
		callNotice();
		setTimeout(resize, 500);
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
				$("form").submit();
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
		
		
		// 데이터 불러오기
		callDiv();
		callDivProgCnt();
		
		var task_start="${task.p_startdate}";
		var task_end="${task.p_enddate}";
		$("#addDivTask [name=startdate]").datepicker({
			dateFormat:'yy-mm-dd',
			minDate:task_start,
			maxDate:task_end
		});
		var sd = "";
		$("#addDivTask [name=startdate]").change(function(){
			sd=$(this).val();
			$("#addDivTask [name=enddate]").datepicker({
				dateFormat:'yy-mm-dd',
				minDate:sd,
				maxDate:task_end
			});
		});
		$("#addDivTask [name=enddate]").click(function(){
			if(sd==""){
				alert("시작일을 먼저 선택해주세요");
			}
		});
		
		
		// 분할업무 추가
		$("#addTaskD").click(function(){
        	$("#taskDivFrm")[0].reset();
			$( "#addDivTask" ).dialog({
		        autoOpen: false,
		        height: 450,
		        width: 500,
		        modal: true,
		        buttons:{
		        	"추가" : function(){
		        		if($("#addDivTask [name=title]").val()!=""&&$("#addDivTask [name=startdate]").val()!=""&&$("#addDivTask [name=enddate]").val()!=""){
		        			var addDiv={};
			        		addDiv.taskno = $("#addDivTask [name=taskno]").val();
			        		addDiv.projectno = $("#addDivTask [name=projectno]").val();
			        		addDiv.title = $("#addDivTask [name=title]").val();
			        		addDiv.startdate = $("#addDivTask [name=startdate]").val();
			        		addDiv.enddate = $("#addDivTask [name=enddate]").val();
			        		addDiv.etc = $("#addDivTask [name=etc]").val();
			        		console.log(addDiv);
			        		
			        		// alert("추가");
			        		$.ajax({
								type:"post",
								url:"${path}/task.do?method=dinsert",
								data:addDiv, // 요청 데이터 전송 json객체형식 가능
								success:function(){
									alert("등록 완료!"); 	    			
									$("#addDivTask").dialog("close");
									callDiv();
									callDivProgCnt();
									setTimeout(resize, 500);
								},
								error:function(err){
									alert("등록에 실패하였습니다!")
									console.log(err);  
									$("#taskDivFrm")[0].reset();	    			
									$("#addDivTask").dialog("close");
								}
							});
		        		}else if($("#addDivTask [name=title]").val()==""){
		        			alert("분할업무명을 입력해주세요!");
		        			$("#addDivTask [name=title]").focus();
		        		}else if($("#addDivTask [name=startdate]").val()==""){
		        			alert("업무 시작일을 선택해주세요!");
		        			$("#addDivTask [name=startdate]").focus();
		        		}else if($("#addDivTask [name=enddate]").val()==""){
		        			alert("업무 종료일을 선택해주세요!");
		        			$("#addDivTask [name=enddate]").focus();
		        		}
		        		
		        	},
		        	"취소" : function(){
		        		$("#addDivTask").dialog("close");
		        	}
		        },
		        close: function() {
		        	$("#taskDivFrm")[0].reset();
		        }
		    });
			$("#addDivTask").attr("title","분할업무 추가");
			$("#addDivTask").dialog("open");
		});
		$("#result_file").change(function(){
			var filename = this.files[0].name;
			$("#file_label").text(filename);
		});
		
		
	});
	function callDiv(){
		var taskno = "${task.taskno}";
		var projectno = "${task.projectno}";
		$.ajax({
			type:"post",
			url: "${path}/task.do?method=dlist&taskno="+taskno+"&projectno="+projectno,
			dataType:"json",
			success : function(data){
				var list = `<tr><th style="width:5%">번호</th>`+
					`<th style="width:15%">분할업무명</th>`+
					`<th style="width:8%">시작일</th>`+
					`<th style="width:8%">종료일</th>`+
					`<th style="width:5%">진행률</th>`+
					`<th style="width:26%">기타</th>`+
					`<th style="width:22%">결과파일</th>`+
					`<th style="width:11%">수정/삭제</th></tr>`;
				for(var i=0;i<data.dlist.length;i++){
					list+=`<tr><td class="text-center">`+(i+1)+`</td><td>`+data.dlist[i].title+`</td><td>`+
					data.dlist[i].startdate+`</td><td>`+data.dlist[i].enddate+`</td><td class="text-right">`+
					data.dlist[i].progress*100+`%</td><td>`+data.dlist[i].etc+`</td><td><span onclick="fileDown('`+data.dlist[i].fname+`')">`+data.dlist[i].fname+`</span>`;
					if(data.dlist[i].fname=="없음"){
						list+=`<input onclick="uploadTaskD(`+data.dlist[i].divno+`,`+data.dlist[i].progress+`)" type="button" style="float:right;font-size:13px;" class="btn btn-primary" value="결과등록"/></td>`;
					}else{
						list+=`<input onclick="changeTaskD(`+data.dlist[i].divno+`,'`+data.dlist[i].fname+`',`+data.dlist[i].progress+`)" type="button" style="float:right;font-size:13px;" class="btn btn-primary" value="결과 수정"/></td>`;
					}										
					list+=`<td><input onclick="updateTaskD(`+data.dlist[i].divno+`,'`+data.dlist[i].title+`','`+data.dlist[i].startdate+`','`+data.dlist[i].enddate+`','`+data.dlist[i].etc+`')" type="button" class="btn btn-dark" value="수정" style="margin-right:10px;font-size:13px;"/>`+
					`<input style="font-size:13px;" onclick="deleteTaskD(`+data.dlist[i].divno+`)" type="button" class="btn btn-danger" value="삭제"/></td></tr>`;					
				}
				$("#dtbody").html(list);
				
			},
			error : function(err){
	   			console.log(err);
	   		}
		});
	}
	function resize(){
		var defaults = 485;
		var heights = $("#divisionTb").height();
		$("#mainContainer").css("height",defaults+heights+30+"px");
		$("#wholeContainer").css("height",$("#mainContainer").height()+40+"px");
	}
	function updateTaskD(divno,title, start, end, etc){
		$("#addDivTask [name=title]").val(title);
		$("#addDivTask [name=startdate]").val(start);
		$("#addDivTask [name=enddate]").val(end);
		$("#addDivTask [name=etc]").val(etc);
		
		$( "#addDivTask" ).dialog({
	        autoOpen: false,
	        height: 450,
	        width: 500,
	        modal: true,
	        buttons:{
	        	"수정" : function(){
	        		if($("#addDivTask [name=title]").val()!=""&&$("#addDivTask [name=startdate]").val()!=""&&$("#addDivTask [name=enddate]").val()!=""){
	        			var addDiv={};
		        		addDiv.divno = divno;
		        		addDiv.taskno = $("#addDivTask [name=taskno]").val();
		        		addDiv.projectno = $("#addDivTask [name=projectno]").val();
		        		addDiv.title = $("#addDivTask [name=title]").val();
		        		addDiv.startdate = $("#addDivTask [name=startdate]").val();
		        		addDiv.enddate = $("#addDivTask [name=enddate]").val();
		        		addDiv.etc = $("#addDivTask [name=etc]").val();
		        		console.log(addDiv);
		        		$.ajax({
							type:"post",
							url:"${path}/task.do?method=dupdate",
							data:addDiv, // 요청 데이터 전송 json객체형식 가능
							success:function(){
								alert("수정 완료!"); 	    			
								$("#addDivTask").dialog("close");
								callDiv();
								callDivProgCnt();
							},
							error:function(err){
								alert("수정에 실패하였습니다!")
								console.log(err);  
								$("#taskDivFrm")[0].reset();	    			
								$("#addDivTask").dialog("close");
							}
						});
	        		}else if($("#addDivTask [name=title]").val()==""){
	        			alert("분할업무명을 입력해주세요!");
	        			$("#addDivTask [name=title]").focus();
	        		}else if($("#addDivTask [name=startdate]").val()==""){
	        			alert("업무 시작일을 선택해주세요!");
	        			$("#addDivTask [name=startdate]").focus();
	        		}else if($("#addDivTask [name=enddate]").val()==""){
	        			alert("업무 종료일을 선택해주세요!");
	        			$("#addDivTask [name=enddate]").focus();
	        		}        		
	        	},
	        	"취소" : function(){
	        		$("#addDivTask").dialog("close");
	        	}
	        },
	        close: function() {
	        	$("#taskDivFrm")[0].reset();
	        }
	    });
		$("#addDivTask").attr("title","분할업무 수정");
		$("#addDivTask").dialog("open");
	}
	function deleteTaskD(divno){
		if(confirm("정말 삭제하시겠습니까?")){
			var addDiv={};
    		addDiv.divno = divno;
    		addDiv.taskno = $("#addDivTask [name=taskno]").val();
    		addDiv.projectno = $("#addDivTask [name=projectno]").val();
    		$.ajax({
				type:"post",
				url:"${path}/task.do?method=ddelete",
				data:addDiv, // 요청 데이터 전송 json객체형식 가능
				success:function(){
					alert("삭제 완료!"); 	    		
					callDiv();
					callDivProgCnt();
					setTimeout(resize, 500);
				},
				error:function(err){
					alert("삭제에 실패하였습니다!")
					console.log(err);
				}
			});
		}
	}
	function uploadTaskD(divno, progress){
		$("#upload_result [name=progress]").val(progress*100);
		// 결과 업로드 다이얼로그
		$( "#upload_result" ).dialog({
		        autoOpen: false,
		        height: 335,
		        width: 300,
		        modal: true,
		        buttons:{
		        	"업로드" : function(){
		        	 	var progress = $("#upload_result [name=progress]").val()
		        	 	$("#upload_result [name=progress]").val(progress/100);
		        	 	$("#upload_result [name=divno]").val(divno);
		        	 	
		        		var form = $('#uploadFrm')[0];
		        		var data = new FormData(form);
		        	 	if($("#upload_result [name=progress]").val()!=""&&$("#upload_result [name=progress]").val()!=null){
		        	 		$.ajax({
				        		type: "POST",
				        	    enctype: 'multipart/form-data',
				        	    url: "${path}/task.do?method=dupload",
				        	    data: data,
				        	    processData: false,
				        	    contentType: false,
				        	    cache: false,
				        	    timeout: 600000,
				        	    success: function (data) {
				        	     	alert("업로드 완료");
									callDiv();
									callDivProgCnt();
							    	$("#upload_result").dialog("close");
				        	    },
				        	    error: function (e) {
				        	        console.log("ERROR : ", e);
				        	      	alert("업로드 실패!");
									callDiv();
							    	$("#upload_result").dialog("close");
				        	    }
				        	});		        	 		
		        	 	}else{
		        	 		alert("진행률을 입력해주세요!");
		        	 	}        		
		        	},
		        	"취소" : function(){
		        		$("#upload_result").dialog("close");
		        	}
		        },
		        close: function() {
		        	$("#uploadFrm")[0].reset();
					$("#file_label").text("파일첨부");
		        }
		});
		$("#upload_result").dialog("open");
	}
	function changeTaskD(divno, fname, progress){
		$("#upload_result [name=progress]").val(progress*100);
		$("#file_label").text(fname);
		// 결과 업로드 다이얼로그
		$( "#upload_result" ).dialog({
		        autoOpen: false,
		        height: 335,
		        width: 300,
		        modal: true,
		        buttons:{
		        	"업로드" : function(){
		        	 	var progress = $("#upload_result [name=progress]").val()
		        	 	$("#upload_result [name=progress]").val(progress/100);
		        	 	$("#upload_result [name=divno]").val(divno);
		        	 	$("#upload_result [name=fname]").val(fname);
		        	 	
		        		var form = $('#uploadFrm')[0];
		        		var data = new FormData(form);
		        	 	
		        		$.ajax({
		        	    	type: "POST",
		        	        enctype: 'multipart/form-data',
		        	        url: "${path}/task.do?method=dupload2",
		        	        data: data,
		        	        processData: false,
		        	        contentType: false,
		        	        cache: false,
		        	        timeout: 600000,
		        	        success: function (data) {
		        	         	alert("업로드 완료");
								callDiv();
								callDivProgCnt();
					       		$("#upload_result").dialog("close");
		        	        },
		        	        error: function (e) {
		        	            console.log("ERROR : ", e);
		        	          	alert("업로드 실패!");
								callDiv();
					        	$("#upload_result").dialog("close");
		        	        }
		        	    });
		        		
		        	},
		        	"취소" : function(){
		        		$("#upload_result").dialog("close");
		        	}
		        },
		        close: function() {
		        	$("#uploadFrm")[0].reset();
					$("#file_label").text("파일첨부");
		        }
		});
		$("#upload_result").dialog("open");
	}
	
	function callDivProgCnt(){
		var taskno = "${task.taskno}";
		var empno = "${mem.empno}";
		$.ajax({
			type:"post",
			url:"${path}/task.do?method=dpc&taskno="+taskno+"&empno="+empno,
			dataType:"json",
			success:function(data){
				var progress = data.div.divprogress*100+"%";
				var cnt = data.div.divcnt;
				$("#divProgress").text(progress);
				$("#divCount").text(cnt);
			},
			error:function(err){
				console.log(err);
			}			
		});
	}
	
	function fileDown(fname){
		if(fname!="없음"){
			if(confirm("다운로드 하시겠습니까?")){
				$(location).attr("href","${path}/task.do?method=download&fname="+fname);
			}
		}		
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