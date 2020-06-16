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
<link rel="stylesheet" href="${path}/a00_com/controls_styles.css?v=7.0.2">
<link href="${path}/assets/vendor/fonts/circular-std/style.css?v=7.0.2" rel="stylesheet">
<link rel="stylesheet" href="${path}/a00_com/chart.css?v=6.4.3">
<link rel="stylesheet" href="${path}/a00_com/index.css?v=6.4.3">
<link rel="stylesheet" href="${path}/a00_com/dhtmlxscheduler_material.css?111" type="text/css" charset="utf-8">

	
<style type="text/css">
	html, body{
		margin:0px;
		padding:0px;
		height:100%;
	}

	.add_event_button{
		position: absolute;
		width: 55px;
		height: 55px;
		background: #ff5722;
		border-radius: 50px;
		bottom: 40px;
		right: 55px;
		box-shadow: 0 2px 5px 0 rgba(0,0,0,0.3);
		z-index: 5;
		cursor:pointer;
	}
	.add_event_button:after{
		background: #000;
		border-radius: 2px;
		color: #FFF;
		content: attr(data-tooltip);
		margin: 16px 0 0 -137px;
		opacity: 0;
		padding: 4px 9px;
		position: absolute;
		visibility: visible;
		font-family: "Roboto";
		font-size: 14px;
		visibility: hidden;
		transition: all .5s ease-in-out;
	}
	.add_event_button:hover{
		background: #ff774c;
	}
	.add_event_button:hover:after{
		opacity: 0.55;
		visibility: visible;
	}
	.add_event_button span:before{
		content:"";
		background: #fff;
		height: 16px;
		width: 2px;
		position: absolute;
		left: 26px;
		top: 20px;
	}
	.add_event_button span:after{
		content:"";
		height: 2px;
		width: 16px;
		background: #fff;
		position: absolute;
		left: 19px;
		top: 27px;
	}

	@media only screen and (max-width: 1000px){
		.add_event_button{
			bottom: 5vw;
			right: 5vw;
		}
	}
	.dhx_cal_event div.dhx_footer,
	.dhx_cal_event.past_event div.dhx_footer,
	.dhx_cal_event.event_english div.dhx_footer,
	.dhx_cal_event.event_math div.dhx_footer,
	.dhx_cal_event.event_science div.dhx_footer{
		background-color: transparent !important;
	}
	.dhx_cal_event .dhx_body{
		-webkit-transition: opacity 0.1s;
		transition: opacity 0.1s;
		opacity: 0.7;
	}
	.dhx_cal_event .dhx_title{
		line-height: 12px;
	}
	.dhx_cal_event_line:hover,
	.dhx_cal_event:hover .dhx_body,
	.dhx_cal_event.selected .dhx_body,
	.dhx_cal_event.dhx_cal_select_menu .dhx_body{
		opacity: 1;
	}
	.dhx_cal_event.event_math div,
	.dhx_cal_event_line.event_math{
		background-color: #FF5722 !important;
		border-color: #732d16 !important;
	}
	.dhx_cal_event.dhx_cal_editor.event_math{
		background-color: #FF5722 !important;
	}
	.dhx_cal_event_clear.event_math{
		color:#FF5722 !important;
	}
	.dhx_cal_event.event_science div,
	.dhx_cal_event_line.event_science{
		background-color: #0FC4A7 !important;
		border-color: #698490 !important;
	}
	.dhx_cal_event.dhx_cal_editor.event_science{
		background-color: #0FC4A7 !important;
	}
	.dhx_cal_event_clear.event_science{
		color:#0FC4A7 !important;
	}
	.dhx_cal_event.event_english div,
	.dhx_cal_event_line.event_english{
		background-color: #684f8c !important;
		border-color: #9575CD !important;
	}
	.dhx_cal_event.dhx_cal_editor.event_english{
		background-color: #684f8c !important;
	}
	.dhx_cal_event_clear.event_english{
		color:#B82594 !important;
	}
	.dhx_cal_light_rec.dhx_cal_light_wide{ width: 500px; }
	.dhx_section_time input.dhx_readonly{ width:85px; height:32px; }	
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
        <div id="wholeContainer" class="dashboard-wrapper" style="height:1030px">
            <div class="dashboard-ecommerce">
                <div id="mainContainer" class="container-fluid dashboard-content " style="height:990px;">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                            	<!-- 페이지 타이틀 -->
                                <h2 class="pageheader-title">일정관리</h2>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><span class="breadcrumb-link">내 업무</span></li>
                                            <li class="breadcrumb-item active" aria-current="page">일정관리</li>
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
                            <div class="col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12">
		                        <div class="card">
		                            <h5 class="card-header">일정 관리</h5>
		                            <div class="card-body">
		                            	<div id="scheduler_here" style='width:100%; height:750px;'>
		                            		<div class="dhx_cal_navline">
												<div class="dhx_cal_prev_button">&nbsp;</div>
												<div class="dhx_cal_next_button">&nbsp;</div>
												<div class="dhx_cal_today_button"></div>
												<div class="dhx_cal_date"></div>
												<div class="dhx_cal_tab" name="day_tab" style="right:204px;"></div>
												<div class="dhx_cal_tab" name="week_tab" style="right:140px;"></div>
												<div class="dhx_cal_tab" name="month_tab" style="right:76px;"></div>
											</div>
											<div class="dhx_cal_header">
											</div>
											<div class="dhx_cal_data">
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
	<script src="${path}/a00_com/dhtmlxscheduler.js?v=5.3.8" charset="utf-8"></script>
	<script src="${path}/a00_com/dhtmlxscheduler_multiselect.js?v=5.3.8"></script>	
	<script src="${path}/a00_com/dhtmlxscheduler_editors.js?v=5.3.8"></script>
	<script src="${path}/a00_com/dhtmlxscheduler_readonly.js?v=5.3.8"></script>
	<script src="${path}/a00_com/dhtmlxscheduler_recurring.js?v=5.3.8" charset="utf-8"></script>
	<script src="${path}/a00_com/dhtmlxscheduler_minical.js?v=5.3.8" type="text/javascript" charset="utf-8"></script>
	<!-- 다이얼로그 -->
	<div id="addSche" title="일정 추가">
		
	</div>
	
	
</body>
<script src="${path}/a00_com/chart.js?v=6.4.3"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- --%>		
		callNotice()
		/* function resize(){
			var defaults = 992;
			var heights = $("#ganttDiv").height();
			$("#mainContainer").css("height",defaults+heights+30+"px");
			$("#wholeContainer").css("height",$("#mainContainer").height()+40+"px");
		}
		setTimeout(resize, 400); */
		
		
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
		$("input:checkbox[name='full_day']").attr("name","full_days");
		
		
		init();
		
	});
	function init() {
		scheduler.config.time_step = 30;
		scheduler.config.multi_day = true;
		scheduler.locale.labels.section_subject = "Subject";
		scheduler.config.first_hour = 0;
		scheduler.config.limit_time_select = false;
		scheduler.config.details_on_dblclick = true;
		scheduler.config.details_on_create = true;
		// scheduler.config.drag_move = false;
		scheduler.templates.event_class=function(start, end, event){
			var css = "";

			if(event.subject) // if event has subject property then special class should be assigned
				css += "event_"+event.subject;

			if(event.id == scheduler.getState().select_id){
				css += " selected";
			}
			return css; // default return

			/*
				Note that it is possible to create more complex checks
				events with the same properties could have different CSS classes depending on the current view:

				var mode = scheduler.getState().mode;
				if(mode == "day"){
					// custom logic here
				}
				else {
					// custom logic here
				}
			*/
		};

		var subject = [
			{ key: 'science', label: '일반' }
		];
		function block_readonly(id){
			if (!id) return true;
			return !this.getEvent(id).readonly;
		}
		scheduler.attachEvent("onBeforeDrag",block_readonly)
		scheduler.attachEvent("onClick",block_readonly)

		scheduler.config.lightbox.sections=[
			{name:"이름", height:43, map_to:"text", type:"textarea" , focus:true},
			{name:"종류", height:20, type:"select", options: subject, map_to:"subject" },
			{name:"기간", height:72, type:"calendar_time", map_to:"auto" }
		];		
		scheduler.templates.calendar_time = scheduler.date.date_to_str("%Y-%m-%d");
		scheduler.setLightboxSize(1500);
		
		
		
		scheduler.attachEvent("onEventSave",function(id,ev,is_new){
		    //any custom logic here
		    if(is_new!=null){
		    	var datas={};
				var empno = "${mem.empno}";
				datas.text=scheduler.formSection('이름').getValue();
				console.log("title:"+scheduler.formSection('이름').getValue());
				var start = date_to_str(scheduler.formSection('기간').getValue().start_date);
				var end = date_to_str(scheduler.formSection('기간').getValue().end_date);
				datas.start_date=start;
				datas.end_date=end;
				datas.empno=empno;
				console.log(datas);
				$.ajax({
					type:"post",
					url:"${path}/task.do?method=sinsert",
					data:datas,
					success:function(){
						alert("새 일정이 등록되었습니다");
						scheduler.load("${path}/task.do?method=schedata&empno="+empno);
						scheduler.endLightbox(false);
					},
					error:function(err){
						console.log(err);
						alert("등록에 실패하였습니다");
						scheduler.load("${path}/task.do?method=schedata&empno="+empno);
						scheduler.endLightbox(false);
					}				
				});	
				scheduler.load("${path}/task.do?method=schedata&empno="+empno);	
		    }else if(is_new==null){
		    	//any custom logic here
				var datas={};
				var empno = "${mem.empno}";
				datas.id=id;
				datas.text=scheduler.formSection('이름').getValue();
				console.log("title:"+scheduler.formSection('이름').getValue());
				var start = date_to_str(scheduler.formSection('기간').getValue().start_date);
				var end = date_to_str(scheduler.formSection('기간').getValue().end_date);
				datas.start_date=start;
				datas.end_date=end;
				datas.empno=empno;
				console.log(datas);
				$.ajax({
					type:"post",
					url:"${path}/task.do?method=supdate",
					data:datas,
					success:function(){
						alert("일정이 수정되었습니다");
						scheduler.load("${path}/task.do?method=schedata&empno="+empno);
						scheduler.endLightbox(false);
						console.log(datas);
					},
					error:function(err){
						console.log(err);
						alert("수정에 실패하였습니다");
						scheduler.load("${path}/task.do?method=schedata&empno="+empno);
						scheduler.endLightbox(false);
					}				
				});
				scheduler.load("${path}/task.do?method=schedata&empno="+empno);	
		    }		    
		});
		
		scheduler.attachEvent("onBeforeEventDelete", function(id,ev){
			var empno = "${mem.empno}";
		    // custom code
			$.ajax({
				type:"post",
				url:"${path}/task.do?method=sdelete&id="+id,
				success:function(){
					alert("일정이 삭제되었습니다");
					scheduler.endLightbox(false);
					scheduler.load("${path}/task.do?method=schedata&empno="+empno);
				},
				error:function(err){
					console.log(err);
					alert("삭제에 실패하였습니다");
					scheduler.load("${path}/task.do?method=schedata&empno="+empno);
					scheduler.endLightbox(false);
				}				
			});	
		    
			scheduler.load("${path}/task.do?method=schedata&empno="+empno);
			return true;
		});
		scheduler.attachEvent("onDragEnd", function (id, mode, e){
		    // use it to get the object of the dragged event
		    scheduler.showLightbox(id);
		    return true;
		});
		
		
		
		var empno = "${mem.empno}";
		scheduler.init('scheduler_here', new Date(), "month");
		scheduler.load("${path}/task.do?method=schedata&empno="+empno);

	}
	// 날짜 형식 변환
	function date_to_str(format){
		
	    var year = format.getFullYear();
	    var month = format.getMonth() + 1;
	    if(month<10) month = '0' + month;
	    var date = format.getDate();
	    if(date<10) date = '0' + date;
	    var hour = format.getHours();
	    if(hour<10) hour = '0' + hour;
	    var min = format.getMinutes();
	    if(min<10) min = '0' + min; 

	    return year + "-" + month + "-" + date + " " + hour + ":" + min;
	}
	function date_to_str2(format){
		
	    var year = format.getFullYear();
	    var month = format.getMonth() + 1;
	    if(month<10) month = '0' + month;
	    var date = format.getDate();
	    if(date<10) date = '0' + date;

	    return year + "-" + month + "-" + date;
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
				if(content==""){
					$(".indicator").css("display","none");
				}
				
			},
			error:function(err){
				console.log(err);
			}
		});		
	}

	
	

</script>
</html>