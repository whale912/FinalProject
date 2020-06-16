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

</head>


<style>
.pagination {

	justify-content: center;
	align-items: center;
}
/*검은색 버튼 */
#writeBtn{
	font-size: 14px;
    padding: 9px 16px;
    border-radius: 2px;
    color: #fff;
    background-color: #343a40;
    border-color: #343a40;
   
	
}
/*검은색 버튼 호버 */
#writeBtn:hover {
    color: #2e2f39;
    background-color: #d7d7df;
    border-color: #d7d7df;
    cursor: pointer;
    text-decoration: none;

 } 
#srcBtn{
	font-size: 14px;
    padding: 9px 16px;
    border-radius: 2px;
    color: #fff;
    background-color: #343a40;
    border-color: #343a40;
    height:40px;
}
#srcBtn:hover {
    color: #2e2f39;
    background-color: #d7d7df;
    border-color: #d7d7df;
    cursor: pointer;
    text-decoration: none;

 } 
#btnDiv{
	text-align:right;
	
	
}
.search01{
	margin-bottom: 1rem;
	text-align:center;
	
}
.search02{
	color: #71748d;
   -webkit-appearance: none;
    background-position: 99% 52%;
    background-size: auto;
    background-repeat: no-repeat;
    background-image: url(/images/down-arrow.png);
    padding-right: 15px;
    border: 1px solid #d2d2e4;
    border-radius: 2px;
    height:38px;
    padding: .375rem .75rem;
    font-size: 1rem;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}

</style>

<body>
	<!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
 		<jsp:include page="../nav_bar.jsp" />
		<jsp:include page="../menu_bar.jsp" />
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
          
         <div class="dashboard-wrapper" style="height:830px">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content " style="height:790px;">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
				 
					<div class="row">
				
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="page-header">
								<!-- 페이지 타이틀 -->
								<h2 class="pageheader-title">프로젝트 게시판</h2>
								<div class="page-breadcrumb">
									<nav aria-label="breadcrumb">
										<ol class="breadcrumb">
											<li class="breadcrumb-item"><a href="#"
												class="breadcrumb-link">상위메뉴</a></li>
											<li class="breadcrumb-item active" aria-current="page">현재
												페이지</li>
										</ol>
									</nav>
									
									
									<form method="post" action="${path}/board.do?method=list" >									
										<input type="hidden" name="empno" value="${mem.empno}"/>
										<input type="hidden" name="authno" value="${mem.authno}"/>
										<input type="hidden" name="curPage" value="${board.curPage}"/>
										
 									<div class="form-group" style="margin-top:30px">              
									                     
                                      
                                       <select class="form-control" id="input-select" name="projectno" style="width:400px; margin-left:20px;">
                                       			<option value="0">게시판 선택 </option>
                                       		<c:choose> 
                                       		<c:when test="${mem.empno eq 'ceo' }">
	                                       		 <c:forEach var="ceoplist" items="${ceoplist}">    	
	                                            	<option value="${ceoplist.projectno}">${ceoplist.pname}</option>                                       	
	                                			 </c:forEach>
                                            
                                			 </c:when>
                                			 <c:otherwise>
                                			 <c:forEach var="project" items="${plist}">    	
                                            	<option value="${project.projectno}">${project.pname}</option>                                       	
                                			 </c:forEach>
                                			 </c:otherwise>
                                			</c:choose> 
                                       </select>
                                     

                                    </div>
									<div class="card-body">
										<div class="table-responsive">
											<div style="height:320px;">
											<table class="table table-striped table-bordered first">
												<thead>
													<tr>
														<th style="text-align:center; ">No</th>
														<th style="text-align:center;">제목</th>
														<th style="text-align:center;">작성인</th>
														<th style="text-align:center;">등록일</th>
														<th style="text-align:center;">조회수</th>

													</tr>
												</thead>
												<tbody>
												<c:forEach var="board" items="${blist}">
										
													<tr ondblclick="javascript:go(${board.pjboardno})" style="max-height:39px;">
														<td width="5%"  style="text-align:center;">${board.cnt}</td>
												<c:choose>
													<c:when test="${board.noticetype eq 'Y'}">
														<td width="55%" style="text-align:center;"> <span class="badge badge-primary">공지</span>${board.title}</td>
													</c:when>
													<c:otherwise>
													<td width="55%" style="text-align:center;">${board.title}</td>
													</c:otherwise>
												</c:choose>
														
														<td width="10%" style="text-align:center;">${board.name}</td>
														<td width="20%" style="text-align:center;"><fmt:formatDate value="${board.credate}"/></td>
														<td width="10%" style="text-align:center;">${board.views}</td>


													</tr>
												</c:forEach>	
												</tbody>
											
											</table>
										
											</div>
											<div id="btnDiv">
												<a href="#" id="writeBtn" >글쓰기</a>
											</div>
										
											<ul class="pagination" style="margin-top:60px;">
												<li class="page-item"><a class="page-link" href="javascript:goPage(${board.startBlock-1});">Previous</a></li>
												<c:forEach var="cnt" begin="${board.startBlock }" end="${board.endBlock}">
	 
												  	 <li class="page-item ${board.curPage==cnt?'active':''}">
		  											 <a class="page-link" href="javascript:goPage(${cnt})">${cnt}</a></li>
												</c:forEach>
	
												<li class="page-item"><a class="page-link" href="javascript:goPage(${(board.endBlock==board.pageCount)?
												board.endBlock:board.endBlock+1});">Next</a></li>
											</ul>

										</div>
									</div>
									
									<div class="search01" style="margin-top:30px">             
									                        
                                    	 <input onkeyup="enterkey();" type="text" class="search02" name="title" placeholder="제목"/>
                                         <input  onkeyup="enterkey();" type="text" class="search02" name="name" placeholder="작성자" />
                                         <a href="#" id="srcBtn" >검색</a>
                                         	   

                                    </div>
									
									
									</form>




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
	

	$(document).ready(function(){


			
			
			
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
	         $(location).attr("href", "${path}/login.do?method=base");
	      }
	      $("#goLogout").click(function() {
	         if (mem != null) {
	            if (confirm("로그아웃 하시겠습니까?")) {
	               $(location).attr("href", "${path}/login.do?method=logout");
	            }
	         }
	      });
	});






</script> 

</html>