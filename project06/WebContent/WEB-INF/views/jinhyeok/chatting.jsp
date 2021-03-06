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
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">

</head>
<style>
hr{
 border: 0.5px solid #bfbfbf;
}
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
#chatArea{
	border:1px solid #bfbfbf;
	font-family: 'Noto Sans KR', sans-serif;
}

#btnDiv {
	text-align: right;
}

.replyDiv {
	
}
#sendBtn{
	margin-top:15px;
	margin-right:5px;

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

	.input-group-text{width:100%;background-color:linen;color:balck}
	.input-group-prepend{width:20%}
	#chatArea{
		width:95%;height:600px;overflow-y:auto;text-align:left;
		background-color:white; 
	}
	#chatMessageArea{
		width:95%;
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
			<form method="post" id="chatfrm">
				<input type="hidden" name="name" value="${mem.name}" /> <input
					type="hidden" name="empno" value="${mem.empno}" /> 
					<c:forEach var="plist" items="${plist}">
					<input type="hidden" name="projectno" value="${plist.projectno}" />
					 <input type="hidden" name="pname" value="${plist.pname}" />
					
					</c:forEach>
				<div class="main-container">
					<div style="text-align: right; margin-left: 10px;">
						<input type="button" class="btn btn-info" value="채팅입장"
							id="enterBtn" /> <input type="button" class="btn btn-success"
							value="나가기" id="exitBtn" />


					
						<div class="content-container">
							<div class="chat-module">
							
								
									<h3 style="text-align:left;">${param.pname}&nbsp;&nbsp;채팅방</h3>
								
								<div class="chat-module-top">
									<div class="chat-module-body">
										<div class="media chat-item">

											<div class="media-body" style="padding-bottom:30px;">
												<div class="chat-item-title"></div>
												<div class="chat-item-body">
													<div id="chatArea" class="input-group-append">
														<div id="chatMessageArea"></div>

													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="chat-module-bottom">
								
										<textarea class="form-control" id="msg"
											placeholder="보낼 메시지를 입력하세요" rows="1"></textarea>
										<div class="chat-form-buttons">
											<a href="#" id="sendBtn" class="detailBtn bg-primary">보내기</a>

										</div>
									
								</div>
							</div>

							
						</div>
					</div>
				</div>
				</form>
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



	$(document)
			.ready(
					function() {
<%-- --%>

						

						var wsocket;
						$("#sendBtn").click(function() {
							sendMsg();
						});

						$("#msg").keyup(function(e) {
							if (e.keyCode == 13) {
								sendMsg();
							}
						});

						function sendMsg() {
							var name = $("[name=name]").val(); // 보내는 사람 id
							var msg = $("#msg").val(); // 보내는 메시지
							var projectno = "${param.projectno}";
							
							// 서버 handler에 데이터 전송
							// handleTextMessage(WebSocketSession session, TextMessage message)
							// 호출 메시지는 TextMessage 객체를 통해서 전달
							wsocket.send("msg:" + projectno + name
									+"\t:\t" + msg)
						
							// 보낸 후 메시지창 reset
							$("#msg").val("");
							$("#msg").focus();
						}
						var NoPro = "${NoPro}";
						if(NoPro==""){
							var projectno = "${param.projectno}";
							if (projectno == "") {
								
								$("#chatfrm").submit();
							}
						}else if(NoPro=="Y"){
							alert("참여하신 프로젝트가 없습니다.");
							history.back();
							
						}
						
						
						if (projectno != "") {
							$("[name=projectno]").val(projectno);
						}

						$("#enterBtn")
								.click(
										function() {
											if (confirm("채팅서버에 접속합니다!")) {
												// new WebSocket("")
												// ws:// protocol : 웹소켓 통신 언어로 데이터처리
												// 192.168.4.222:5080/${path}/ : 특정한 서버주소
												// /chat-ws.do : 연동되는 socket 통신 handler 모듈의 url패턴
												// @Controller("chatHandler")
												// 192.168.4.251 (jh)
												wsocket = new WebSocket(
														"ws://192.168.4.251:5080/${path}/chat-ws.do");
												// 객체가 생성되는 순간 접속처리 된다
												// # 기본 처리 메서드 선언

												// 1. 접속시 처리 후 처리할 메서드
												//		서버의 handler를 처리한 후
												wsocket.onopen = function() {
													//alert("서버에 연결되었습니다");	
													var pname = "${param.pname}"
													var name="${param.name}";
													var projectno = "${param.projectno}";
													
													receiveMsg(pname+"\t\t"+
															"프로젝트 채팅방에"+"\t\t"
															+ "연결되었습니다!!");
											
													wsocket.send("msg:"+projectno+ name+ ": 님이 채팅방에 입장하셨습니다.");
												
													
												};
												// 2. 메시지를 전송 했을 때 
												wsocket.onmessage = function(evt) {		
													// 전송된 메시지를 화면에 추가처리
													var data = evt.data;
													var msg = "";
													var name="${param.name}";
													var projectno = "${param.projectno}";
													if (data.substring(	0,4 + projectno.length) == "msg:"+ projectno) {
														msg = data	.substring(4 + projectno.length);
														receiveMsg(msg);
														
													}
													
												};
												// 3. 접속 종료 후 처리할 메서드
												wsocket.onclose = function() {
													alert("연결을 종료하였습니다");
													$("#chatMessageArea").text("");									
													$("[name=name]").focus();
													receiveMsg("연결종료");
													
												};
												$("#exitBtn")
														.click(
																function() {
																	
																	var name = $("[name=name]").val(); // 보내는 사람 id
																	var projectno = "${param.projectno}";
																	wsocket.send("msg:"+projectno+ name+ ": 님이 접속을 종료하였습니다");
																	
																	wsocket.close();				
																});					
																						
																					
																
															
												function receiveMsg(msg) {
													let today = new Date(); 
													
													$("#chatMessageArea").append(today.toLocaleString()+"\t\t\t\t\t\t\t"+ msg +"<br>");
													var ht = parseInt($("#chatArea").height());
													var mx = parseInt($("#chatMessageArea").height());
													$("#chatArea").scrollTop(mx);					
												}
												
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
						var auth = "${mem.authno}";
						if (auth == "4") {
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