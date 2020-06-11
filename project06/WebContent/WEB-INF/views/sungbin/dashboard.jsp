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
.pagination {
	justify-content: center;
	align-items: center;
}

.form-control-select {
	width: 20%;
	min-width: 250px;
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


th {background-color: #E6E6F2}

.gantt_task_line.gantt_project {color: white;}

.gantt_side_content {color: #333;}

.summary-bar {font-weight: bold;}

.gantt_resource_task .gantt_task_content {color: inherit;}

.gantt_resource_task .gantt_task_progress {	background-color: rgba(33, 33, 33, 0.3);}

.gantt_cell:nth-child(1) .gantt_tree_content {
	border-radius: 16px;
	width: 100%;
	height: 80%;
}

.gantt_cell {
	padding-top: 5px;
	line-height: 23.19px;
}

.gantt_tree_content {line-height: 23.19px;}

.gantt_task_progress {
	text-align: left;
	padding-left: 10px;
	box-sizing: border-box;
	color: white;
	font-weight: bold;
}

#schDiv {
	float: right;
	display: flex;
	align-items: center;
}

#schBtn {height: 38px;}
#chart3 { display: none; }
#pinfo{display:none;}
</style>
<script type="text/javascript">
	
function goPage(no){
	$("#curPage").val(no);
	$("#form1").submit();
}	
function goDetail(no){
	$(location).attr("href","${path}/issue.do?method=dashDetail&projectno="+no);
} 

	
</script>
</head>
<body>
	<!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
		<jsp:include page="../nav_bar.jsp"/>
	    <jsp:include page="../menu_bar.jsp"/>          
        
        
        <div class="dashboard-wrapper" style="height:1750px">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content" style="height:1750px;">
                    
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                            	<!-- 페이지 타이틀 -->
                                <h2 class="pageheader-title">Dashboard 전체</h2>
                                
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
							<form method="post" id="form2">
		                    	<input type="hidden" name="memempno" value="${mem.empno}"/>
		                    </form>
		                        <div class="card">
		                            <div class="card-header" >
		                            
		                            <form:form id="form1" class="form" commandName="psch" method="post">
		                            <form:hidden path="curPage"	/>
		                            <div style="float:left;"><span style="float:left;font-size:20px;">프로젝트</span> &nbsp;<span style="color:red;font-size:13px;">표의 각 행을 더블 클릭 시 프로젝트 상세 페이지로 이동합니다</span></div>
		                            <div id="schDiv">&nbsp;&nbsp;
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
		                                            </tr>
		                                        </thead>
		                                        <tbody style="font-size:13px;"> 
		                                        <c:forEach var="pro" items="${prolist}" varStatus="sts">
		                                            <tr>
		                                                <td style="cursor:pointer" ondblclick="javascript:goDetail(${pro.projectno})">${pro.pname}</td>
		                                                <td>${pro.name}</td>
		                                                <td>${pro.state}</td>
		                                                <td>${pro.startdate}</td>
		                                                <td>${pro.enddate}</td>
		                                                <td style="text-align:right;"><fmt:formatNumber type="percent" value="${pro.progress}" /></td>
		                                                <td style="text-align:right;">${pro.issuecnt}</td>
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
                        <!-- col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 -->
					        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 col-12" style="width:50%;">
	                        <div class="card" style="height:490px;">
	                            <h5 class="card-header"style="font-weight:bold;height:66px;line-height:40px;">연도별 프로젝트</h5>
	                            <div class="card-body" >
	                            <div class="dhx_sample-container__widget" id="chart_bar"></div>
	                                
	                            </div>
	                        </div>
	                    	</div>
	                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12" style="width:50%">
					        	<div class="card" style="height:490px;">
					            	<div class="card-header" style="font-weight:bold;height:66px;line-height:40px;">분류별 프로젝트 현황
					            	 <select class="form-control" id="selectedYear" style="float:right;width:50%;-webkit-appearance:button;" onchange="selectYear()" >					            		
					            		<c:forEach var="p" items="${pieYear}" varStatus="sts">
				                        	<option value="${p.enddate}">${p.enddate}</option>
				                        </c:forEach>
					            	</select>
					            	</div>
					            	<div class="card-body" style="height:434px;padding-top:60px;">
					           			<div id="c3chart_pie1"></div>
					            	</div>
					            </div>
					        </div>
					        
					        
					        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12" style="width:50%">
					        	<div class="card" style="height:490px;">
					            	<div class="card-header" style="font-weight:bold;height:75px;line-height:40px;">이슈 현황
					            	<select class="form-control" id="input-select" style="float:right;width:50%;-webkit-appearance:button;">
					            		<option selected value="2">위험</option>
					            		<option value="3">기회</option>
					            	</select>
					            	</div>
					            	<div class="card-body" style="height:434px;padding-top:0;padding-left:80px;margin:0;">
					           			<div class="dhx_sample-container__widget" id="chart2" style="width:127%;"></div>
					           			<div class="dhx_sample-container__widget" id="chart3" style="width:127%;"></div>
					            	</div>
					            </div>
					        </div>
					        					        
                        </div>
                        <div class="row">
	                        <div class="col-xl-12 col-lg-10 col-md-6 col-sm-12 col-12">
	                        	<div class="card">
	                        		<div class="card-header" style="font-weight:bold;">간트차트 (진행중 프로젝트)</div>
	                       		 	<div class="card-body" style="height:530px;">
	                       		 		<form class="gantt_control">
											<input type="button" value="Zoom In" onclick="zoomIn()">
											<input type="button" value="Zoom Out" onclick="zoomOut()">
										
											<input type="radio" id="scale1" class="gantt_radio" name="scale" value="day">
											<label for="scale1">Day</label>
										
											<input type="radio" id="scale2" class="gantt_radio" name="scale" value="week">
											<label for="scale2">Week</label>
										
											<input type="radio" id="scale3" class="gantt_radio" name="scale" value="month" checked>
											<label for="scale3">Month</label>
										
											<input type="radio" id="scale4" class="gantt_radio" name="scale" value="quarter">
											<label for="scale4">Quarter</label>
										
											<input type="radio" id="scale5" class="gantt_radio" name="scale" value="year">
											<label for="scale5">Year</label>
										
										</form>
	                        			<div id="gantt_here" style='width:100%; height:90%;'></div>
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
	<script src="${path}/assets/vendor/charts/charts-bundle/Chart.bundle.js"></script>
	<%-- <script src="${path}/assets/vendor/charts/charts-bundle/chartjs.js"></script> --%>
	<script type="text/javascript" src="${path}/chart_trial/codebase/chart.js?v=6.4.4"></script>
	<link rel="stylesheet" href="${path}/chart_trial/codebase/chart.css?v=6.4.4">
	<link rel="stylesheet" href="${path}/chart_trial/samples/common/index.css?v=6.4.4">
	<link rel="stylesheet" href="${path}/chart_trial/samples/common/chart.css?v=6.4.4">
	<script type="text/javascript" src="${path}/chart_trial/samples/common/dataset.js?v=6.4.4"></script>
	
	
<div id="pinfo" class="gantt_cal_light" title="프로젝트 정보">
		<form id="pinfoFrm" method="post">
		<div class="gantt_cal_larea" style="height: 580px;">
			<div id="title_label" class="gantt_cal_lsection">
				<label for="title">프로젝트명</label>
			</div>
			<div class="gantt_cal_ltext" style="height:38px;">
				<textarea readonly id="title" name="title"></textarea>
			</div>
			<div id="content_label" class="gantt_cal_lsection">
				<label for="kname">분류</label>
			</div>
			<div class="gantt_cal_ltext" style="height:38px;">
				<textarea readonly id="kname" name="kname"></textarea>
			</div>
			<div id="empno_label" class="gantt_cal_lsection">
				<label for="name">담당자</label>
			</div>
			<div class="gantt_cal_ltext" style="height:38px;">
				<textarea readonly id="name" name="name"></textarea>
			</div>
			<div id="start_end_date" class="gantt_cal_lsection">
				<label for="startdate">프로젝트 기간</label>
			</div>
			<div class="dhx_calendar_cont">
				<input type="text" readonly="true" id="startdate" name="startdate" style="border:1px solid #cecece;margin-left:10px;">
				<font style="vertical-align: inherit;">
					<font style="vertical-align: inherit;"> - </font>
				</font>
				<input type="text" readonly="true" id="enddate" name="enddate" style="border:1px solid #cecece;margin-left:10px;">				
			</div>
			<div id="progress_label" class="gantt_cal_lsection">
				<label for="progress">진행율</label>
			</div>
			<div class="gantt_cal_ltext" style="height:38px;">
				<textarea readonly id="progress" name="progress"></textarea>
			</div>
			<div id="pmember_label" class="gantt_cal_lsection">
				<label for="pmember">프로젝트 인원</label>
			</div>
			<div class="gantt_cal_ltext" style="height:38px;">
				<textarea readonly id="pmember" name="pmember"></textarea>
			</div>
			<div id="budget_label" class="gantt_cal_lsection">
				<label for="budget">예산</label>
			</div>
			<div class="gantt_cal_ltext" style="height:38px;">
				<textarea readonly id="budget" name="budget"></textarea>
			</div>
		</div>
		</form>
	</div>	
	
		
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



jQuery('#input-select').change(function() {
	var state = jQuery('#input-select option:selected').val();
	if ( state == '2' ) {
		jQuery('#chart2').show();
	} else {
		jQuery('#chart2').hide();
	}
	if ( state == '3' ) {
		jQuery('#chart3').show();
	} else {
		jQuery('#chart3').hide();
	}
});

	$(document).ready(function(){
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
	      if(memauthno!='4'){
	    		alert("권한이 없습니다.");
	    		window.history.back();
	    	}
		
	});
	
/*  var keyword = "${param.keyword}";
	if(keyword!=""){
		$("#keyword").val("");	
	}  */

	
	
	var maxyear="${maxYear.cnt}";

	var config = {
            type: "bar",
            scales: {
               "bottom" : {text: "enddate"},
               "left" : {
                  maxTicks: 10,
                  max: maxyear,
                  min: 0
               }},
            series: [
               {
                  id: "A",
                  value: "cntyear",
                  color: "#81C4E8",
                  fill: "#81C4E8"
               }]
         };
	
    var chart_bar = new dhx.Chart("chart_bar", config);
        
	function json2(){
 		$.ajax({
 	   		type : "post",
 	   		url : "${path}/issue.do?method=yearlist",
 	   		dataType : "json",
 	   		success : function(data){ 	   			
	 	   		var testdata = data.ylist
	 	   	 chart_bar.data.parse(testdata);
 	   		},
 	   		error : function(err){
 	   			console.log(err);
 	   		}	  
 	   	})
 	}
 	json2();
 	
  	jQuery('#selectedYear').change(function() {
 		var selectedYear = jQuery('#selectedYear option:selected').val(); 
 		function pieChange(){
 	 		
 			$.ajax({
 				type:"post",
 				url: "${path}/issue.do?method=getYear&year="+selectedYear,
 				dataType:"json",
 				success : function(data){
 					var kindno1=data.totPieListJson.kindno1;
 					var kindno2=data.totPieListJson.kindno2;
 					var kindno3=data.totPieListJson.kindno3;
 					var kindno4=data.totPieListJson.kindno4;
 					var kindno5=data.totPieListJson.kindno5;
 					$(function() {
 						if ($('#c3chart_pie1').length) {
 				            var chart = c3.generate({
 				                bindto: "#c3chart_pie1",
 				                data: {
 				                    columns: [
 				                        ['웹 개발', kindno1/(kindno1+kindno2+kindno3+kindno4+kindno5)],
 				                        ['앱 개발', kindno2/(kindno1+kindno2+kindno3+kindno4+kindno5)],
 				                        ['웹/앱 개발', kindno3/(kindno1+kindno2+kindno3+kindno4+kindno5)], 
 				                        ['시스템 개발', kindno4/(kindno1+kindno2+kindno3+kindno4+kindno5)], 
 				                        ['프로그래밍', kindno5/(kindno1+kindno2+kindno3+kindno4+kindno5)] 
 				                    ],
 				                    type: 'pie' ,
 				                    
 				                } ,
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
 					
 				},
 				error:function(err){
 					console.log(err);
 				}
 			})
 		} 
 	 	pieChange();
 	
 		
 	}); 	
 	
 	
 	 function pieChange(){
 		
 		var selectedYear = jQuery('#selectedYear option:selected').val();
 		
		$.ajax({
			type:"post",
			url: "${path}/issue.do?method=getYear&year="+selectedYear,
			dataType:"json",
			success : function(data){
				var kindno1=data.totPieListJson.kindno1;
				var kindno2=data.totPieListJson.kindno2;
				var kindno3=data.totPieListJson.kindno3;
				var kindno4=data.totPieListJson.kindno4;
				var kindno5=data.totPieListJson.kindno5;
				$(function() {
					if ($('#c3chart_pie1').length) {
			            var chart = c3.generate({
			                bindto: "#c3chart_pie1",
			                data: {
			                    columns: [
			                        ['웹 개발', kindno1/(kindno1+kindno2+kindno3+kindno4+kindno5)],
			                        ['앱 개발', kindno2/(kindno1+kindno2+kindno3+kindno4+kindno5)],
			                        ['웹/앱 개발', kindno3/(kindno1+kindno2+kindno3+kindno4+kindno5)], 
			                        ['시스템 개발', kindno4/(kindno1+kindno2+kindno3+kindno4+kindno5)], 
			                        ['프로그래밍', kindno5/(kindno1+kindno2+kindno3+kindno4+kindno5)] 
			                    ],
			                    type: 'pie' ,
			                    
			                } ,
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
				
			},
			error:function(err){
				console.log(err);
			}
		})
	} 
 	pieChange(); 
	
	
	
/* 	var kindno1=${totPieList.kindno1};
	var kindno2=${totPieList.kindno2};
	var kindno3=${totPieList.kindno3};
	var kindno4=${totPieList.kindno4};
	var kindno5=${totPieList.kindno5};
	
	$(function() {
		if ($('#c3chart_pie1').length) {
            var chart = c3.generate({
                bindto: "#c3chart_pie1",
                data: {
                    columns: [
                        ['웹 개발', kindno1/(kindno1+kindno2+kindno3+kindno4+kindno5)],
                        ['앱 개발', kindno2/(kindno1+kindno2+kindno3+kindno4+kindno5)],
                        ['웹/앱 개발', kindno3/(kindno1+kindno2+kindno3+kindno4+kindno5)], 
                        ['시스템 개발', kindno4/(kindno1+kindno2+kindno3+kindno4+kindno5)], 
                        ['프로그래밍', kindno5/(kindno1+kindno2+kindno3+kindno4+kindno5)] 
                    ],
                    type: 'pie' ,
                    
                } ,
                pie: {
                    label: {
                        format: function(value, ratio, id) {
                            return d3.format('.0%')(value);
                        }
                    }
                } 
            });
        }
    });	 */
	
	
	
	
	
		var codeno1="${totPieIssue.codeno1}";
		var codeno2="${totPieIssue.codeno2}";
		var codeno3="${totPieIssue.codeno3}";
		var codeno4="${totPieIssue.codeno4}";
		var codeno5="${totPieIssue.codeno5}";
		var codeno6="${totPieIssue.codeno6}";
		var codeno7="${totPieIssue.codeno7}";
		var codeno8="${totPieIssue.codeno8}";
		
		var Data2 = [
		    {code: "회피", "위험": codeno1},
		    {code: "전가", "위험": codeno2},
		    {code: "완화", "위험": codeno3},
		    {code: "수용", "위험": codeno4}
		];
		var Data3 = [
		    {code: "활용","기회": codeno5},
		    {code: "공유","기회": codeno6},
		    {code: "증대","기회": codeno7},
		    {code: "수용","기회": codeno8}
		];
		
		var config2 = {
				type: "radar",
				scales: {
					radial:{
						value:"code",
						maxTicks: 7,
						zebra: true
					}
				},
				series: [
					{
						id: "A",
						value: "위험",
						fill: "#9A8BA5",
						alpha: 0.3,
						color: "#9A8BA5"
					}
				],
				legend: {
					series: ["A"]
				}
			};
		
			var chart2 = new dhx.Chart("chart2", config2);
			chart2.data.parse(Data2);	
			
		
		var config3 = {
				type: "radar",
				scales: {
					radial:{
						value:"code",
						maxTicks: 7,
						zebra: true
					}
				},
				series: [
					{
						id: "B",
						value: "기회",
						fill: "#9A8BA5",
						alpha: 0.3,
						color: "#9A8BA5"
					}
				],
				legend: {
					series: ["B"]
				}
			};
		
			var chart3 = new dhx.Chart("chart3", config3);
			chart3.data.parse(Data3);	
		
	
		
		
	// 간트 스케일 설정
	var zoomConfig = {
		levels: [
			{
				name:"day",
				scale_height: 27,
				min_column_width:80,
				scales:[
					{unit: "day", step: 1, format: "%d %M"}
				]
			},
			{
				name:"week",
				scale_height: 50,
				min_column_width:50,
				scales:[
					{unit: "week", step: 1, format: function (date) {
						var dateToStr = gantt.date.date_to_str("%M");
						var endDate = gantt.date.add(date, -6, "day");
						var weekNum = gantt.date.date_to_str("%W")(date);
						return "#" + weekNum + ", " + dateToStr(date);
					}},
					{unit: "day", step: 1, format: "%j %D"}
				]
			},
			{
				name:"month",
				scale_height: 50,
				min_column_width:120,
				scales:[
					{unit: "month", format: "%F, %Y"},
					{unit: "week", format: "Week #%W"}
				]
			},
			{
				name:"quarter",
				height: 50,
				min_column_width:90,
				scales:[
					{unit: "month", step: 1, format: "%M"},
					{
						unit: "quarter", step: 1, format: function (date) {
							var dateToStr = gantt.date.date_to_str("%M");
							var endDate = gantt.date.add(gantt.date.add(date, 3, "month"), -1, "day");
							return dateToStr(date) + " - " + dateToStr(endDate);
						}
					}
				]
			},
			{
				name:"year",
				scale_height: 50,
				min_column_width: 30,
				scales:[
					{unit: "year", step: 1, format: "%Y"}
				]
			}
		]
	};
	// 간트 행 이동여부
	gantt.config.drag_move = false;
	gantt.ext.zoom.init(zoomConfig);
	gantt.ext.zoom.setLevel("month");
	gantt.ext.zoom.attachEvent("onAfterZoom", function(level, config){
		document.querySelector(".gantt_radio[value='" +config.name+ "']").checked = true;
	})
	function zoomIn(){
		gantt.ext.zoom.zoomIn();
	}
	function zoomOut(){
		gantt.ext.zoom.zoomOut()
	}

	var radios = document.getElementsByName("scale");
	for (var i = 0; i < radios.length; i++) {
		radios[i].onclick = function (event) {
			gantt.ext.zoom.setLevel(event.target.value);
		};
	}
	// 간트 % 표시
	gantt.templates.progress_text = function (start, end, task) {
		return "<span style='text-align:left;'>" + Math.round(task.progress * 100) + "% </span>";
		};
	
	// 간트 컬럼 설정
	gantt.config.columns = [
		{name: "text", label: "프로젝트", tree: true, width: 330, template: function (task) {
			if (task.priority == 1)
				if(task.users==null||task.users==""){
					return "<div class='important'>" + task.text + " (" + "미배정" + ") </div>";
				}else{
					return "<div class='important'>" + task.text + " (" + task.users + ") </div>";
				}					
				return task.text + " (" + task.users + ")";
		}},
		{name: "start_date", label: "시작일", align: "center",width:100},
		{name: "state", label: "상태", align: "center",width:70},
		{name: "percent", label: "진행율", align: "center",width:70}
		
		
	];
	
   	// 다이얼로그 설정
   	
    $( "#pinfo" ).dialog({
        autoOpen: false,
        height: 650,
        width: 500,
        modal: true
       
    });
	
	gantt.attachEvent("onTaskDblClick",function(projectno){
			$.ajax({
		   		type : "post",
		   		url : "${path}/issue.do?method=prolist2&projectno="+projectno,
		   		dataType : "json",
		   		success : function(data){
		        	$("#pinfoFrm")[0].reset();
		   			$("#pinfo [name=title]").val(data.prolist2[0].pname);
		   			$("#pinfo [name=kname]").val(data.prolist2[0].kname);
		   			$("#pinfo [name=name]").val(data.prolist2[0].name);
		   			$("#pinfo [name=startdate]").val(data.prolist2[0].startdate);
		   			$("#pinfo [name=enddate]").val(data.prolist2[0].enddate);
		   			$("#pinfo [name=progress]").val(data.prolist2[0].progress*100+"%");
		   			$("#pinfo [name=pmember]").val(data.prolist2[0].cnt+"명");
		   			$("#pinfo [name=budget]").val(data.prolist2[0].budget.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"원");
		   		},
		   		error : function(err){
		   			console.log(err);
		   		}	  
		   	})
		   	
		$("#pinfo").dialog("open");
					
	});

	gantt.init("gantt_here");
	
	function json(){
		$.ajax({
	   		type : "post",
	   		url : "${path}/issue.do?method=gantt",
	   		dataType : "json",
	   		success : function(data){
	   			gantt.parse(data);
	   			console.log(data); 	   			  
	   		},
	   		error : function(err){
	   			console.log(err);
	   		}	  
	   	})
	}
	json();		
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