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
.input1{float:left;width:31%;}
.input2{float:left;width:31%;margin-left:45px;}
.input3{float:right;width:31%;}
.input4{float:right;width:31%;}
#listBtn{float:right;}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$(".custom-file-input").on("change",function(){
		$(this).next(".custom-file-label").text($(this).val());
	});	
	
});
	function goList(){
		$(location).attr("href","${path}/issue.do?method=list");
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
        <div class="dashboard-wrapper" style="height:830px;">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content" style="height:830px;">
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
                                            <li class="breadcrumb-item"><a href="javascript:goList()" class="breadcrumb-link">이슈관리</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">이슈</li>
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
										<form method="post" enctype="multipart/form-data">
											<p style="font-size: 10px;" class="text-danger">
												<span class="badge-dot badge-danger"></span>&nbsp;는 필수 입력
												표시입니다
											</p>
											<input type="hidden" name="issueno" value="${issue.issueno}" />
											<c:if test="${mem.authno==1}">

												<div class="form-group">
													<div class="inputLeft">
														<label for="inputText3" class="col-form-label">프로젝트</label>
														<select readonly id="inputText3" type="text"
															class="form-control">
															<option value="${issue.projectno}" selected>${issue.pname}</option>
														</select>
													</div>
													<div class="inputRight">
														<label for="inputText3" class="col-form-label">업무</label>
														<select readonly type="text" class="form-control">
															<option value="${issue.taskno}" selected>${issue.tname}</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<div class="inputLeft">
														<label for="inputText3" class="col-form-label">요청자</label>
														<input readonly id="inputText3" type="text"
															class="form-control" value="${issue.name}">
													</div>
													<div class="inputRight">
														<label for="inputText3" class="col-form-label">등록일자</label>
														<fmt:formatDate var="regdate" value="${issue.regdate}"
															pattern="yyyy-MM-dd" />
														<input readonly type="text" class="form-control"
															value="${regdate}">
													</div>
												</div>
												<div style="clear: both;">
													<div class="form-group">
														<span class="badge-dot badge-danger"></span> <label
															for="inputText3" class="col-form-label">제목</label> <input
															type="text" name="title" class="form-control"
															value="${issue.title}" />
													</div>
													<div class="form-group">
														<span class="badge-dot badge-danger"></span> <label
															for="exampleFormControlTextarea1">내용</label>
														<textarea class="form-control" name="content"
															id="exampleFormControlTextarea1" rows="3">${issue.content}</textarea>
													</div><%-- 
													<label>첨부파일</label><input type="button" class="btn btn-primary addFiles" value="파일 추가" style="height:40px;float:right"/><br>
													<div style="clear:both;"></div>
													<c:if test="${issue.filenames.size()==0}">
													<div class="form-group" id="fileform" style="margin-top:5px;">
			                                            <div>
				                                            <input style="width:47.5%;float:left;" class="form-control fileInfo" 
				                                            name="fnames" value="${issue.filenames[sts.index-1]}" />	
				                                            
				                                            <div class="custom-file mb-3" style="width:52.5%;float:left;">
				                                            	<input  type="file" name="report" class="custom-file-input" id="customFile">
				                                                <label class="custom-file-label" for="customFile">첨부파일</label>
				                                            </div>
				                                        </div>
				                                    </div>
													</c:if>
													<c:if test="${issue.filenames.size()!=0}">
													<div class="form-group" id="fileform" style="margin-top:5px;">
													<c:forEach var="fname" begin="1" end="${issue.filenames.size()}" varStatus="sts">
													
			                                            <div>
				                                            <input style="width:47.5%;float:left;" class="form-control fileInfo" 
				                                            name="fnames" value="${issue.filenames[sts.index-1]}" />	
				                                            
				                                            <div class="custom-file mb-3" style="width:52.5%;float:left;">
				                                            	<input  type="file" name="report" class="custom-file-input" id="customFile">
				                                                <label class="custom-file-label" for="customFile">첨부파일</label>
				                                            </div>
				                                        </div>				                                    
													</c:forEach>
													</div>
													</c:if> --%>
													<label>첨부파일</label>
															<c:forEach var="fname" begin="1" end="3" varStatus="sts">
																<div class="form-group">
																	<input style="width: 50%; float: left;"
																		class="form-control fileInfo" name="fnames"
																		value="${issue.filenames[sts.index-1]}" />

																	<div class="custom-file mb-3"
																		style="width: 50%; float: left;">
																		<input type="file" name="report"
																			class="custom-file-input" id="customFile"> <label
																			class="custom-file-label" for="customFile">첨부파일</label>
																	</div>
																</div>
															</c:forEach>
											</c:if>
											<c:if test="${mem.authno==4}">

												<div class="form-group">
													<div class="inputLeft">
														<label for="inputText3" class="col-form-label">프로젝트</label>
														<select readonly id="inputText3" type="text"
															class="form-control">
															<option value="${issue.projectno}" selected>${issue.pname}</option>
														</select>
													</div>
													<div class="inputRight">
														<label for="inputText3" class="col-form-label">업무</label>
														<select readonly type="text" class="form-control">
															<option value="${issue.taskno}" selected>${issue.tname}</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<div class="inputLeft">
														<label for="inputText3" class="col-form-label">요청자</label>
														<input readonly id="inputText3" type="text"
															class="form-control" value="${issue.name}">
													</div>
													<div class="inputRight">
														<label for="inputText3" class="col-form-label">등록일자</label>
														<fmt:formatDate var="regdate" value="${issue.regdate}"
															pattern="yyyy-MM-dd" />
														<input readonly type="text" class="form-control"
															value="${regdate}">
													</div>
												</div>
												<div style="clear: both;">
													<div class="form-group">
														<span class="badge-dot badge-danger"></span> <label
															for="inputText3" class="col-form-label">제목</label> <input
															readonly type="text" name="title" class="form-control"
															value="${issue.title}" />
													</div>
													<div class="form-group">
														<span class="badge-dot badge-danger"></span> <label
															for="exampleFormControlTextarea1">내용</label>
														<textarea class="form-control" name="content" readonly
															id="exampleFormControlTextarea1" rows="3">${issue.content}</textarea>
													</div>
													<c:if test="${issue.filenames.size()!=0}">
													<label>첨부파일</label>
													<c:forEach var="fname" begin="1" end="${issue.filenames.size()}" varStatus="sts">
														<div class="form-group">
															<input readonly style="width: 50%; float: left;"
																class="form-control fileInfo" name="fnames"
																value="${issue.filenames[sts.index-1]}" />
																

															<div class="custom-file mb-3"
																style="width: 50%; float: left;">
																<c:if test="${mem.authno==1}">
																<input readonly type="file" name="report"
																	class="custom-file-input" id="customFile"> <label
																	readonly class="custom-file-label" for="customFile">첨부파일</label>
																</c:if>
															</div>
															
														</div>
													</c:forEach>
													</c:if>
													
											</c:if>

											<div style="clear: both;">
												<br> <br>
												<hr>
												<br>
												<div class="form-group">
															<div class="input1">
																<span class="badge-dot badge-danger"></span> <label
																	for="selectState" class="col-form-label">상태</label> 
																	<select id="selectState" disabled name="state" type="text" 
																	class="form-control" style="-webkit-appearance:button;">
																	<option value="${issue.state}">${issue.state}</option>
																	<option value="조치진행">조치진행</option>
																	<option value="조치완료">조치완료</option>
																</select>
															</div>
															<div class="input2">
																<span class="badge-dot badge-danger"></span> <label
																	for="selectDiv" class="col-form-label">유형</label> <select
																	id="selectDiv" disabled name="selectDiv" type="text"
																	class="form-control" style="-webkit-appearance:button;">
																	<c:if test="${issue.codeno!=null&&issue.codeno!=''}">
																	<c:if test="${issue.codeno<=4}">
																	<option selected value="1">위험</option>
																	<option value="2">기회</option>
																	</c:if>
																	<c:if test="${issue.codeno>=5}">
																	<option selected value="2">기회</option>
																	<option value="1">위험</option>																	
																	</c:if>
																	</c:if>																	
																</select>
															</div>
															<div class="input3" >
																<span class="badge-dot badge-danger"></span> <label
																	for="measurecode3" class="col-form-label">조치코드</label> <select
																	id="measurecode3" disabled type="text"
																	class="form-control" style="-webkit-appearance:button;">
								                            		<option value="${issue.codeno}">${issue.codename}</option>																	
																</select>
															</div>
															
														</div>
												<div class="form-group">
													<div class="inputLeft">
														<label for="inputText3" class="col-form-label">담당자</label>
														<input readonly="readonly" id="inputText3" name="mempno"
															type="text" class="form-control" value="${issue.mname}">
													</div>
													<div class="inputRight">
														<label for="inputText3" class="col-form-label">조치완료일</label>
														<fmt:formatDate var="measuredate"
															value="${issue.measuredate}" pattern="yyyy-MM-dd" />
														<input readonly="readonly" type="text"
															class="form-control" value="${measuredate}"
															readonly=readonly>
													</div>
												</div>
												<div style="clear: both;">
													<div class="form-group">
														<span class="badge-dot badge-danger"></span> <label
															for="inputText3" class="col-form-label">제목</label> <input
															readonly="readonly" type="text" class="form-control"
															name="mtitle" value="${issue.mtitle}" />
													</div>
													
													<c:if test="${issue.codeetc!=null}">
													<div class="form-group">
														<label for="inputText3" class="col-form-label">설명</label> <textarea
															readonly="readonly" type="text" class="form-control"
															name="mtitle" >${issue.codeetc}</textarea>
													</div>
													</c:if>
													<div class="form-group">
														<span class="badge-dot badge-danger"></span> <label
															for="exampleFormControlTextarea1">내용</label>
														<textarea readonly="readonly" class="form-control"
															name="mcontent" id="exampleFormControlTextarea1" rows="3">${issue.mcontent}</textarea>
													</div>
													<c:if test="${issue.filenames2.size()!=0&&issue.mname!=null}">
													<label>첨부파일</label>
													<c:forEach var="fname" begin="1" end="${issue.filenames2.size()}" varStatus="sts">
														<div class="form-group">
															<input readonly style="width: 50%; float: left;"
																class="form-control fileInfo"
																value="${issue.filenames2[sts.index-1]}" />

															<div class="custom-file mb-3"
																style="width: 50%; float: left;">
																<!-- <input diasbled="diabeld" type="file" name="report" class="custom-file-input" id="customFile">
                                                <label class="custom-file-label" for="customFile">첨부파일</label> -->
															</div>
														</div>
													</c:forEach>
													</c:if>
													<c:if test="${mem.authno!=4}">
														<input type="button" id="uptBtn" class="btn btn-primary"
															value="수정" />
													</c:if>
													<c:if test="${issue.mname==null&&mem.authno!=4}">
														<input type="button" id="delBtn" class="btn btn-danger"
															value="삭제" />
													</c:if>
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
	$(document).ready(function(){
		callNotice();
		var isIns = "${isIns}";
		if(isIns=="Y"){
			if(confirm("등록되었습니다.\n목록으로 이동하시겠습니까?")){
				$(location).attr("href","${path}/issue.do?method=list");	
			}
		}
		
		var isDel = "${isDel}";
		if(isDel=="Y"){
			alert("삭제되었습니다.");
			$(location).attr("href","${path}/issue.do?method=list");	
		}
		var isUpt = "${isUpt}";
		if(isUpt=="Y"){
			alert("수정되었습니다.");
			$(location).attr("href","${path}/issue.do?method=list");	
		}
		$("#listBtn").click(function(){
			if(confirm("목록으로 이동하시겠습니까?")){
				$(location).attr("href","${path}/issue.do?method=list");
			}
		});	
		
		$(".fileInfo").click(function(){
			var fname=$(this).val();
			if(fname!=""&&fname!=null){
				if(confirm("다운로드하시겠습니까?")){
					$(location).attr("href",
						"${path}/issue.do?method=download&fname="+fname);	
				}
			}
		});		
		
		$("#uptBtn").click(function(){
			if(confirm("수정하시겠습니까?")){
				$("form").attr("action","${path}/issue.do?method=uptIssue");
				$("form").submit();				
			}
		});
		
		$(".custom-file-input").on("change",function(){
			$(this).next(".custom-file-label").text($(this).val());
		});	 
		
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
		
		
		
		
		
		$("#delBtn").click(function(){
			if(confirm("삭제하시겠습니까?")){
				$("form").attr("action","${path}/issue.do?method=delete");
				$("form").submit();				
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