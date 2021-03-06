<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<div class="nav-left-sidebar sidebar-dark">
            <div class="menu-list">
            	<!-- 메뉴바 -->
                <nav class="navbar navbar-expand-lg navbar-light">
                    
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                            <li class="nav-divider">
                                Menu
                            </li>
                            <li class="nav-item ">
                                <!-- 대쉬보드 상위메뉴 -->
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1" aria-controls="submenu-1"><i class="fas fa-fw fa-chart-bar"></i>Dashboard<span class="badge badge-success">6</span></a>
                                <div id="submenu-1" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                    	<!-- 대쉬보드 하위메뉴 -->
                                    	<!-- 전체 대쉬보드  -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">전체 Dashboard</a>
                                        </li>
                                        <!-- 상세 대쉬보드 -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">상세 Dashboard</a>
                                        </li>                                        
                                    </ul>
                                </div>
                            </li>
                            <!-- 프로젝트 상위메뉴  -->
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-2" aria-controls="submenu-2"><i class="fa fa-fw fa-folder"></i>프로젝트</a>
                                <div id="submenu-2" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                    	<!-- 프로젝트 관리 -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="${path}/project.do?method=main">프로젝트 관리</a>
                                        </li>
                                        <!-- 프로젝트 작업승인 -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">프로젝트 작업 승인</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <!-- 내 작업 상위메뉴 -->
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-3" aria-controls="submenu-3"><i class="fas fa-fw fa-tasks"></i>내 작업</a>
                                <div id="submenu-3" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                    	<!-- 개인 Dashboard -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="${path}/task.do?method=dashboard">개인 Dashboard</a>
                                        </li>
                                        <!-- 내 작업 -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="${path}/task.do?method=manage">작업 관리</a>
                                        </li>
                                        <!-- 내 일정 -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">내 일정</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="#"><i class="fas fa-fw fa-exclamation-triangle"></i>이슈관리</a>                                
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-4" aria-controls="submenu-4"><i class="far fa-fw fa-comments"></i>커뮤니케이션</a>
                                <div id="submenu-4" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                    	<!-- 프로젝트 게시판 -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">게시판</a>
                                        </li>
                                        <!-- 회의록 -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">회의록</a>
                                        </li>
                                        <!-- 채팅 -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">채팅</a>
                                        </li>
                                        <!-- 메일 보내기 -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">메일 보내기</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <!-- 관리자 메뉴 -->
                            <li class="nav-divider">
                                Admin
                            </li>
                            <!-- 회원관리 메뉴 -->
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-6" aria-controls="submenu-6"><i class="fas fa-fw fa-user-circle"></i> 회원관리 </a>
                                <div id="submenu-6" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <!-- 회원관리 -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">회원 관리</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            
                        </ul>
                    </div>
                </nav>
            </div>
        </div>