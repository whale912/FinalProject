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
.pagination{justify-content:center;align-items: center;}
.form-control-select {
	width: 20%;
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
.form-control-sch {
	width:220px;
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
#schDiv{float:right;display: flex;
    align-items: center;}
#schBtn{height:38px;}
#insIssue{width:90px;height:38px;}
</style>
<script type="text/javascript">
	function goDetail(no){
		$(location).attr("href","${path}/issue.do?method=detail&no="+no);
	}
	
	function goDetail0(no,no2){
		$(location).attr("href","${path}/issue.do?method=detail0&no="+no+"&no2="+no2);
	}
	function goDetail2(no,no2){
		$(location).attr("href","${path}/issue.do?method=detail2&no="+no+"&no2="+no2);
	}
	function goDetail3(no){
		$(location).attr("href","${path}/issue.do?method=detail3&no="+no);
	}
	

	function goInsert(){
		$(location).attr("href","${path}/issue.do?method=insFrm");
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
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper" style="height:870px">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content" style="height:870px;">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                            	<!-- 페이지 타이틀 -->
                                <h2 class="pageheader-title">이슈 관리</h2>
                                
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">이슈 관리</a></li>
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
		                            <div class="card-header">
		                            <form method="post" id="form2">
		                            	<input type="hidden" name="memempno" value="${mem.empno}"/>
		                            </form>
		                            <form:form id="form1" class="form" commandName="isch" method="post">
		                            <form:hidden path="curPage"	/>
		                            <form:hidden path="memempno" value="${mem.empno}"/>
		                            <form:hidden path="memauthno" value="${mem.authno}"/>
		                            
			                            <label>
			                            	<select class="form-control" id="input-select" name="projectno" onchange="this.form.submit();">
			                            		<option value="0">프로젝트를 선택해주세요. &nbsp;&nbsp;</option>
			                            		<c:if test="${mem.authno==1}">
				                            		<c:forEach var="p" items="${plist}" varStatus="sts">
				                            		<option value="${p.projectno}">${p.pname}</option>
				                            		</c:forEach>
			                            		</c:if>	
			                            		<c:if test="${mem.authno==2}">
				                            		<c:forEach var="p2" items="${plist2}" varStatus="sts">
				                            		<option value="${p2.projectno}">${p2.pname}</option>
				                            		</c:forEach>
			                            		</c:if>	
			                            		<c:if test="${mem.authno==4}">
				                            		<c:forEach var="p3" items="${plist3}" varStatus="sts">
				                            		<option value="${p3.projectno}">${p3.pname}</option>
				                            		</c:forEach>
			                            		</c:if>	
			                            	</select></label>&nbsp;&nbsp;&nbsp;
			                            	
			                            	
			                            	<div id="schDiv" >
	                                        <form:input path="keyword" type="text" class="form-control-sch" placeholder="검색어를 입력해주세요."/>
	                                        <input type="submit" id="schBtn" class="btn btn-dark" value="검색" />
			                            	&nbsp;&nbsp;
			                            	&nbsp;&nbsp;
			                            	<c:if test="${mem.authno==1}">
	                                        <input type="button" id="insIssue" class="btn btn-primary" value="이슈등록" />
	                                        </c:if>
	                                        </div>
	                                </form:form>
		                            </div>
		                            <div class="card-body">
		                                <div class="table-responsive">
		                                    <table class="table table-striped table-bordered first">
		                                        <thead>
		                                            <tr>		                                            
		                                                <th>프로젝트명</th>
		                                                <th>업무명</th>
		                                                <th>제목</th>
		                                                <th>요청자</th>
		                                                <th>등록일자</th>
		                                                <th>담당자</th>
		                                                <th>조치완료일</th>
		                                                <th>상태</th>
		                                            </tr>
		                                        </thead>
		                                        <tbody style="font-size:13px;">
		                                        <c:forEach var="i" items="${ilist}" varStatus="sts">
		                                        	<c:if test="${mem.authno==1&&i.mname==null }">
		                                            <tr ondblclick="javascript:goDetail(${i.issueno})" style="">
		                                            </c:if>
		                                        	<c:if test="${mem.authno==1&&i.mname!=null }">
		                                            <tr ondblclick="javascript:goDetail0(${i.issueno},${i.measureno})">
		                                            </c:if>
		                                            <c:if test="${mem.authno==2&&i.mname!=null }">
		                                            <tr ondblclick="javascript:goDetail2(${i.issueno},${i.measureno})">
		                                            </c:if>
		                                            <c:if test="${mem.authno==2&&i.mname==null }">
		                                            <tr ondblclick="javascript:goDetail3(${i.issueno})">
		                                            </c:if>
		                                            <c:if test="${mem.authno==4&&i.mname==null }">
		                                            <tr ondblclick="javascript:goDetail(${i.issueno})">
		                                            </c:if>
		                                            <c:if test="${mem.authno==4&&i.mname!=null }">
		                                            <tr ondblclick="javascript:goDetail2(${i.issueno},${i.measureno})">
		                                            </c:if>
		                                                <td>${i.pname}</td>
		                                                <td>${i.tname}</td>
		                                                <td>${i.title}</td>
		                                                <td>${i.name}</td>
		                                                <td><fmt:formatDate value="${i.regdate}" pattern="yyyy-MM-dd"/></td>
		                                                <td>${i.mname}</td>
		                                                <td><fmt:formatDate value="${i.measuredate}" pattern="yyyy-MM-dd"/></td>
		                                                <td>${i.state}</td>
		                                            </tr>
		                                        </c:forEach>
		                                        </tbody>
		                                    </table>
		                                </div>   
		                            </div>
		                            <ul class="pagination">
                                   	 	<li class="page-item"><a class="page-link" href="javascript:goPage(${isch.startBlock-1})">Prev</a></li>
                                   	 	<c:forEach var="cnt" begin="${isch.startBlock}" end="${isch.endBlock}">                                       
                                        <li class="page-item ${isch.curPage==cnt?'active':''}"><a class="page-link" href="javascript:goPage(${cnt})">${cnt}</a></li>
                                        </c:forEach>
                                        <li class="page-item"><a class="page-link" href="javascript:goPage(${(isch.endBlock==isch.pageCount)?isch.endBlock:isch.endBlock+1})">Next</a></li>
                                        
                                    </ul>
                                    
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

if(memempno==null||memempno==""){
	$(location).attr("href","${path}/login.do?method=base");
}

	$(document).ready(function(){
		callNotice();
		<%-- --%>
		var pno = "${param.projectno}";
		if(pno!=""){
			$("#input-select").val(pno);	
		}
/* 		var keyword = "${param.keyword}";
		if(keyword!=""){
			$("#keyword").val("");	
		} */
		
		if(empno==""||empno==null){
			$("#form2").submit();
		}
		
		if(memauthno=="1"){
			if(empno==""||empno==null){
				$("#form1").submit();
			}
		}else if(memauthno=="2"){
			if(empno==""||empno==null){
				$("#form1").submit();
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
	      
	      var projectno="${plist0.projectno}";
	      
	      $("#insIssue").click(function(){
	    	  $(location).attr("href", "${path}/issue.do?method=insFrm&projectno="+projectno+"&memempno="+mem);
	      });
	      
	    	
		
	});
	
	if(memauthno=='3'){
		alert("권한이 없습니다.");
		window.history.back();
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
	function goPage(no){
		$("#curPage").val(no);
		$("form").submit();
	}		
</script>
</html>