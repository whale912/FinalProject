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
<style type="text/css">
.pagination {justify-content:center;align-items: center;}
.buttons { height:100%; }
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
                <div class="container-fluid dashboard-content "  style="min-height:823px;">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row" >
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                            	<!-- 페이지 타이틀 -->
                                <h2 class="pageheader-title">사원 목록</h2>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">사원관리</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">사원목록</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end pageheader  -->
                    <!-- ============================================================== -->
                    
 						<div class="row">
 						    <!-- ============================= -->
 							<!-- select -->
 							<!-- ============================= -->
                             <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">                 
                                <div class="card">                                 
                                    <div class="card-body"> 
                                    	<form:form id="pagiform" class="form" commandName="Mmem" method="post">                                       
                                        	<div class="card-top-middle" >
	                                          	<div class="card-top" style="overflow:hidden;">	 
	                                          		<div class="select_group" style="float:left; overflow:hidden; ">                                   		
			                                        	<div class="form-group" style="width:200px; display:inline-block; overflow:hidden;">                                               
                                                			<select class="form-control" id="input-select01"  name="dname">
                                                    			<option value="">부서를 선택하세요</option>
			                                                    <option value="개발팀">개발팀</option>
			                                                    <option value="디자인팀">디자인팀</option>
			                                                    <option value="재무관리팀">재무관리팀</option>
			                                                    <option value="리스크관리팀">리스크관리팀</option>
			                                                    <option value="인사팀">인사팀</option>
                                                			</select>
                                            			</div>                                            		
			                           					<div class="form-group" style="width:200px; display:inline-block; overflow:hidden; ">                   
			                               					<select class="form-control" id="input-select02" name="rankno">
			                                    				<option value="0">직급을 선택하세요</option>
			                                                    <option value="1">사원</option>
			                                                    <option value="2">대리</option>
			                                                    <option value="3">과장</option>
			                                                    <option value="4">차장</option>
			                                                    <option value="5">부장</option>
			                                                    <option value="6">대표이사</option>
			                                				</select>
			                           					</div>
			                           					<div class="form-group"  style="width:200px; display:inline-block; overflow:hidden;">                   
			                               					<select class="form-control" id="input-select03" name="authno">
			                                    				<option value="0">권한을 선택하세요</option>
			                                                    <option value="1">NORMAL</option>
			                                                    <option value="2">PM</option>
			                                                    <option value="3">ADMIN</option>
			                                                    <option value="4">CEO</option>                                                    
			                                				</select>
			                           					</div>
			                           				</div> 
			                           			
			                           					<!-- 사원명 search -->
			                           					<div class="search_regist" style="float:right; margin:0px 0px 0px 30px; overflow:hidden;">
			                           						<input style="overflow:hidden; width:250px; height:38px; float:left;" class="form-control form-control-lg" type="text"  placeholder="사원명" name="name" aria-label="Search"/>
			                                        			<button style="position:static; display:block; float:left;" class="btn btn-primary search-btn" type="submit">Search</button> 
			                                        		<!-- 사원 등록 -->	  	                                       			                               			                               							                               					             				                           					
			                                            	<input style="margin-left:10px; margin-right:10px;" type="button" class="btn btn-primary" onclick="Popup01('${member.empno}')" value="등록">                                                                                                                              			                                            	                                           	                                          	    			                                       	       
		                                       	        </div> 
		                                       	</div>                       					
	                           				
                    		<div class="row">
                    		<!-- ============================================================== -->
                    		<!-- basic table  -->
                   		 	<!-- ============================================================== -->
                    		<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">                                                    
                                <div class="table-responsive" >
                                    <table class="table table-striped table-bordered first">
                                        <thead>
                                            <tr>
                                                <th style="text-align:center;">이름</th>
                                                <th style="text-align:center;">부서</th>
                                                <th style="text-align:center;">직급</th>
                                                <th style="text-align:center;">권한</th>
                                                <th style="text-align:center;">이메일</th>
                                                <th style="text-align:center;">수정</th>
                                                <th style="text-align:center;">삭제</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="member"  items="${members}">
                                            	<tr style="font-size:12pt; text-align:left;">
                                                	<td>${member.name}</td>
                                                	<td class="dname">${member.dname}</td>
                                                	<td id="rankName" class="rname">${member.rname}</td>
                                                	<td class="pname">${member.aname}</td>
                                                	<td>${member.email}</td>                                              	
                                                	<!--  수정 -->
                                                	<td style="text-align:center;">                                     
                                                		<div class="btn-group ml-auto">
                                                			<button type="button" class="btn btn-info" onclick="Popup02('${member.empno}')"><i class="far fa-edit"></i></button>
                                                	    </div>
                                                	</td> 
                                                	<!--  삭제 -->
                                                	<td style="text-align:center;">
                                                		<div class="btn-group ml-auto">
                                                			<button type="button" class="btn btn-danger" onclick="Popup03('${member.empno}')"><i class="far fa-trash-alt"></i></button>
                                               		    </div>
                                            	    </td>
                                            	</tr> 
                                         </c:forEach>                                    
                                        </tbody>                                        
                                    </table>
                                </div>
                                <!-- ============================================================== -->
                   				<!-- end basic table  -->
                   				<!-- ============================================================== -->
                                </div>                    						 
                			</div>
                         </div>
                                	<!-- ============================================= --> 
                                	<!-- pagination -->
                                	<!-- ============================================= --> 
                                    
		                          <form:hidden path="curPage"	/>
                                                                     
                                     <ul class="pagination">
                                   	 	<li class="page-item">
                                   	 		<a class="page-link" href="javascript:goPage(${Mmem.startBlock-1})">이전</a>
                                   	 	</li>
                                   	 		<c:forEach var="cnt" begin="${Mmem.startBlock}" end="${Mmem.endBlock}">                                       
                                        		<li class="page-item ${Mmem.curPage==cnt?'active':''}">
                                        			<a class="page-link" href="javascript:goPage(${cnt})">${cnt}</a>
                                        		</li>
                                       		</c:forEach>
                                        <li class="page-item">
                                       		<a class="page-link" href="javascript:goPage(${(Mmem.endBlock==Mmem.pageCount)?Mmem.endBlock:Mmem.endBlock+1})">다음</a>
                                        </li>
                                    </ul>      
                                  </form:form>                          
                                </div>                            
                            </div>
                        </div>                                           
                    
                </div>
            </div>
            <!-- ========================================= -->   
            <!-- 등록, 수정, 삭제 -->
            <!-- ========================================= -->          
            <div id="dialog-form01" title="등록">
            	<form id="updateMember" name="updateMember" method="post" action="${path}/mlist.do?method=regist">
            		<input type="hidden" id="updateProc01" name="proc" />
            		<input type="hidden" id="insert_member" name="empno"/>
            			<label for="title" style="font-weight:bold;margin-top:10px;">이름</label><br>
            		<input type="text" name="name" id="name" value="" placeholder="이름을 입력하세요" /><br>

            			<label for="title" style="font-weight:bold;margin-top:10px;">이메일주소</label><br>
            		<input type="text" name="email" id="email" value="" placeholder="이메일주소를 입력하세요"/><br>
            			<label for="title" style="font-weight:bold;margin-top:10px;">부서</label><br>
            		<select class="form-control" name="deptno">
            				<option value="10">개발팀</option>
            				<option value="20">디자인팀</option>
            				<option value="30">재무관리팀</option>
            				<option value="40">리스크관리팀</option>
            				<option value="50">인사팀</option>            		            		                       		
            		</select>
            		<label for="title" style="font-weight:bold;margin-top:10px;">직급</label><br>	 
            	    <select class="form-control" name="rankno"> 
            	        <option value="1">사원</option>
            			<option value="2">대리</option>
            			<option value="3">과장</option>
            			<option value="4">차장</option>
            			<option value="5">부장</option>
            			<option value="6">대표이사</option>            	                    	                  	        
            	    </select>
            	    <label for="title" style="font-weight:bold;margin-top:10px;">직책</label><br>      
            		<select class="form-control" name="authno"> 
            			<option value="1">NORMAL</option>
            			<option value="2">PM</option>
            			<option value="3">ADMIN</option>
            			<option value="4">CEO</option>      	        
            	    </select>       		
            	</form>            
            </div>
            
             <!-- 직책 수정하기 -->	
             <div id="dialog-form02" title="수정">
            	<form id="updatePosition" name="updatePosition" method="post" action="${path}/mlist.do?method=updateRank">

            		<input type="hidden" id="update_position" name="empno"/>
            		<label for="title" style="font-weight:bold;margin-top:10px;">권한 수정</label><br>
            		<select class="form-control" name="authno"> 
            			<option value="1">NORMAL</option>
            			<option value="2">PM</option>          	        
            	    </select>
            	</form>            
            </div>
            
            <!-- 사원명단 삭제하기 -->
            <div id="dialog-form03" title="삭제">
            	<form id="delete" name="delete" method="post" action="${path}/mlist.do?method=delete">
       
            		<input type="hidden" id="delete" name="empno"/>
            		<br><br>
            		<p style="text-align:center;">해당 사원의 정보를 삭제하시겠습니까?</p>
            	</form>    
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
    <!-- Optional JavaScript -->
    <!-- jquery 3.3.1 -->
    <script src="${path}/a00_com/jquery-3.4.1.js"></script>
    <!-- bootstap bundle js -->
    <script src="${path}/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <!-- slimscroll js -->
    <script src="${path}/assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <!-- main js -->
    <script src="${path}/assets/libs/js/main-js.js"></script>
    <!-- sparkline js -->
    <script src="${path}/assets/vendor/charts/sparkline/jquery.sparkline.js"></script>
    <!-- morris js -->
    <script src="${path}/assets/vendor/charts/morris-bundle/raphael.min.js"></script>
    <!-- full calendar js -->
	<script src='${path}/assets/vendor/full-calendar/js/moment.min.js'></script>
	<script src='${path}/assets/vendor/full-calendar/js/fullcalendar.js'></script>
	<script src='${path}/assets/vendor/full-calendar/js/jquery-ui.min.js'></script>
	<script src='${path}/assets/vendor/full-calendar/js/calendar.js'></script>
	
</body>
<script src="${path}/a00_com/chart.js?v=6.4.3"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">

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

$("document").ready(function(){
	
	callNotice();
	
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
	     
	      var auth = "${mem.authno}";
	      if(auth!="3"){  // admin 외에 접근 불가
	         alert("접근 권한이 없습니다!");
	         history.back();
	      }
	
	// 부서별 select
	$("#input-select01").change(function(){
		$("#pagiform").submit();		
	});
	$("#input-select02").change(function(){
		$("#pagiform").submit();		
	});
	
	$("#input-select03").change(function(){
		$("#pagiform").submit();		
	});
	
	
	// 사원등록 하기
	dialog01 = $("#dialog-form01").dialog({
		autoOpen: false,
		height: 560,
		width: 400,
		modal: true,
		buttons: {
			등록: function(){
				$("#updateMember").submit();				
			},
			취소: function(){
				dialog01.dialog("close");			
			}			
		},
			close: function() {
				$("#updateMember")[0].reset();
			}		
	});
	
	// 직책수정하기
	dialog02 = $("#dialog-form02").dialog({
		autoOpen: false,
		height: 320,
		width: 400,
		modal: true,
		buttons: {
			수정: function(){
				$("#updatePosition").submit();				
			},
			취소: function(){
				dialog02.dialog("close");			
			}			
		},
			close: function() {
				$("#updatePosition")[0].reset();
			}		
	});
	
	
	// 삭제하기
	dialog03 = $("#dialog-form03").dialog({
		autoOpen: false,
		height: 250,
		width: 400,
		modal: true,
		buttons: {
			삭제: function(){
				$("#delete").submit();				
			},
			취소: function(){
				dialog03.dialog("close");			
			}			
		},
			close: function() {
				$("#delete")[0].reset();
			}		
	});
	
	
	//등록처리 후 조회
	var insert = "${insert}";
	if(insert=="true"){
		alert("등록되었습니다");
		$(location).attr("href","${path}/mlist.do?method=base");
	
	}
	
	// 직책수정
	var update = "${update}";
	if(update=="true"){
		alert("직책이 수정되었습니다");
		$(location).attr("href","${path}/mlist.do?method=base");
	}
	
	// 직급수정
	

	// 삭제
	var deleteMember = "${delete}";
	if(deleteMember=="true"){
		alert("사원목록에서 삭제되었습니다");
		$(location).attr("href","${path}/mlist.do?method=base");
	}
	
	//검색했을때 select값 유지
	var dname="${param.dname}";
	var rankno="${param.rankno}";
	var authno="${param.authno}";
	
	if(rankno==""){
		$("#input-select02").val(0);
	}else{
		$("#input-select02").val(rankno);
	}
	
	
	if(authno==""){
		$("#input-select03").val(0);
	}else{
		$("#input-select03").val(authno);
	}
	
	if(dname!=null||dname!=""){
		$("#input-select01").val(dname);
	}
	
		
});


	// 사원등록하는 팝업창 소환
	function Popup01(id){
		dialog01.dialog("open");
	}
	
	// 직책수정하는 팝업창 소환 Popup02(pname)
	function Popup02(id){
		$("[name=empno]").val(id);
		dialog02.dialog("open");
	}
	
	// 사원 삭제하는 팝업창 소환
	function Popup03(id){
		$("[name=empno]").val(id)
		dialog03.dialog("open");
	}
	
	// pagination 처리 중 현재페이지 관련
	function goPage(no){
		$("#curPage").val(no);
		$("#pagiform").submit();
	}

</script>
</html>