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
    html,
    body {
        height: 100%;
    }

    body {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        padding-top: 40px;
        padding-bottom: 40px;
    }
         .logo-img{
    	width:180px;
    	height:50px;
    }
#alert-success, #alert-cancle,#alert-ptcancle{
	display:none;
	
}
    </style>
</head>

<body>
    <!-- ============================================================== -->
    <!-- forgot password  -->
    <!-- ============================================================== -->
    <c:if test="${mem==null and goLogin==null}">
	    <div class="splash-container">
        <div class="card">
            <div class="card-header text-center"><br><img class="logo-img" src="${path}/img/logo.png" alt="logo"><span class="splash-description"></span></div>
            <div class="card-body">
            	<br>
                 <h5 style="text-align:center;"><b>해당하는 사원이 <br>존재하지 않습니다.</b></h5>
                <br>
                   
                    
                 
                    <div class="form-group pt-1"><a class="btn btn-block btn-primary btn-xl" href="${path}/login.do?method=base">로그인 화면으로</a></div>
            </div>
            <div class="card-footer text-center">
                <span>문의사항은 인사팀으로 연락바랍니다. <br>tel) 02-123-4567</span>
            </div>
        </div>
    </div>
    </c:if>
    
    
    <c:if test="${mem!=null}">
    <div class="splash-container">
        <div class="card">
            <div class="card-header text-center"><br><img class="logo-img" src="${path}/img/logo.png" alt="logo"><span class="splash-description"></span></div>
            <div class="card-body">
                  <form method="post">
                  <input type="hidden" name="empno" value="${mem.empno}">
                  <p> <b>비밀번호 변경</b></p>
                    <div class="form-group">
                        <input class="form-control form-control-lg" type="password" name="pass" required="" placeholder="새로운 비밀번호 입력" autocomplete="off">
                    </div>
                       <div class="form-group">
                        <input class="form-control form-control-lg" type="password" name="passCheck" required="" placeholder="비밀번호 확인" autocomplete="off">
                        <span id="alert-ptcancle"><br>비밀번호는 8~12자리, 영문,특수문자,숫자 1자리 이상이여야 합니다.</span>
                        <span id="alert-success"><br>비밀번호가 일치합니다.</span><span id="alert-cancle"><br>비밀번호가 일치하지 않습니다.</span>
                    </div>
              
                    <div class="form-group pt-1"><a class="btn btn-block btn-primary btn-xl" id="goPassBtn" >비밀번호 변경</a></div>
                </form>
            </div>
           <div class="card-footer text-center">
                <span>문의사항은 인사팀으로 연락바랍니다. <br>tel) 02-123-4567</span>
            </div>
        </div>
    </div>
    </c:if>
    <!-- ============================================================== -->
    <!-- end forgot password  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="../assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
</body>
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
		
		/* 패스워드 변경됬을경우 */
		var goLogin= "${goLogin}";
		
		if(goLogin=="true"){
			alert("비밀번호가 변경되었습니다. 로그인해주세요")
			$(location).attr("href","${path}/login.do?method=base");	
		}
	
		
		
		
		$("#goPassBtn").click(function(){
			
				if( $("input[name=pass]").val()==null || $("input[name=passCheck]").val()==""){
						alert("비밀번호를 입력해주세요.");
						$("input[name=empno]").focus();
					return false;
				}
				if( $("input[name=pass]").val()!=$("input[name=passCheck]").val()){
				
					alert("비밀번호가 일치하지않습니다.");
					$("input[name=pass]").focus();
				return false;
			}

				else{
					$("form").attr("action","${path}/login.do?method=changePw");
					$("form").submit();
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
</script>
</html>