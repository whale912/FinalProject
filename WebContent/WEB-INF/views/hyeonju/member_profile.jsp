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

<style>
.selectBar{
	width:100%;
    display: block;
    width: 100%;
    height: calc(2.25rem + 2px);
    padding: .375rem .75rem;
    font-size: 1rem;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: .25rem;
}

#alert-success, #alert-cancle,#alert-ptcancle{
	display:none;
	
}

</style>
</head>
<body>
	<!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper" style="height:830px">
        <jsp:include page="../nav_bar.jsp"/>
		<jsp:include page="../menu_bar.jsp"/>
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper" style="height:830px">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content "  style="height:823px;">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row" >
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                            	<!-- 페이지 타이틀 -->
                                <h2 class="pageheader-title">마이프로필</h2>
                                
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end pageheader  -->
                    <!-- ============================================================== -->
                    <div class="ecommerce-widget">

                        <div class="row">                            
                              <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-header tab-regular">
                                        <ul class="nav nav-tabs card-header-tabs" id="myTab" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" id="card-tab-1" data-toggle="tab" href="#card-1" role="tab" aria-controls="card-1" aria-selected="true">마이프로필</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="card-tab-2" data-toggle="tab" href="#card-2" role="tab" aria-controls="card-2" aria-selected="false">비밀번호 변경</a>
                                            </li>                                       
                                        </ul>
                                          
                                    </div>
                                    <div class="card-body">
                                        <div class="tab-content" id="myTabContent">
                                            <div class="tab-pane fade show active" id="card-1" role="tabpanel" aria-labelledby="card-tab-1">
                                              
                                                <form method="post" enctype="multipart/form-data" id="myFrom"
															action="${path}/profile.do?method=myUpdate">
                                               
                                              	 <input type="hidden" name="empno" value="${mem.empno}" />
                                              	 <input type="hidden" name="profile" value="" />
                                           	   	 
                                           
                                                	 <div class="user-avatar text-center d-block">
                                        				
                                        				 <img id="preview"  src="${path}/assets/images/avatar-2.jpg" alt="User Avatar" class="rounded-circle user-avatar-xxl">
                                        				<label class="btn btn-space btn-primary">
                                        				이미지 변경
                                        				<input type="file" name="proImg" style="display:none;">
                                        			
                                        				</label>
                                        				<button type="button" class="btn btn-space btn-secondary" id="imgCancle">취소</button>
                                        				 
                                   					 </div>
                                       				 <div class="form-group">
                                           				 <label for="inputUserName">이름</label>
                                            			 <input id="inputUserName" type="text" name="name" value="${mem.name}" data-parsley-trigger="change" required="" placeholder="Enter user name" autocomplete="off" class="form-control">
                                        			 </div>
                                        			 <div class="form-group">
                                           				 <label for="inputRank">직급</label>
                                            			 <input id="inputRank" type="text" name="rankno" data-parsley-trigger="change" readonly required="" placeholder="Enter user rank" autocomplete="off" class="form-control">
                                        			 </div>
                                        			 <div class="form-group">
                                            		 	<label for="inputEmail">이메일주소</label>
                                            			<input id="inputEmail" type="email" name="email" value="${mem.email}"  data-parsley-trigger="change" required="" placeholder="user@ps.com" autocomplete="off" class="form-control">                                            			
                                        			 </div>
               
                                    				
                                       				 <div class="form-group">
                                            		 	<label for="inputDeptname">부서</label>
                                            				<div class="card-body" style="padding:0px;overflow:hidden;">                   
				                               					<select class="selectpicker selectBar" name="deptno" style="padding:0px;">
				                                    				<option>부서를 선택하세요</option>
				                                                    <option value="10">개발팀</option>
				                                                    <option value="20">디자인팀</option>
				                                                    <option value="30">재무관리팀</option>
				                                                    <option value="40">리스크관리팀</option>
				                                                    <option value="50">인사팀</option>
				                                				</select>
				                           					</div>
                                        			 </div>
                                        			 <br>
                                       				 <div class="row" style="width:100%; text-align:center; margin:0px; padding:0px;">                                           		 	
                                            		 	<div class="col-sm-6 pl-0" style="margin:0 auto;">
                                                
                                                    			<button type="button" id="myUpdateBtn" class="btn btn-space btn-primary">수정</button>
                                                    			<button type="button" id="before"class="btn btn-space btn-secondary" >취소</button>
                                                			
                                           			 	</div>
                                        			 </div>
                                    			</form>
                                            </div>
                                            <div class="tab-pane fade" id="card-2" role="tabpanel" aria-labelledby="card-tab-2">
                                                <form method="post" action="${path}/profile.do?method=changePw" id="passForm" data-parsley-validate="">
                                                	<input type="hidden" name="empno" value="${mem.empno}"/>
                                                	<div class="form-group">
                                                	
                                           				 <label for="inputPassword">새로운 비밀번호 입력<br><span style="font-size:10pt; color:red;">(8~12자리 영문,특수문자,숫자 1자리 이상)</span></label>
                                            			 <input id="inputPassword" name="pass" type="password" placeholder="새로운 비밀번호 입력" required="" class="form-control">
                                        			 </div>
                                        			 <div class="form-group">
                                            		 	<label for="inputRepeatPassword">비밀번호 확인</label>
                                            			<input id="inputRepeatPassword" name="passCheck" data-parsley-equalto="#inputPassword" type="password" required="" placeholder="비밀번호 확인" class="form-control">
                                            		
                                        			 </div>
                                        				 <div class="form-group" style="height:22px;"> 
                                                			<span id="alert-ptcancle">비밀번호는 8~12자리, 영문,특수문자,숫자 1자리 이상이여야 합니다.<br></span>
                       										<span id="alert-success">비밀번호가 일치합니다.<br></span><span id="alert-cancle">비밀번호가 일치하지 않습니다.<br></span>
                                                    		</div>
                                        			<div class="row" style="width:100%; margin:0 auto; text-align:center;padding:0px;">                                           		 	
                                            		 	<div class="col-sm-6 pl-0" style="margin:0 auto;">
                                            		 		
                                                    			<button type="submit" class="btn btn-space btn-primary" id="goPassBtn">수정</button>
                                                    			<button class="btn btn-space btn-secondary">취소</button>
                                                			
                                           			 	</div>
                                        			 </div>                                         
                                                </form> 
                                            </div>                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                    		 <!-- 두 번째 줄 내용 -->
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
		<%-- --%>
		callNotice();
		
		//취소 버튼 클릭시
		$("#before").click(function(){
			$(location).attr("href","${path}/profile.do?method=base");
		});
		
		//업데이트 처리 이후
		var updateOk ="${updateOk}";
		if(updateOk=="true"){
			alert("프로필이 수정되었습니다.");
		}
		//프로필사진 취소 클릭시.
		
		$("#imgCancle").click(function(){
			if(confirm("취소하시겠습니까?")){
				$("#preview").attr("src","${path}/assets/images/avatar-2.jpg");
				$("[name=proImg]").val(""); //  프로필 사진
				$("[name=profile]").val(""); //프로필사진 이름

			}
		});
		
		var mem = "${mem.empno}";
		/* 로그인 되지않았을때 로그인창으로 이동 */
		if (mem == null || mem == "") {
			alert("로그인이 필요합니다.");
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
			
			var rankno = "${mem.rankno}";	
			switch (rankno*1) {
				case 2:
					$("#inputRank").val("대리");
					break;
				case 3:
					$("#inputRank").val("과장");
					break;
				case 4:
					$("#inputRank").val("차장");
					break;
				case 5:
					$("#inputRank").val("부장");
					break;
				case 6:
					$("#inputRank").val("대표이사");
					break;
				
				default:
					$("#inputRank").val("사원");
					break;
			}
			
			var deptno="${mem.deptno}";
			
				$("[name=deptno]").val(deptno).prop("checked", true);
			
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

		if("${mem.profile}"!=null && "${mem.profile}"!=""){
			$("[name=profile]").val("${mem.profile}");
			$("#preview").attr("src","${path}/z01_upload/${mem.profile}");

		}
	
		$("[name=proImg]").change(function(){
			if(this.files && this.files[0]){
				var reader = new FileReader();
				reader.onload = function(e){
				$("#preview").attr("src",e.target.result);
				}
					reader.readAsDataURL(this.files[0]);
			}
			$("[name=profile]").val($(this)[0].files[0].name);
		});
		
		$("#myUpdateBtn").click(function(){
			
			var rankno="${mem.rankno}"
			switch (rankno*1) {
			case 2:
				$("[name=rankno]").val(2);
				break;
			case 3:
				$("[name=rankno]").val(3);
				break;
			case 4:
				$("[name=rankno]").val(4);
				break;
			case 5:
				$("[name=rankno]").val(5);
				break;
			case 6:
				$("[name=rankno]").val(6);
				break;
			
			default:
				$("[name=rankno]").val(1);
				break;
		}
			
			$("#myFrom").submit();
		});
		
		//***************************패스워드 변경 부분.*************************
	
		var passUpdate="${passUpdate}";
		if(passUpdate=="true"){
			alert("비밀번호가 변경되었습니다.");
		}
		
		$("#goPassBtn").click(function(){
			
			if( $("input[name=pass]").val()==null || $("input[name=passCheck]").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("input[name=pass]").focus();
				return false;
			}
			if( $("input[name=pass]").val()!=$("input[name=passCheck]").val()){
			
				alert("비밀번호가 일치하지않습니다.");
				$("input[name=pass]").focus();
			return false;
			}
			
			if($("#alert-ptcancle").is(':visible') || $("#alert-cancle").is(':visible')){
				alert("비밀번호를 확인해주세요.");
				$("input[name=pass]").focus();
				return false;
			}

			else{
				$("#passForm").submit();
				return true;
			}

	});
	
	/* pass check */
	
	   $("[name=passCheck]").keyup(function () {
	        var pwd1 = $("[name=pass]").val();
	        var pwd2 = $("[name=passCheck]").val();
	    	var pattern_num = /[0-9]/;	// 숫자 
	    	var pattern_eng = /[a-zA-Z]/;	// 문자 
	    	var pattern_spc = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자
	    	
	        if (pwd1 != "" && pwd2 !== "" ) {
	        	
	        	if(pwd1 == pwd2){
	        		
	        		if(!(pwd1.length>=8) || !(pwd1.length<=12) ||!(pwd2.length>=8) || !(pwd2.length<=12)||
	        			!pattern_num.test(pwd1)||!pattern_eng.test(pwd1)||!pattern_spc.test(pwd1)){
	
	        			$("#alert-cancle").hide();
	        			$("#alert-success").hide();
	        			$("#alert-ptcancle").css("color","red");
	        			$("#alert-ptcancle").show();
	        		}else{
	        			
		        		
	        			$("#alert-ptcancle").hide();
	        			$("#alert-cancle").hide();
		        		$("#alert-success").css("color","green");
			        	$("#alert-success").show();
			        	
	        		}
	        	}
	        	else{ 
	        			
	        			$("#alert-ptcancle").hide();
	        			$("#alert-cancle").css("color","red");
		        		$("#alert-success").hide();
		        		$("#alert-cancle").show();
		 
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