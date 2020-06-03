<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript">
<!--
//-->
</script>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
                <a class="navbar-brand" href="#"><img style="width:160px;height:40px;" src="${path}/img/logo.png"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-right-top">
                        
                        
                        
                        <li class="nav-item dropdown nav-user">
                            <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span style="margin-right:20px;">${mem.name}님 로그인</span>
                               <!-- 추가 부분 -->
                            <c:if test="${empty mem.profile}"><img src="${path}/assets/images/avatar-2.jpg" id="profile" class="user-avatar-md rounded-circle"></c:if>
                            <c:if test="${not empty mem.profile}"><img src="${path}/z01_upload/${mem.profile}" id="profile" class="user-avatar-md rounded-circle"></c:if></a>
                        
                            <!-- 로그인정보창 -->
                            <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                <div class="nav-user-info">
                                    <h5 class="mb-0 text-white nav-user-name">ID : ${mem.empno}</h5>
                                    <span class="status"></span><span class="ml-2"></span>
                                </div>
                                <a class="dropdown-item" href="${path}/profile.do?method=base"><i class="fas fa-user mr-2"></i>마이 프로필</a>
                                
                                <a class="dropdown-item" id="goLogout"><i class="fas fa-power-off mr-2"></i>로그아웃</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown notification">
                            <a class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="width:50px"><i class="fas fa-fw fa-bell" style="margin-left:8px;"></i>
                            <!-- 새로운 내용 알림 빨간 점  -->
                            <span class="indicator" style="right:15px;"></span></a>
                            <ul style="width:350px;" class="dropdown-menu dropdown-menu-right notification-dropdown">
                                <li>
                                    <div class="notification-title"> Notification</div>
                                    <div class="notification-list">
                                        <div id="notice_wrap" class="list-group">
                                        	<!-- 알림 내용 -->
                                        </div>
                                    </div>
                                </li>
                                <li>
                                	<!-- 알림 상세 페이지로 이동 -->
                                    <div class="list-footer"> <a href="#">전체 알림 보기</a></div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
 