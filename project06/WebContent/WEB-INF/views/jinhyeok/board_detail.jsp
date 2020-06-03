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

#btnDiv {
	text-align: right;
}

.replyDiv {
	
}

#writeDiv {
	width: 200px;
	height: 50px;
	margin-left: 520px;
	margin-top: 5px;
}
/*검은색 버튼 */
#writeBtn {
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
</style>
<script type="text/javascript">
	$(document).ready(function() {

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
							<h5 class="card-header">게시판 상세</h5>
							<div class="card-body">
								<form id="go_back" method="post"
									action="${path}/board.do?method=list">
									<input type="hidden" id="backno" name="projectno"
										value="${board.projectno}" /> <input type="hidden"
										name="empno" value="${mem.empno}" />

								</form>
								<form method="post" action="${path}/board.do?method=detail"
									enctype="multipart/form-data">

									<input type="hidden" name="pjboardno"
										value="${param.pjboardno}" /> <input type="hidden"
										name="projectno" value="${board.projectno}" /> <input
										type="hidden" name="empno" value="${mem.empno}" /> <input
										type="hidden" name="noticetype" value="${board.noticetype}" />
									<input type="hidden" name="writer" value="${board.writer}" />
									<input type="hidden" name="rewriter" value="${mem.empno}" />
									<!-- <input type="hidden" name="pjreplyno" value="0" /> -->
									<input type="hidden" name="curPage" value="${reply.curPage}" />

									<c:choose>
										<c:when test="${mem.empno eq board.writer}">
											<div class="form-group">
												<label for="title" class="col-form-label">제목</label> <input
													id="title" name="title" type="text" class="form-control"
													placeholder="제목을 입력해주세요" value="${board.title}">
											</div>
										</c:when>
										<c:otherwise>
											<div class="form-group">
												<label for="title" class="col-form-label">제목 </label> <input
													id="title" name="title" type="text" class="form-control"
													placeholder="제목을 입력해주세요" value="${board.title}" disabled>
											</div>
										</c:otherwise>
									</c:choose>
									<div class="form-group">
										<label for="name">작성자</label> <input id="name" type="text"
											class="form-control" disabled value="${board.name}">
									</div>
									<div class="form-group" style="width: 25%; float: left">
										<label for="credate" class="col-form-label">등록일</label> <input
											id="credate" type="text" class="form-control"
											style="width: 300px;" disabled
											value="<fmt:formatDate type='both'  value='${board.credate}'/>" />

									</div>
									<div class="form-group" style="width: 25%; float: left">
										<label for="uptdate" class="col-form-label">수정일</label> <input
											id="uptdate" type="text" class="form-control"
											style="width: 300px;" readonly
											value="<fmt:formatDate type='both' value='${board.uptdate }'/>" />

									</div>
									<br> <br> <br> <br>
									<c:choose>
										<c:when test="${mem.empno eq board.writer}">
											<div class="form-group">
												<label for="content">내용</label>
												<textarea class="form-control" id="content" rows="10"
													name="content">${board.content}</textarea>
											</div>
										</c:when>
										<c:otherwise>
											<div class="form-group">
												<label for="content">내용</label>
												<textarea class="form-control" id="content" rows="10"
													name="content" disabled>${board.content} </textarea>
											</div>
										</c:otherwise>
									</c:choose>

									<c:choose>
										<c:when test="${mem.empno eq board.writer}">
											<c:forEach var="fname" begin="1" end="3" varStatus="sts">
												<div class="input-group mb-3">
													<div class="input-group-prepend">
														<span class="input-group-text">첨부 파일( ${sts.count}
															/ 3 )</span>
													</div>
													<input class="form-control fileInfo" name="fnames"
														value="${board.filenames[sts.index-1]}" />
													<div class="custom-file">
														<input type="file" name="report" class="custom-file-input"
															id="file01" /> <label class="custom-file-label"
															for="file01"> 변경할려면 파일을 선택하세요!</label>
													</div>

												</div>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<c:forEach var="fname" begin="1" end="3" varStatus="sts">
												<div class="input-group mb-3">
													<div class="input-group-prepend">
														<span class="input-group-text">첨부 파일( ${sts.count}
															/ 3 )</span>
													</div>
													<input class="form-control fileInfo" name="fnames"
														value="${board.filenames[sts.index-1]}" />
													<div class="custom-file">
														<input type="file" name="report" class="custom-file-input"
															id="file01" /> <label class="custom-file-label"
															for="file01"> 변경할려면 파일을 선택하세요!</label>
													</div>

												</div>
											</c:forEach>
										</c:otherwise>

									</c:choose>
									<div id="btnDiv">
										<c:if test="${mem.empno eq board.writer}">
											<a href="#" id="uptBtn" class="detailBtn bg-primary">수정</a>
										</c:if>
										<c:choose>
											<c:when test="${mem.empno eq board.writer}">
												<a href="#" id="delBtn" class="detailBtn bg-danger">삭제</a>
											</c:when>

											<c:when test="${mem.authno eq 2 }">
												<a href="#" id="delBtn" class="detailBtn bg-danger">삭제</a>
											</c:when>

										</c:choose>

										<c:if test="${board.noticetype eq 'N'}">
											<a href="#" id="replyBtn" class="detailBtn bg-success">답글</a>

										</c:if>

										<a href="#" id="listBtn" class="detailBtn bg-warning" onclick="history.back(-1)">목록</a>
									</div>
									<h5 class="card-header"
										style="margin-top: 20px; width: 1347px; margin-right: 70px;">댓글
										작성</h5>

									<div class="form-group replyinput"
										style="width: 810px; height: 100px; float: left; margin-left: 20px;">
										<label for="replyinput" class="col-form-label">댓글 입력</label><br>
										<input id="replyinput" type="text" name="recontent"
											class="form-control" style="width: 500px; float: left;">
										<div id="writeDiv">
											<a href="#" id="writeBtn">작성</a>
										</div>


									</div>
									<br> <br> <br> <br>


									<div class="replyDiv" style="width: 95%; margin-left: 20px;">

										<c:forEach var="rlist" items="${replylist}">

											<input type="hidden" name="pjreplyno01"
												value="${rlist.pjreplyno}" />

											<table>

												<tr>



													<td>${rlist.name}<c:if
															test="${rlist.writer eq mem.empno}">
															<a href="#" id="reUptBtn${rlist.pjreplyno}"
																class="detailBtn bg-primary "
																style="margin-left: 900px;"
																onclick="uptRe('${rlist.pjreplyno}')">수정</a>
														</c:if> <c:if test="${rlist.writer eq mem.empno }">
															<a href="#" id="reWriteBtn${rlist.pjreplyno}"
																class="detailBtn bg-dark"
																style="display: none; margin-left: 900px;"
																onclick="uptRe2('${rlist.pjreplyno}')">등록</a>
														</c:if> <c:if test="${rlist.writer eq mem.empno }">
															<a href="#" id="reDelBtn" class="detailBtn bg-danger"
																onclick="delRe('${rlist.pjreplyno}')">삭제</a>
														</c:if>

													</td>

												</tr>
												<tr>
													<td><input type="text" name="recontent2"
														value="${rlist.content}"
														id="replycontent${rlist.pjreplyno}" disabled
														style="background-color: white; border: none;" /></td>
												</tr>
												<tr>
													<td><fmt:parseDate var="credate01"
															value="${rlist.credate}" pattern="yyyyMMddHHmmss" /> <fmt:formatDate
															value="${credate01 }" pattern="yyyy-MM-dd HH:mm" /></td>

												</tr>

												<hr>
											</table>

										</c:forEach>



									</div>
								</form>



								<hr>
								<ul class="pagination" style="margin-top: 60px;" id="scroll01">
									<li class="page-item"><a class="page-link"
										href="javascript:goPage(${reply.startBlock-1});" id="preBtn">Previous</a></li>
									<c:forEach var="cnt" begin="${reply.startBlock }"
										end="${reply.endBlock}">

										<li class="page-item ${reply.curPage==cnt?'active':''}">
											<a class="page-link" href="javascript:goPage(${cnt})">${cnt}</a>
										</li>

									</c:forEach>

									<li class="page-item"><a class="page-link" id="btn01"
										href="javascript:goPage(${(reply.endBlock==reply.pageCount)?reply.endBlock:reply.endBlock+1});">
											Next</a></li>
								</ul>





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
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	function goPage(no) {

		$("[name=curPage]").val(no);
		$("form").submit();

	}

	function delRe(no) {

		$("[name=pjreplyno]").val(no);
		if (confirm("삭제하시겠습니까?")) {

			$("form").attr("action",
					"${path}/board.do?method=delpjreply&pjreplyno=" + no);
			$("form").submit();

		}

	}
	function uptRe(no) {

		$("[name=pjreplyno]").val(no);
		$("#replycontent" + no).css("border", "1px solid black");
		$("#replycontent" + no).removeAttr("disabled");
		$("#reUptBtn" + no).css("display", "none");
		$("#reWriteBtn" + no).css("display", "");

	}
	function uptRe2(no) {

		$("[name=pjreplyno]").val(no);
		if (confirm("수정하시겠습니까?")) {
			
			$("form").attr("action",
					"${path}/board.do?method=uptreply&pjreplyno=" + no);
			$("form").submit();

		}

	}

	$("#pageSize").change(function() {

		$("[name=curPage]").val(1);
		$("form").submit();
	});

	$(document)
			.ready(
					function() {
<%-- --%>
	var param = "${param.empno}";
						var projectno = "${board.projectno}";

						$("#delBtn")
								.click(

										function() {

											if (confirm("삭제하시겠습니까?")) {
												$("form")
														.attr("action",
																"${path}/board.do?method=delete");
												$("form").submit();

											}
										});
						$(".custom-file-input").on(
								"change",
								function() {
									$(this).next(".custom-file-label").text(
											$(this).val());
								});
						$(".fileInfo").click(
								function() {
									var fname = $(this).val();
									if (confirm("다운로드하시겠습니까?")) {
										$(location).attr(
												"href",
												"${path}/board.do?method=download&fname="
														+ fname);
									}

								});
						var isUptReply = "${isUptReply}";
						var pjboardno = "${param.pjboardno}"
						if (isUptReply == "Y") {
							alert("수정되었습니다.");
							$(location).attr(
									"href",
									"${path}/board.do?method=detail&pjboardno="
											+ pjboardno);

						}

						var isDelReply = "${isDelReply}";
						var pjboardno = "${param.pjboardno}"
						if (isDelReply == "Y") {
							alert("삭제되었습니다.");
							$(location).attr(
									"href",
									"${path}/board.do?method=detail&pjboardno="
											+ pjboardno);

						}
						$("#uptBtn")
								.click(
										function() {
											if (confirm("수정하시겠습니까?")) {
												$("form")
														.attr("action",
																"${path}/board.do?method=update");
												$("form").submit();

											}
										});

						var isUpt = "${isUpt}";
						if (isUpt == "Y") {
							alert("수정되었습니다.");
							var backno = "${param.projectno}";

							//	window.history.go(-3);

							$("#backno").val(backno);

							$("#go_back").submit();

						}

						$("#writeBtn")
								.click(
										function() {
											if (confirm("작성하시겠습니까?")) {
												if ($("[name=recontent]").val() != "") {
													$("form")
															.attr("action",
																	"${path}/board.do?method=insreply");
													$("form").submit();
												} else if ($("[name=recontent]")
														.val() == "") {
													alert("내용을 입력해주세요");
													$("[name=recontent]")
															.focus();

												}

											}

										});
					
						

						var isIns = "${isIns}";
						var pjboardno = "${param.pjboardno}"
						if (isIns == "Y") {
							alert("등록되었습니다.");
							$(location).attr(
									"href",
									"${path}/board.do?method=detail&pjboardno="
											+ pjboardno);

						}

						var isDel = "${isDel}";
						if (isDel == "Y") {
							alert("삭제되었습니다.");
							var backno = "${param.projectno}";

							//	window.history.go(-3);

							$("#backno").val(backno);

							$("#go_back").submit();

						}
						$("#replyBtn").click(

								function() {
									var pjboardno = "${param.pjboardno}";
									if (confirm("답글을 달겠습니다!")) {
										$("form").attr(
												"action",
												"${path}/board.do?method=reply&pjboardno="
														+ pjboardno);
										$("form").submit();
									}
								});

						var mem = "${mem.empno}";
						/* 로그인 되지않았을때 로그인창으로 이동 */
						if (mem == null || mem == "") {
							$(location).attr("href",
									"${path}/login.do?method=base");
						} else {
							/* 로그인 되었을 때 회원 권한 처리 */
							var authno = "${mem.authno}";
							switch (authno * 1) {
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
						/*접근권한*/
						var auth = "${mem.authno}";
						if (auth == "3") {
							alert("접근 권한이 없습니다!");
							history.back();
						}

						/* 로그아웃 처리 */
						var logoutOk = "${logoutOk}";
						if (logoutOk == "true") {
							$(location).attr("href",
									"${path}/login.do?method=base");
						}
						$("#goLogout")
								.click(
										function() {
											if (mem != null) {
												if (confirm("로그아웃 하시겠습니까?")) {
													$(location)
															.attr("href",
																	"${path}/login.do?method=logout");
												}
											}
										});

					});
</script>
</html>