<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>

    <!-- Required meta tags -->
    <meta charset="${encoding}">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${path}/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="${path}/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="${path}/assets/libs/css/style.css">
    <link rel="stylesheet" href="${path}/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
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
    .testg{overflow:hidden;float:left; width:50%;}
    </style>
    
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>

</head>

<body>
    <!-- ============================================================== -->
    <!-- login page  -->
    <!-- ============================================================== -->
    <div class="splash-container">
        <div class="card ">
            <div class="card-header text-center"><a href="../index.html"><img class="logo-img" src="${path}/img/logo.png" alt="logo"></a><br><span class="splash-description"><spring:message code="msgHeader"/></span></div>
            <div class="card-body">
                <form method="post">
                	<input type="hidden" name="proc" value="login"/>
                    <div class="form-group">
                        <input class="form-control form-control-lg" name="empno" type="text" placeholder="<spring:message code="empno"/>" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <input class="form-control form-control-lg" name="pass" type="password" placeholder="<spring:message code="pass"/>">
                    </div>
                    <div class="form-group">
                        <label class="custom-control custom-checkbox">
                            <input name="empnoSave" class="custom-control-input" type="checkbox"><span class="custom-control-label"><spring:message code="empnoSave"/></span>
                        </label>
                    </div>
                    <button type="submit" class="btn btn-primary btn-lg btn-block" id="loginBtn"><spring:message code="login"/></button>
                </form>
                <br>
                		
                                       				 <div class="form-group">
                                            		 	<label><spring:message code="lang"/></label>
                                            				<div class="card-body" style="padding:0px;overflow:hidden;">                   
				                               					<select class="form-control" id="selectLan"  style="padding-left:5px; width:100%; height:46px; -webkit-appearance:button;">
				                                    				<option value=""> <spring:message code="select"/></option>
				                                                    <option value="ko"><spring:message code="korean1"/></option>
				                                                    <option value="jp"> <spring:message code="japanese1"/></option>
				                                                    <option value="en"> <spring:message code="english1"/></option>
				                                                    <option value="ch"> <spring:message code="chinese1"/></option>
				                                				</select>
				                           					</div>
                                        			 </div>			
            </div>
            
            <div class="card-footer bg-white p-0">
                <div class="card-footer-item card-footer-item-bordered testg">
                    <a href="${path}/login.do?method=fEmpno" class="footer-link"><spring:message code="findEmpno"/></a></div>
                <div class="card-footer-item card-footer-item-bordered testg">
                    <a href="${path}/login.do?method=fPass" class="footer-link" id="fontSize"><spring:message code="findPass"/></a>
                </div>
            </div>
        </div>
    </div>
 	 <h1></h1>
    <!-- ============================================================== -->
    <!-- end login page  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->

</body>
  <script src="${path}/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="${path}/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    
<script type="text/javascript">
	$(document).ready(function(){
		callNotice();
		var mem="${mem.empno}";
		var authno=${mem.authno}+0;
		var id="${param.empno}";
		var method="${param.method}";
		if(mem!=""){
			alert("로그인 성공");
			switch(authno){
				case 1:
					$(location).attr("href","${path}/task.do?method=dashboard");
					break;
				case 2:
					$(location).attr("href","${path}/project.do?method=main");
					break;
				case 3:
					$(location).attr("href","${path}/mlist.do?method=base");
					break;
				case 4:
					$(location).attr("href","${path}/issue.do?method=dash");
					break;
			}
			
			
		}else{
			if(id!="" && method=="login"){
				alert("아이디 또는 비밀번호가 틀렸습니다.");
				$("input[name=empno]").focus();
			}
		}
		
		/* 사원번호 쿠키 처리 및 로그인 값 전송 */
		
		var key = getCookie("key");
		
		$("#loginBtn").click(function(){
			if( $("input[name=empno]").val()==null || $("input[name=empno]").val()==""){
					alert("사원번호를 입력해주세요.");
					$("input[name=empno]").focus();
				return false;
			}
			if( $("input[name=pass]").val()==null || $("input[name=pass]").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("input[name=pass]").focus();
				return false;
			}
			else{
				if($("[name=empnoSave]").prop("checked")){
					setCookie("key", $("[name=empno]").val(), 7);
				}else{
					deleteCookie("key");
				}					
				$("form").attr("action","${path}/login.do?method=login");
				$("form").submit();
				return true;
			}
			
		});
		

		$("[name=empno]").val(key); //쿠키값이 있다면 empno값을 key값으로
	
		 if($("[name=empno]").val() != ""){ // ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 있다면
		      $("[name=empnoSave]").prop("checked", true); // ID 저장하기를 체크 상태로 두기.
		    }
		 else{ //값이없을때는 checked값 false
			 $("[name=empnoSave]").prop("checked", false); 
		 }
			//언어 선택
	      var lang="${param.lang}";
	      if(lang=="jp"){
	    	  $("#fontSize").css("font-size","12px");
	    	  
	      }
	      
	      $("#selectLan").val(lang);
	      $("#selectLan").change(function(){
	         if( $(this).val()!="" ){
	            $(location).attr("href","${path}/login.do?method=multi&lang="+$(this).val());
	         }
	      });
		
		
	
	});
	
	function setCookie(cookieName, value, days){
		var cookDate = new Date();
			cookDate.setDate(cookDate.getDate()+ days); //현재 날짜 + 매개변수로 받은 날짜
	
			var cookValue = escape(value) + ((days==null)? "":"; expires=" + cookDate.toGMTString());
			
			//사원번호의 값과, 만료일을 문자열로변경해서 합친다. 
			
			//쿠키 세팅
			document.cookie = cookieName + "=" + cookValue;
	}
	
	function deleteCookie(cookieName){
	    var cookDate = new Date();
	    cookDate.setDate(cookDate.getDate() - 1); //어제일자
	    document.cookie = cookieName + "= " + "; expires=" + cookDate.toGMTString();  //만료일이 어제일자 (초과) 이기때문에 쿠키 삭제
	}
	
	
	function getCookie(cookieName) {
	    cookieName = cookieName + '=';
	    var cookieData = document.cookie;
	    var start = cookieData.indexOf(cookieName);
	    var cookieValue = '';
	    if(start != -1){
	        start += cookieName.length;
	        var end = cookieData.indexOf(';', start);
	        if(end == -1)end = cookieData.length;
	        cookieValue = cookieData.substring(start, end);
	    }
	    return unescape(cookieValue);
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
	
</script>
</html>