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
    </style>
</head>

<body>
    <!-- ============================================================== -->
    <!-- forgot password  -->
    <!-- ============================================================== -->
    
    <div class="splash-container">
        <div class="card">
            <div class="card-header text-center"><img class="logo-img" src="${path}/img/logo.png" alt="logo"><span class="splash-description">Please enter your user information.</span></div>
            <div class="card-body">
                  <form method="post">
                  <input type="hidden" name="subject">
                  <input type="hidden" name="content">
                  <input type="hidden" name="regdate">
                  <input type="hidden" name="receiver">
                  <input type="hidden" name="checkNum">
                 
           
                  <p> <b>비밀번호 찾기</b></p>
                    <div class="form-group">
                        <input class="form-control form-control-lg" type="text" name="empno" required="" placeholder="사원번호를 입력하세요." autocomplete="off">
                    </div>
                     <div class="form-group">
                        <input class="form-control form-control-lg" type="text" name="name" required="" placeholder="이름을 입력하세요." autocomplete="off">
                   	 </div>
                     <div class="form-group">
                        <input class="form-control form-control-lg" type="email" name="email" required="" placeholder="이메일을 입력하세요." autocomplete="off">
                    </div>
                    
                    <!-- <button class="btn btn-primary" style="text-align:center; text-align:left; font-size:15px; vertical-align: top; display:inline-block;">인증하기 </button>
                  -->
                    
                    <div class="form-group pt-1" style="color:white"><a class="btn btn-block btn-primary btn-xl" id="goPassBtn" >이메일 인증</a></div>
                </form>
                
            </div>
           <div class="card-footer text-center">
                <span>문의사항은 인사팀으로 연락바랍니다. <br>tel) 02-123-4567</span>
            </div>
        </div>
    </div>
  
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
		//조회된 정보
		var empno="${mem.empno}";
		var email="${mem.email}";
		var name="${mem.name}";
		//전송된 정보
		var empnoP="${param.empno}";
		var checkNum="";

		for(var i=0; i<6; i++){
			checkNum+=""+Math.floor(Math.random()*9);
		}
	
		checkNum=Number(checkNum);
		
		if(empno!=""){
			$("[name=empno]").val(empno);
			$("[name=email]").val(email);
			$("[name=name]").val(name);
			
              $("[name=subject]").val("PERFECT SOLUTION 비밀번호 찾기 인증 메일입니다!");
              $("[name=content]").val(name+"사우님 안녕하세요. PERFECT SOLUTION입니다!\n"
            		  				+"이메일 인증 인증번호는 <"+checkNum+">입니다");
              $("[name=receiver]").val(email);
              $("[name=checkNum]").val(checkNum);
             
              alert("인증번호가 전송되었습니다.");
			$("form").attr("action","${path}/login.do?method=emailSend");
			$("form").submit();
			
		}else{
			if(empnoP!=""){
				alert("일치하는 회원이 없습니다.");
				$("input[name=empno]").focus();
			}
		}
	
			
		
		
		$("#goPassBtn").click(function(){
			if( $("input[name=empno]").val()==null || $("input[name=empno]").val()==""){
				alert("사원번호를 입력해주세요.");
				$("input[name=empno]").focus();
				return false;
			}
			
			if( $("input[name=name]").val()==null || $("input[name=name]").val()==""){
				alert("이름을 입력해주세요.");
				$("input[name=name]").focus();
				return false;
			}
			if( $("input[name=email]").val()==null || $("input[name=email]").val()==""){
				alert("이메일을 입력해주세요.");
				$("input[name=email]").focus();
				return false;
			}
			else{
			$("form").attr("action","${path}/login.do?method=vPass");
			$("form").submit();
			}
		});
		
	});
</script>
</html>