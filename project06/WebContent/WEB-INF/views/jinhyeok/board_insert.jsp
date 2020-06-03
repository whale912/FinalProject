<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<%--

--%>
<html>
<head>
<meta charset="${encoding}">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${path}/assets/vendor/bootstrap/css/bootstrap.min.css">
<link href="${path}/assets/vendor/fonts/circular-std/style.css"
	rel="stylesheet">
<link rel="stylesheet" href="${path}/assets/libs/css/style.css">
<link rel="stylesheet"
	href="${path}/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
<link rel="stylesheet"
	href="${path}/assets/vendor/charts/chartist-bundle/chartist.css">
<link rel="stylesheet"
	href="${path}/assets/vendor/charts/morris-bundle/morris.css">
<link rel="stylesheet"
	href="${path}/assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="${path}/assets/vendor/charts/c3charts/c3.css">
<link rel="stylesheet"
	href="${path}/assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
<link href='${path}/assets/vendor/full-calendar/css/fullcalendar.css'
	rel='stylesheet' />
<link
	href='${path}/assets/vendor/full-calendar/css/fullcalendar.print.css'
	rel='stylesheet' media='print' />
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css">
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">

</head>
<style>
.pagination {
	justify-content: center;
	align-items: center;
}

.detailBtn {
	font-size: 14px;
	padding: 9px 16px;
	border-radius: 2px;
	color: #fff;
	background-color: #343a40;
	border-color: #343a40;
}

.detailBtn:hover {
	color: #2e2f39;
	background-color: #d7d7df;
	border-color: #d7d7df;
	cursor: pointer;
	text-decoration: none;
}

#label01 {
	vertical-align: middle;
	margin-top: 10px;
}

.custom-control-label {
	line-height: 1.5;
}

#btnDiv {
	text-align: right;
}

.search02 {
	color: #71748d;
	-webkit-appearance: none;
	background-position: 99% 52%;
	background-size: auto;
	background-repeat: no-repeat;
	background-image: url(/images/down-arrow.png);
	padding-right: 15px;
	border: 1px solid #d2d2e4;
	border-radius: 2px;
	height: 38px;
	padding: .375rem .75rem;
	font-size: 1rem;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {

		$("#writeBtn").click(function() {
			if (confirm("등록합니다")) {
				// 등록화면 호출.
				$(location).attr("href", "${path}/board.do?method=insert");
			}
		});

	});
</script>
<body>
	<!-- ============================================================== -->
	<!-- main wrapper -->
	<!-- ============================================================== -->
	<div class="dashboard-main-wrapper">
		<jsp:include page="../nav_bar.jsp" />
		<jsp:include page="../menu_bar.jsp" />
		<!-- ============================================================== -->
		<!-- wrapper  -->
		<!-- ============================================================== -->
		<div class="dashboard-wrapper">
			<div class="dashboard-ecommerce">
				<div class="container-fluid dashboard-content ">
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
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="card">
								<h5 class="card-header">게시판 작성</h5>
								<div class="card-body">
								 	<form id="go_back" method="post" action="${path}/board.do?method=list">										
										<input type="hidden" id="backno" name="projectno" value="${board.projectno}"/>
										<input type="hidden" name="empno" value="${mem.empno}"/>									
									</form>
									<form method="post" 
										enctype="multipart/form-data">
										<input type="hidden" name="empno" value="${mem.empno}" /> <input
											type="hidden" name="writer" value="${mem.empno}" /> <input
											type="hidden" name="refno"
											value="${empty board.refno?0:board.refno}" /> <input
											type="hidden" name="projectno" value="${param.projectno}" />
											<input type="hidden" name="authno" value="${mem.authno }"/>
										
										<input type="hidden" name="noticetype"/>
										<div class="form-group">
											<label for="title" class="col-form-label" style=""><span class="badge-dot badge-danger"> </span>제목
											</label><span style="margin-left:10px;"><span id="titleLength" style="margin-left:200px;">0</span>/25</span>
											<br> <input id="title" name="title" type="text" value="${board.title}"
												class="form-control" placeholder="제목을 입력해주세요"
												style="float: left; width: 300px;" /> 
										<c:if test="${mem.authno eq 2 }">
											<div id="label01">
												<label class="custom-control custom-checkbox"
													style="width: 300px; padding-left: 30px; float: left;">
													<input type="checkbox" 
													class="custom-control-input" name="noticetypeCh" value=""/> <span
													class="custom-control-label">공지</span>

												</label>
											</div>
										</c:if>	
										</div>
										<br>
										<br>
										<div class="form-group">
											<label for="writer">작성자</label> <input id="writer"
												type="text" class="form-control" value="${mem.name}"
												disabled />
										</div>

										<br>
										<br>

										<div class="form-group">
											<label for="content"><span class="badge-dot badge-danger"> </span>내용</label>
											<textarea class="form-control" id="content" rows="10"
												name="content">${board.content}</textarea>
										</div>

										<label>첨부파일</label>
										<c:forEach var="fname" begin="1" end="3" varStatus="sts">
											<div class="form-group">
												<input type="text" style="width: 50%; float: left;"
													class="form-control fileInfo" name="fnames"
													value="${board.filenames[sts.index-1]}" />

												<div class="custom-file mb-3"
													style="width: 50%; float: left;">
													<input type="file" name="report" class="custom-file-input"
														id="customFile"> <label class="custom-file-label"
														for="customFile">첨부파일</label>
												</div>
											</div>
										</c:forEach>


										<div id="btnDiv">
											<a href="#" id="regBtn" class="detailBtn bg-danger">등록</a>
											<!-- 
												<a href=""  onclick="history.back(-1)"  id="listBtn" class="detailBtn bg-danger">목록</a>
												 -->
											<input type="button" value="목록" onclick="history.back(-1)"
												style="display: none;" /> <a
												href="javascript:history.back(-1)"
												class="detailBtn bg-warning">목록</a>


										</div>
									</form>
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
							Copyright © 2018 Concept. All rights reserved. Dashboard by <a
								href="https://colorlib.com/wp/">Colorlib</a>.
						</div>
						<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
							<div class="text-md-right footer-links d-none d-sm-block">
								<a href="javascript: void(0);">About</a> <a
									href="javascript: void(0);">Support</a> <a
									href="javascript: void(0);">Contact Us</a>
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
	<script
		src="${path}/assets/vendor/charts/chartist-bundle/chartist.min.js"></script>
	<!-- sparkline js -->
	<script
		src="${path}/assets/vendor/charts/sparkline/jquery.sparkline.js"></script>
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
	function goBack() {
		window.history.back();

	}

	$(document).ready(function() {
		$("[name=title]").keyup(function(){
			var leng = $(this).val().length;
			$("#titleLength").text(leng);
			if(leng>=25){
				$(this).val($(this).val().substr(0,25));
				alert("글 제목은 25자를 넘길 수 없습니다");
				$("#titleLength").text(25);
			}
		});
				
				
				/*
				$("#listBtn").click(function(){			
						// 리스트
						var projectno = "${param.projectno}"
						$(location).attr("href","${path}/board.do?method=list&projectno="+projectno);
					
				});
				
				 */
					/*접근권한*/
				var auth = "${mem.authno}";
				if(auth=="3"){
					alert("접근 권한이 없습니다!");
					history.back();
				}
				var isIns = "${isIns}";
				if (isIns == "Y") {
					if (confirm("등록되었습니다.\n목록으로 이동하시겠습니까?")) {
						var backno = "${param.projectno}";
						$("#backno").val(backno);
						
						$("#go_back").submit();
									
					}
				}
				$("#regBtn").click(function() {

					
					if($("[name=noticetypeCh]").prop("checked")){
			        	 $("[name=noticetype]").val("Y");
			       
			        }else{
			        	
			        	 $("[name=noticetype]").val("N");
			        }	
					
					if (confirm("등록합니다.")) {
						if($("[name=title]").val()!="" && $("[name=content]").val()!=""){
							$("form").attr("action","${path}/board.do?method=doinsert");
							$("form").submit();
						}else if($("[name=title]").val()==""){
							alert("제목을 입력해주세요");
							$("[name=title]").focus();
							
						}else if($("[name=content]").val()==""){
							alert("내용을 입력해주세요");
							$("[name=content]").focus();
							
						}
					}
				});
				$(".custom-file-input").on("change", function() {
					$(this).next(".custom-file-label").text($(this).val());
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