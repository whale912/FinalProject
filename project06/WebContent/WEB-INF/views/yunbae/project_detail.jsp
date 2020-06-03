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
                <div id="mainContainer" class="container-fluid dashboard-content " style="min-height:824px;" >
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
	                                        <a class="nav-link" id="tab-outline-two" data-toggle="tab" href="#outline-two" role="tab" aria-controls="profile" aria-selected="false">업무관리</a>
	                                    </li>
	                                    <li class="nav-item">
	                                        <a class="nav-link" id="tab-outline-three" data-toggle="tab" href="#outline-three" role="tab" aria-controls="contact" aria-selected="false">멤버 관리</a>
	                                    </li>
	                                    <li class="nav-item">
	                                        <a class="nav-link" id="tab-outline-four" data-toggle="tab" href="#outline-four" role="tab" aria-controls="contact" aria-selected="false">프로젝트 결과물</a>
	                                    </li>
	                                </ul>
	                                <div class="tab-content" id="myTabContent2">
	                                    <div class="tab-pane fade show active" id="outline-one" role="tabpanel" aria-labelledby="tab-outline-one">
	                                        <!-- 첫 번째 탭 내용 -->
	                                        <div class="row">
	                                        	<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12" style="width:50%">
					                                <div class="card" style="height:445px">
					                                    <div class="card-header" style="font-weight:bold;line-height:34px;">
					                                    	프로젝트 정보
					                                    	<input type="button" id="updateProject" value="수정" class="btn btn-dark" style="float:right;"/> 
					                                    </div>
					                                    <div class="card-body">
					                                        <table class="table table-bordered" style="font-size:13px;">
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
						                                                <td class="text-center">${project.startdate} ~ ${project.enddate}</td>
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
					                                <div class="card" style="height:445px">
					                                    <div class="card-header" style="font-weight:bold;line-height:34px;">
					                                    	프로젝트 멤버(총 ${project.personnel}명)				                                    	
					                                    </div>
					                                    <div class="card-body" style="height:380px">
					                                    	<table class="table" style="font-size:13px;">
						                                        <thead>
						                                            <tr>
						                                                <th class="text-center" style="font-wieght:bold" scope="col">이름</th>
						                                                <th class="text-center" style="font-wieght:bold" scope="col">등록일</th>
						                                                <th class="text-center" style="font-wieght:bold" scope="col">역할</th>
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
						                                                <td class="text-center">${member.regdate}</td>
						                                                <td class="text-center">${member.rname}</td>
						                                            </tr>
						                                            </c:forEach>					                                            
						                                        </tbody>
						                                    </table>
						                                    <form id="pageFr" method="post" action="${path}/project.do?method=detail&projectno=${project.projectno}">
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
					                                <div class="card" style="height:445px">
					                                    <div class="card-header" style="font-weight:bold">
					                                    	프로젝트 이슈&리스크 
					                                    </div>
					                                    <div class="card-body" style="height:374px;padding-top:40px;">
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
		                                        			업무 배정
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
	                                        <div class="row" id="show">
		                                        <div class="col-xl-5 col-lg-12 col-md-12 col-sm-12 col-12" style="height:723px;max-height:723px;">
		                                        	<div class="card">
		                                        		<div class="card-header" style="line-height:38px;">
		                                        			<b>참여 가능 사원</b>                                      			
		                                        			<input v-model="name" v-on:keyup="name_search" class="form-control" style="width:120px;float:right" type="text" placeholder="입력 후 Enter" />
		                                        			<span style="float:right;margin-right:10px">이름 검색 :</span>
		                                        			<select class="form-control" v-model="deptno" v-on:change="dept_search" style="float:right;width:120px;margin-right:10px">
		                                        				<option value="0">부서검색</option>
		                                        				<c:forEach var="dept" items="${depts}">
		                                        					<option value="${dept.deptno}">${dept.dname}</option>
		                                        				</c:forEach>
		                                        			</select>
		                                        			
		                                        			
		                                        		</div>
		                                        		<div class="card-body">
		                                        			<div style="background-color:#FFF;height:600px;overflow:auto;border:1px solid #E6E6F2">
		                                        				<ul id="joinable_list" style="font-size:13px;">
		                                        					<li v-for="join in joinable">
		                                        						<a class="list-group-item list-group-item-action joinable" @click="selectEmp(join.empno,$event)">
		                                        							{{join.empno}}&nbsp;&nbsp;{{join.dname}}&nbsp;&nbsp;{{join.rname}}&nbsp;&nbsp;{{join.name}}
		                                        						</a>
		                                        					</li>
		                                        					<!-- 
		                                        					`<li><a class="list-group-item list-group-item-action joinable"`+ 
													   				`onclick="selectEmp('`+data.joinable[i].empno+`',this)" >`+data.joinable[i].empno+`&nbsp;&nbsp;`+
													   				data.joinable[i].dname+`&nbsp;&nbsp;`+data.joinable[i].rname+`&nbsp;&nbsp;`+
													   				data.joinable[i].name+`</a></li>`;
		                                        					 -->
		                                        				</ul>
		                                        			</div>
		                                        		</div>
		                                        	</div>
		                                        </div>
		                                        <div class="col-xl-2 col-lg-12 col-md-12 col-sm-12 col-12" style="height:723px;max-height:723px;">
		                                        	<div style="width:100px;height:130px;position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);">
		                                        		<input id="addMem" @click="addMember" disabled="disabled" type="button" class="btn btn-primary" value="추가" style="width:100%;height:50px;margin-bottom:30px"/>
		                                        		<input id="delMem" disabled="disabled" type="button" class="btn btn-danger" value="삭제" style="width:100%;height:50px;"/>
		                                        	</div>                                     
		                                        </div>
		                                        <div class="col-xl-5 col-lg-12 col-md-12 col-sm-12 col-12">
		                                        	<div class="card">
		                                        		<div class="card-header">
		                                        			<b>프로젝트 멤버</b>
		                                        		</div>
		                                        		<div class="card-body">
		                                        			<div style="background-color:#FFF;height:600px;overflow:auto;border:1px solid #E6E6F2">
		                                        				<ul id="mem_list" style="font-size:13px;">
		                                        				</ul>
		                                        			</div>
		                                        		</div>
		                                        	</div>
		                                        </div>
		                                    </div>	
	                                    </div>
	                                    <div class="tab-pane fade" id="outline-four" role="tabpanel" aria-labelledby="tab-outline-four">
	                                        <!-- 네 번째 탭 내용 -->
	                                        <div class="row">                            
					                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							                        <div class="card">
							                            <h5 class="card-header">프로젝트 업무 결과파일 리스트</h5>
							                            <div class="card-body">
							                            	<div class="table-responsive">
							                                    <table class="table table-striped table-bordered first" style="font-size:13px;">
							                                        <thead>
							                                            <tr style="text-align:center;font-weight:bold">
							                                                <th style="width:;">업무명</th>
							                                                <th style="width:;">담당자</th>
							                                                <th style="width:;">내용</th>
							                                                <th style="width:;">승인 신청일</th>
							                                                <th style="width:;">승인 완료일</th>
							                                                <th style="width:;">결과파일</th>
							                                            </tr>
							                                        </thead>
							                                        <tbody>
							                                        	
							                                        	<c:forEach var="rf" items="${rflist}" varStatus="sts">
								                                            <tr>
								                                            	<td>${rf.title}</td>
								                                            	<td class="text-center">${rf.name}</td>
								                                            	<td>${rf.content}</td>
								                                            	<td>${rf.r_condate}</td>
								                                            	<td>${rf.condate}</td>
								                                            	<td><span onclick="fileDown('${rf.fname}')" style="color:blue;text-decoration:underline;cursor:pointer">${rf.fname}</span></td>
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
	<script src="https://unpkg.com/vue/dist/vue.js" type="text/javascript"></script>
	<script src="https://cdn.jsdelivr.net/npm/es6-promise@4/dist/es6-promise.min.js" type="text/javascript"></script>
	<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
	
	<!-- 업무 생성/수정/확인 다이얼로그창 -->
	<div id="cruTaks" class="gantt_cal_light" title="업무 생성">
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
				<label for="startdate">업무 기간</label>
			</div>
			<div class="dhx_calendar_cont">
				<input type="text" readonly="true" id="startdate" name="p_startdate" style="border:1px solid #cecece;margin-left:10px;">
				<font style="vertical-align: inherit;">
					<font style="vertical-align: inherit;"> – </font>
				</font>
				<input type="text" readonly="true" id="enddate" name="p_enddate" style="border:1px solid #cecece;margin-left:10px;">				
			</div>
			<div id="refno_label" class="gantt_cal_lsection">
				<label for="refno">상위 업무(프로젝트)</label>
			</div>
			<div class="gantt_cal_ltext" style="height:23px;">
				<select id="refSelect" style="width:100%;" name="refno">					
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
		<div role="button" id="del_btn" aria-label="Delete" tabindex="0" class="gantt_btn_set gantt_left_btn_set gantt_delete_btn_set" style="float:right;">
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
        </div>
        </form>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- --%>
		callNotice();
		callRefList();
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
		if(auth!="2"){
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
		//${project.startdate} ~ ${project.enddate}
		var startdate = "${project.startdate}";
		var enddate = "${project.enddate}";
		$("#startdate").datepicker({
			dateFormat:'yy-mm-dd',
			minDate:startdate,
			maxDate:enddate
		});
		var sd = "";
		$("#startdate").change(function(){
			sd=$(this).val();
			$("#enddate").datepicker({
				dateFormat:'yy-mm-dd',
				minDate:sd,
				maxDate:enddate
			});
		});
		$("#enddate").click(function(){
			if(sd==""){
				alert("시작일을 먼저 선택해주세요");
			}
		});
		
		// 파이차트
		"use strict";
		
		var complete = "${istatus.complete}"*1;
		var wait = "${istatus.wait}"*1;
		var measuring = "${istatus.measuring}"*1;
		
		var tot = complete+wait+measuring;
		var com_per = complete/tot;
		console.log(com_per);
		var wait_per = wait/tot;
		console.log(wait_per);
		var meas_per = measuring/tot;
		console.log(meas_per);
		
	    $(function() {
			if ($('#c3chart_pie').length) {
	            var chart = c3.generate({
	                bindto: "#c3chart_pie",
	                data: {
	                    columns: [
	                        ['조치완료', com_per.toFixed(1)],
	                        ['조치대기', wait_per.toFixed(1)],
	                        ['조치진행', meas_per.toFixed(1)]	                  
	                    ],
	                    type: 'pie',
	
	                    colors: {
	                    	'조치완료': '#5969ff',
	                    	'조치진행': '#20c997',
	                    	'조치대기' : '#ffc107'	
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
	    
	    // 프로젝트 수정페이지 이동
	    $("#updateProject").click(function(){
	    	$(location).attr("href","${path}/project.do?method=uptForm&projectno="+projectno);
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
		
	    
	    // 기존 담당자 저장용 (업무 수정 시 담당자 변경을 위한 처리)
		var ori_empno="";
		
		// 다이얼로그 저장/수정/확인 버튼 이벤트
		$("#reg_btn").click(function(){
			/* $("#add_Task").attr("action","${path}/project.do?method=tinsert")
	    	$("#add_Task").submit(); */
	    	var btnname=$("#btn_name").text();
	    	console.log(btnname);
	    	
	    	// 새 업무을 추가할 때 
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
					url:"${path}/project.do?method=tinsert",
					data:addTask, // 요청 데이터 전송 json객체형식 가능
					success:function(){
						alert("등록 완료!");
						gantt.refreshData();
						callRefList();
						gantt.load("${path}/project.do?method=gantt&projectno="+prono);  
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
				gantt.load("${path}/project.do?method=gantt&projectno="+prono);
			
			// 기존 업무을 수정할 때	
	    	}else if($("#btn_name").text()=="수정"){
	    		if($("#cruTaks [name=title]").val()!=""&&
	    				$("#cruTaks [name=p_startdate]").val()!=""&&
	    				$("#cruTaks [name=p_enddate]").val()!=""){
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
							url:"${path}/project.do?method=tupdate",
							data : update, // 요청 데이터 전송 json객체형식 가능
							success:function(){
								alert("수정 완료!");
								gantt.refreshData();
								gantt.load("${path}/project.do?method=gantt&projectno="+prono);  
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
						gantt.load("${path}/project.do?method=gantt&projectno="+prono);		    		
		    		}else if($("#cruTaks [name=title]").val()==""){
		    			alert("업무 제목을 입력하셔야 합니다");
		    		}else if($("#cruTaks [name=p_startdate]").val()==""){
		    			alert("업무 시작일자를 입력하셔야 합니다.")
		    		}else if($("#cruTaks [name=p_enddate]").val()==""){
		    			alert("업무 시작일자를 입력하셔야 합니다.")
		    		}
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
	    
	    // 삭제 버튼 클릭 이벤트
	    
	    $("#del_btn").click(function(){
	    	if(confirm("업무을 삭제하시겠습니까?")){
	    		var del={};
		    	del.projectno=$("#cruTaks [name=projectno]").val();
		    	del.taskno=$("#cruTaks [name=taskno]").val();
		    	console.log(del);
		    	$.ajax({
		    		type:"post",
		    		url:"${path}/project.do?method=tdelete",
		    		data:del,
		    		success:function(){
		    			alert("삭제되었습니다");
		    			gantt.refreshData();
						gantt.load("${path}/project.do?method=gantt&projectno="+prono);  
						$("#add_Task")[0].reset();	    			
						$("#cruTaks").dialog("close");
		    		},
		    		error:function(err){
		    			console.log(err);
						alert("삭제에 실패했습니다");
						gantt.refreshData();
						gantt.load("${path}/project.do?method=gantt&projectno="+prono);  
						$("#add_Task")[0].reset();	    			
						$("#cruTaks").dialog("close");
		    		}
		    	});
				gantt.refreshData();
				gantt.load("${path}/project.do?method=gantt&projectno="+prono);
	    	}	    	
	    });
	    
	    
	    // 진행률 퍼센트 표시				
	    gantt.templates.progress_text = function (start, end, task) {
			return "<span style='text-align:right;'>" + Math.round(task.progress * 100) + "% </span>";
		};
		// 간트 컬럼 설정
		gantt.config.columns = [
			{name: "text", label: "업무명", tree: true, width: 300, template: function (task) {
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
				$("#cruTaks").dialog("option","title","업무 정보 확인");
				var taskno = id;
				function gettinfo(taskno){
					$.ajax({
				   		type : "post",
				   		url : "${path}/project.do?method=tinfo&taskno="+taskno,
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
		   		url : "${path}/project.do?method=gantt&projectno="+prono,
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
		
		var search_name="";
		var search_deptno="0";
		
		var vm = new Vue({
			el:"#show",
			data:{deptno:"0",name:"",joinable:[],selected_emp:""},
			methods:{
				dept_search :function(){
					search_deptno=this.deptno;
					this.callJoinable(search_name,search_deptno);
				},
				name_search :function(e){
					if(e.keyCode == 13){
						search_name=this.name;
						this.callJoinable(search_name,search_deptno);
					}
				},
				callJoinable:function(sname,sdeptno){
					this.joinable=[];
					var url = "${path}/project.do?method=joinable&name="+sname+"&deptno="+sdeptno;
					var vm = this;
					fetch(url).then(function(response){
						console.log("## 서버에서 온 response 값 ##");
						console.log(response);
						return response.json();
					}).then(function(json){
						console.log("## 서버에서 온 json데이터 ##");
						console.log(json);
						vm.joinable=json.joinable;							
					}).catch(function(err){
						console.log("## 에러 발생 ##");
						console.log(err);
					});
				},
				selectEmp:function(empno,event){
					// 일단 클릭 했을 때 리스트 전부 배경 흰색 글자 검정색으로 
					for(var i=0;i<$(".joinable").length;i++){
						$(".joinable").eq(i).css({"background-color":"rgb(255, 255, 255)","color":"#71748D"});			
					}
					// 선택된 참여가능 사원이 없을 때
					if(this.selected_emp==""){			
						$(event.target).css({"background-color":"#007bff","color":"#FFF"});
						this.selected_emp = empno;
						$("#addMem").attr("disabled",false);		
					}else{
						// 선택된 참여가능 사원이 있지만 다른 사원을 클릭 했을 때
						if(this.selected_emp!=empno){
							console.log($(".joinable").length);			
							$(event.target).css({"background-color":"#007bff","color":"#FFF"});
							this.selected_emp = empno;
							$("#addMem").attr("disabled",false);
						}else{
							// 선택된 참여가능 사원이 있는데 같은 사원을 다시 클릭 했을 때
							$(event.target).css({"background-color":"rgb(255, 255, 255)","color":"#71748D"});
							this.selected_emp="";
							$("#addMem").attr("disabled",true);
						}			
					}
					console.log("선택된 사원"+this.selected_emp);
				},
				addMember : function(){
					$("#sel_empno").val(this.selected_emp);		
					$("#joinMember").dialog("open");
				}					
			},
			beforeMount(){
				search_name="";
				search_deptno=0;
				this.callJoinable(search_name,search_deptno)
			}
		})
		
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
				{name: "text", label: "업무명", tree: true, width: 300, template: function (task) {
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
					$("#cruTaks").dialog("option","title","업무 정보 확인");
					var taskno = id;
					function gettinfo(taskno){
						$.ajax({
					   		type : "post",
					   		url : "${path}/project.do?method=tinfo&taskno="+taskno,
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
		
		// 두 번째 탭 클릭 이벤트
		$("#tab-outline-two").click(function(){
			function jsonMem(){
				$.ajax({
			   		type : "post",
			   		url : "${path}/project.do?method=member&projectno="+projectno,
			   		dataType : "json",
			   		success : function(data){
			   			gantt.serverList("staff",data.staff);
			   			gantt.serverList("priority", [
							{key: 1, label: "상"},
							{key: 2, label: "중"},
							{key: 3, label: "하"}
						]);

						// end test data
						gantt.config.grid_width = 420;
						gantt.config.grid_resize = true;
						gantt.config.open_tree_initially = true;
						// 간트 라벨설정
						var labels = gantt.locale.labels;
						labels.column_owner = labels.section_owner = "담당자";
						labels.column_text = labels.section_title = "제목";
						gantt.locale.labels["section_parent"] = "상위 업무(프로젝트)";
						
						function byId(list, id) {
							for (var i = 0; i < list.length; i++) {
								if (list[i].key == id)
									return list[i].label || "";
							}
							return "";
						}
						// 자동 크기 설정
						gantt.config.autosize = true;
						// 간트 컬럼설정
						gantt.config.columns = [
							{name: "owner", width: 80, align: "center", template: function (item) {
									return byId(gantt.serverList('staff'), item.owner_id)}},
							{name: "text", label: "제목", tree: true, width: 230},
							{name: "start_date", label: "시작일", width: 90,align: "center"},
							{name: "end_date", label: "종료일",width: 90, align: "center"},
							{name: "add", width: 40}
						];						
						// 간트차트 오른쪽 멤버
						gantt.templates.rightside_text = function(start, end, task){
							return byId(gantt.serverList('staff'), task.owner_id);
						};
						// 간트차트 왼쪽 멤버
						gantt.templates.grid_row_class =
							gantt.templates.task_row_class =
								gantt.templates.task_class = function (start, end, task) {
									var css = [];
									if (task.$virtual || task.type == gantt.config.types.project)
										css.push("summary-bar");
		
									if(task.owner_id){
										css.push("gantt_resource_task gantt_resource_" + task.owner_id);
									}
		
									return css.join(" ");
								};
															
						// 데이터 로드 끝났을 때
						gantt.attachEvent("onLoadEnd", function(){
							var styleId = "dynamicGanttStyles";
							var element = document.getElementById(styleId);
							if(!element){
								element = document.createElement("style");
								element.id = styleId;
								document.querySelector("head").appendChild(element);
							}
							var html = [];
							var resources = gantt.serverList("staff");

							resources.forEach(function(r){
								html.push(".gantt_task_line.gantt_resource_" + r.key + "{" +
									"background-color:"+r.backgroundColor+"; " +
									"color:"+r.textColor+";" +
								"}");
								html.push(".gantt_row.gantt_resource_" + r.key + " .gantt_cell:nth-child(1) .gantt_tree_content{" +
									"background-color:"+r.backgroundColor+"; " +
									"color:"+r.textColor+";" +
									"}");
							});
							element.innerHTML = html.join("");
							
						});
						
						// + 버튼 눌렀을 때
							gantt.attachEvent("onTaskCreated",function(task){
					   			$('textarea').prop('readonly', false);
					   			$('select').prop('disabled',false);
					   			$('input').datepicker('option', 'disabled', false);
								$("#btn_name").text("저장");
								$("#cruTaks").dialog("option","title","업무 생성");
								if(task.parent!=null&task.parent!=""){
									$("#cruTaks [name=refno]").val(task.parent);
								}									
								$("#cruTaks").dialog("open");
							});
						// 업무 더블클릭 했을 때
						gantt.attachEvent("onTaskDblClick",function(id){
							if(gantt.getTask(id).parent!=0){
					   			$('textarea').prop('readonly', false);
					   			$('select').prop('disabled',false);
					   			$('input').datepicker('option', 'disabled', false);
								$("#btn_name").text("수정");
								$("#cruTaks").dialog("option","title","업무 정보 수정");
								//alert(id);
								// alert(gantt.getTask(id).content);
								var taskno = id;
								function gettinfo(taskno){
									$.ajax({
								   		type : "post",
								   		url : "${path}/project.do?method=tinfo&taskno="+taskno,
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
								   			if(data.task.progress==1){
								   				$('textarea').prop('readonly', true);
								   				$('select').prop('disabled',true);
								   				$('input').datepicker('option', 'disabled', true);
								   				$("#btn_name").text("확인");
												$("#cruTaks").dialog("option","title","업무 정보 확인");
								   			}
								   			
								   		},
								   		error : function(err){
								   			console.log(err);
								   		}	  
								   	})
								}
								gettinfo(taskno);								
								$("#cruTaks").dialog("open");
								
							}else{
								alert("프로젝트는 프로젝트 정보 탭에서 확인/수정하실 수 있습니다.");								
								$("#cruTaks").dialog("close");
							}
						});
						
						gantt.init("gantt_here2");
						gantt.load("${path}/project.do?method=gantt&projectno="+prono);		   			  
			   		},
			   		error : function(err){
			   			console.log(err);
			   		}	  
			   	})
			}
			jsonMem();
			function resize(){
				var tab2_height = $("#mainWrapper").height();
				$("#mainContainer").css("height",tab2_height+150+"px");
				$("#wholeContainer").css("height",$("#mainContainer").height()+40+"px");
			}
			setTimeout(resize, 200);
			
		});
		
		// 세 번째 탭 클릭 이벤트
		$("#tab-outline-three").click(function(e){				

			vm.callJoinable("",0);
			/* // 참여가능 사원목록 불러오기
			function callJoinable(sname,sdeptno){
				$.ajax({
			   		type : "post",
			   		url : "${path}/project.do?method=joinable&name="+sname+"&deptno="+sdeptno,
			   		dataType : "json",
			   		success : function(data){
			   			//alert(data.callist.length);
			   		    //console.log(data);
			   			// 함수의 기능 내용을 처리
			   			// json객체의 내용을 리스트 처리
			   			var datalist = "";
			   			console.log("사원 수"+data.joinable.length);
			   			for(var i=0;i<data.joinable.length;i++){
			   				datalist+=`<li><a class="list-group-item list-group-item-action joinable"`+ 
			   				`onclick="selectEmp('`+data.joinable[i].empno+`',this)" >`+data.joinable[i].empno+`&nbsp;&nbsp;`+
			   				data.joinable[i].dname+`&nbsp;&nbsp;`+data.joinable[i].rname+`&nbsp;&nbsp;`+
			   				data.joinable[i].name+`</a></li>`;
			   			}
			   			$("#joinable_list").html(datalist);
			   			  
			   		},
			   		error : function(err){
			   			console.log(err);
			   		}	  
			   	})
			}
			callJoinable(search_name,search_deptno); */
			
			
			function callMember(){
				$.ajax({
			   		type : "post",
			   		url : "${path}/project.do?method=members&projectno="+projectno,
			   		dataType : "json",
			   		success : function(data){
			   			//alert(data.callist.length);
			   		    //console.log(data);
			   			// 함수의 기능 내용을 처리
			   			// json객체의 내용을 리스트 처리
			   			var memlist = "";
			   			console.log("멤버 수"+data.member.length);
			   			for(var i=0;i<data.member.length;i++){
			   				memlist+=`<li><a class="list-group-item list-group-item-action pmembers"`;
			   				if(data.member[i].role!="PM"){
			   					memlist+=`onclick="selectMem('`+data.member[i].empno+`',this)"`;
			   				}else{
			   					memlist+=`onclick="protectPM()"`;
			   				}
			   				memlist+=`>`+data.member[i].dname+`&nbsp;&nbsp;`+data.member[i].rname+`&nbsp;&nbsp;`+
			   				data.member[i].name+`<span class="badge" style="float:right">`+data.member[i].role+
			   				`</span></a></li>`;
			   			}
						$("#mem_list").html(memlist);
						$(".badge").addClass(function(){
							if($(this).text()=="PM"){
								return "badge-primary";
							}else if($(this).text()=="백엔드"){
								return "badge-info"
							}else if($(this).text()=="프론트엔드"){
								return "badge-warning"
							}
						})
			   			  
			   		},
			   		error : function(err){
			   			console.log(err);
			   		}	  
			   	});
			}
			callMember();
			
			
			
			
			$("#joinMember").dialog({
				autoOpen : false,
				height : 330,
				width : 250,
		        modal: true,
				buttons:{
					"등록":function(){
						var addm={};
						var projectno = "${project.projectno}";
						addm.empno=$("#sel_empno").val();				
						addm.projectno=projectno;
						addm.roleno=$("#sel_roleno").val();
						if($("#sel_roleno").val()=="2"){
							addm.backgroundcolor="#ffc107";
						}else if($("#sel_roleno").val()=="3"){
							addm.backgroundcolor="#c3e6cb";
						}
						addm.textcolor="#FFF";
						$.ajax({
					   		type : "post",
					   		url : "${path}/project.do?method=minsert",
					   		data : addm,
					   		success : function(){
					   			alert("멤버가 추가되었습니다");
					  			callMember();
					  			vm.callJoinable("",0);
								$("#joinMember").dialog("close");
								$("#addMem").attr("disabled",true);
					   		},
					   		error : function(err){
					   			console.log(err);
					   			alert("요청 중 오류가 발생했습니다 ! 다시 시도해주세요");
					  			callMember();
					  			vm.callJoinable("",0);
								$("#joinMember").dialog("close");
								$("#addMem").attr("disabled",true);
					   		}	  
					   	});
					},
					"취소":function(){
						$("#joinMember").dialog("close");
					}
				},
				clise:function(){
					$("#joinMemFr")[0].reset();
				}		
			});
			
			$("#delMem").click(function(){
				if(confirm("정말 멤버에서 삭제하시겠습니까?")){
					var projectno = "${project.projectno}";
					var delm={};
					delm.empno = $("#sel_member").val();
					delm.projectno = projectno;
					$.ajax({
				   		type : "post",
				   		url : "${path}/project.do?method=mdelete",
				   		data : delm,
				   		success : function(){
				   			alert("멤버가 삭제되었습니다");
				  			vm.callJoinable("",0);
				  			callMember();				  	
							$("#delMem").attr("disabled",true);
				   		},
				   		error : function(err){
				   			alert("요청 중 오류가 발생했습니다 ! 다시 시도해주세요");
				  			vm.callJoinable("",0);
				  			callMember();
				   			console.log(err);				 
							$("#delMem").attr("disabled",true);
				   		}	  
				   	});	
				}			
			});
			function resize(){
				var tab2_height = $("#mainWrapper").height();
				$("#mainContainer").css("height",tab2_height+150+"px");
				$("#wholeContainer").css("height",$("#mainContainer").height()+40+"px");
			}
			setTimeout(resize, 200);	
		});
		$("#tab-outline-four").click(function(e){
			function resize(){
				var tab2_height = $("#mainWrapper").height();
				$("#mainContainer").css("height",tab2_height+150+"px");
				$("#wholeContainer").css("height",$("#mainContainer").height()+40+"px");
			}
			setTimeout(resize, 200);
		});
		
		
		
	});
	// 선택된 참여 가능 사원번호
	
	/* function selectEmp(empno,obj){
		// 일단 클릭 했을 때 리스트 전부 배경 흰색 글자 검정색으로 
		for(var i=0;i<$(".joinable").length;i++){
			$(".joinable").eq(i).css({"background-color":"rgb(255, 255, 255)","color":"#71748D"});			
		}
		// 선택된 참여가능 사원이 없을 때
		if(selected_emp==""){			
			$(obj).css({"background-color":"#007bff","color":"#FFF"});
			selected_emp = empno;
			$("#addMem").attr("disabled",false);		
		}else{
			// 선택된 참여가능 사원이 있지만 다른 사원을 클릭 했을 때
			if(selected_emp!=empno){
				console.log($(".joinable").length);			
				$(obj).css({"background-color":"#007bff","color":"#FFF"});
				selected_emp = empno;
				$("#addMem").attr("disabled",false);
			}else{
				// 선택된 참여가능 사원이 있는데 같은 사원을 다시 클릭 했을 때
				$(obj).css({"background-color":"rgb(255, 255, 255)","color":"#71748D"});
				selected_emp="";
				$("#addMem").attr("disabled",true);
			}			
		}
		console.log("선택된 사원"+selected_emp);		
	} */
	var select_mem="";
	function selectMem(empno,obj){
		// 일단 클릭 했을 때 리스트 전부 배경 흰색 글자 검정색으로 
		for(var i=0;i<$(".pmembers").length;i++){
			$(".pmembers").eq(i).css({"background-color":"rgb(255, 255, 255)","color":"#71748D"});		
		}
		// 선택된 참여가능 사원이 없을 때
		if(select_mem==""){			
			$(obj).css({"background-color":"#007bff","color":"#FFF"});
			select_mem = empno;
			$("#sel_member").val(select_mem);
			$("[name=selected_memberno]").val(select_mem);
			$("#delMem").attr("disabled",false);	
		}else{
			// 선택된 참여가능 사원이 있지만 다른 사원을 클릭 했을 때
			if(select_mem!=empno){
				console.log($(".pmembers").length);			
				$(obj).css({"background-color":"#007bff","color":"#FFF"});
				select_mem = empno;
				$("#sel_member").val(select_mem);
				$("[name=selected_memberno]").val(select_mem);
				$("#delMem").attr("disabled",false);
			}else{
				// 선택된 참여가능 사원이 있는데 같은 사원을 다시 클릭 했을 때
				$(obj).css({"background-color":"rgb(255, 255, 255)","color":"#71748D"});
				select_mem="";
				$("#sel_member").val("");
				$("#delMem").attr("disabled",true);
			}			
		}
		console.log("선택된 멤버"+select_mem);
	}
	/* $("#addMem").click(function(){
		$("#sel_empno").val(selected_emp);		
		$("#joinMember").dialog("open");
	}); */
	function protectPM(){
		alert("PM은 수정/삭제가 불가능합니다!");
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
	function callRefList(){
		var pno = "${param.projectno}";
		$.ajax({
			type:"post",
			url:"${path}/project.do?method=reflist&projectno="+pno,
			dataType:"json",
			success:function(data){
				var options = `<option value="0">없음</option>`;
				for(var i=0;i<data.tlist.length;i++){
					options+=`<option value="`+data.tlist[i].taskno+`">`+data.tlist[i].title+`</option>`;
				}
				$("#refSelect").html(options);
			},
			error:function(err){
				console.log(err);
			}
		});
	}
		
	
	
</script>
</html>