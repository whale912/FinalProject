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
<link rel="stylesheet" href="${path}/a00_com/dhtmlxgantt.css?v=7.0.2">
<link rel="stylesheet" href="${path}/a00_com/controls_styles.css?v=7.0.2">
<link href="${path}/assets/vendor/fonts/circular-std/style.css?v=7.0.2" rel="stylesheet">
<link rel="stylesheet" href="${path}/a00_com/chart.css?v=6.4.3">
<link rel="stylesheet" href="${path}/a00_com/index.css?v=6.4.3">
<style>
.form-control2 {
	width: 40%;
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
.inputLeft{float:left;width:49%;}
.inputRight{float:right;width:49%;}
#listBtn{float:right;}

</style>
<script type="text/javascript">

</script>
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
        <div id="d-wrapper" class="dashboard-wrapper">
            <div class="dashboard-ecommerce">
                <div id="d-container"  class="container-fluid dashboard-content" >
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                            	<!-- 페이지 타이틀 -->
                                <h2 class="pageheader-title">이슈</h2>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">이슈등록</a></li>
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
                                <div class="card">
                                    <h5 class="card-header">이슈 등록 정보</h5>
                                    <div class="card-body">
                                    <form id="form1"method="post">
                                    <input type="hidden" name="memempno" value="${mem.empno}"/>
		                            <input type="hidden" name="memauthno" value="${mem.authno}"/>
		                            <input type="hidden" name="projectno" value="${param.projectno}"/>
		                            
		                            </form>
                                        <form method="post" enctype="multipart/form-data" 
                                        		action="${path}/issue.do?method=insert">
                                        		<p style="font-size:10px;" class="text-danger"><span class="badge-dot badge-danger"></span>&nbsp;는 필수 입력 표시입니다</p>
                                            <div class="form-group">
                                            	<div class="inputLeft">
	                                               <span class="badge-dot badge-danger"></span> <label for="inputText3" class="col-form-label">프로젝트</label>
	                                                <select id="inputText3" type="text" class="form-control" name="projectno">
		                                                <option value="${project.projectno}">${project.pname}</option>
	                                                </select>
                                                </div>
                                            	<div class="inputRight">
	                                               <span class="badge-dot badge-danger"></span> <label for="inputText3" class="col-form-label">업무</label>
	                                                <select type="text" class="form-control" name="taskno">
	                                                    <option value="">업무를 선택해주세요. &nbsp;&nbsp;</option>
	                                                    <c:forEach var="t" items="${tlist}" varStatus="sts">
	                                                    <option value="${t.taskno}">${t.tname}</option> 
	                                                    </c:forEach>
	                                                </select>
	                                            </div>
                                            </div>
                                            <div class="form-group">
                                            	<div class="inputLeft">
	                                                <label for="inputText3" class="col-form-label">요청자 (사번)</label>
	                                                <input id="inputText3" readonly name="empno" type="text" value="${mem.empno}" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group" style="clear:left;">
                                            	<span class="badge-dot badge-danger"> </span><label for="inputText3" class="col-form-label">제목</label>
                                            	<input type="text" name="title" class="form-control" />
                                            </div>
                                            <div class="form-group">
                                                <span class="badge-dot badge-danger"> </span><label for="exampleFormControlTextarea1">내용</label>
                                                <textarea class="form-control" name="content" id="exampleFormControlTextarea1" rows="6"></textarea>
                                            </div><%-- 
                                            <label>첨부파일</label><input type="button" class="btn btn-primary addFiles" value="파일 추가" style="height:40px;float:right"/><br>
                                            <div style="clear:both;"></div>
                                            
                                            <div class="form-group" id="fileform" style="margin-top:5px;">
                                            <div>
	                                            <input style="width:47.5%;float:left;" class="form-control fileInfo" 
	                                            name="fnames" value="${issue.filenames[sts.index-1]}" />	
	                                            
	                                            <div class="custom-file mb-3" style="width:52.5%;float:left;">
	                                            	<input  type="file" name="report" class="custom-file-input" id="customFile">
	                                                <label class="custom-file-label" for="customFile">첨부파일</label>
	                                            </div>
	                                            </div>
	                                        </div> --%>
	                                        <label>첨부파일</label>
												<c:forEach var="fname" begin="1" end="3" varStatus="sts">
													<div class="form-group">
														<input style="width: 50%; float: left;"
															class="form-control fileInfo" name="fnames"
															value="${issue.filenames2[sts.index-1]}" />
															<div class="custom-file mb-3"
															style="width: 50%; float: left;">
															<input type="file" name="report"
																class="custom-file-input" id="customFile"> <label
																class="custom-file-label" for="customFile">첨부파일</label>
														</div>
													</div>
												</c:forEach>
                                            
                                            <div style="clear:both;"></div>
                                            <input type="button" id="regBtn" class="btn btn-primary" value="등록" />
                                            <input type="button" id="listBtn" class="btn btn-dark" value="목록으로" />
                                        </form>
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
</body>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">
var memempno="${mem.empno}";
var memauthno="${mem.authno}";
var empno="${param.memempno}";
var projectno="${param.projectno}";
if(memempno==null||memempno==""){
	$(location).attr("href","${path}/login.do?method=base");
}
	$(document).ready(function(){
		callNotice();
		var isIns = "${isIns}";
		if(isIns=="Y"){
			alert("등록되었습니다.");
			$(location).attr("href","${path}/issue.do?method=list");			
		}
		
		$("#listBtn").click(function(){
			if(confirm("목록으로 이동하시겠습니까?")){
				$(location).attr("href","${path}/issue.do?method=list");
			}
		});	
		
		$("#regBtn").click(function(){
			if(confirm("등록하시겠습니까?")){
				if($("[name=projectno]").val()!=""&&$("[name=taskno]").val()!=""
					&&$("[name=empno]").val()!=""&&$("[name=title]").val()!=""
					&&$("[name=content]").val()!=""){
					
					$("form").submit();
				}else if($("[name=projectno]").val()==""){
					alert("프로젝트를 선택해주세요.");
					$("[name=projectno]").focus();
				}else if($("[name=taskno]").val()==""){
					alert("업무를 선택해주세요.");
					$("[name=taskno]").focus();
				}else if($("[name=empno]").val()==""){
					alert("사번을 입력해주세요.");
					$("[name=empno]").focus();
				}else if($("[name=title]").val()==""){
					alert("제목을 입력해주세요.");
					$("[name=title]").focus();
				}else if($("[name=content]").val()==""){
					alert("내용을 입력해주세요.");
					$("[name=content]").focus();
							
				}
			}
		});
		
		
/* 		var count = 0;
		function addFileForm() {
			var html = "<div style='width:100%;'><input style='width:47.5%;float:left;' class='form-control fileInfo' name='fnames' />";
			html += "<div class='custom-file mb-3' style='width:47.5%;float:left;'>";
			html += "<input style='width:100%;' class='btn' type='file' name='report' id='customFile"+count+"'>";
			html += "</div><input type='button' class='btn btn-primary delFiles' value='삭제' style='height:40px;float:right;'/></div><br>";
			count++;			
			if(count<5){
				$("#fileform").append(html);
			}else{
				alert("파일은 최대 5개까지 등록 할 수 있습니다.");
			}
		} */
		/* var dwrapper=$("#d-wrapper").height();
		var dcontainer=$("#d-container").height(); */
		
		var count = 0;
		$('.addFiles').click(addFileForm);
		$(document).on('click', '.delFiles', function(event) {
			$(this).parent().remove();
			
			
			
		});
 		
		function addFileForm() {
			var html = "<div><input style='width:47.5%;float:left;' class='form-control fileInfo' name='fnames' />";
			html += "<div class='custom-file mb-3' style='width:47.5%;float:left;'>";
			html += "<input  type='file' name='report' class='custom-file-input' id='customFile"+count+"'>";
			html += "<label class='custom-file-label' for='customFile"+count+"'>첨부파일</label>";
			html += "</div><input type='button' class='btn btn-primary delFiles' value='삭제' style='height:40px;float:right'/><br></div>";
						
			$("#fileform").append(html);
			
		} 
		
		$(".custom-file-input").on("change",function(){
			$(this).next(".custom-file-label").text($(this).val());
		});

	
		if(memauthno=="1"){
			if(projectno!=""&&project!=null){
				if(empno==""||empno==null){
					$("#form1").submit();
				}
			}
		}else if(memauthno=="2"){
			if(empno==""||empno==null){
				$("#form1").submit();
			}
		}
	
				
		
	});
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
			$(location).attr("href",
					"${path}/login.do?method=base");
		}						
		$("#goLogout").click(function() {
			if (mem != null) {
				if (confirm("로그아웃 하시겠습니까?")) {
					$(location).attr("href","${path}/login.do?method=logout");
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