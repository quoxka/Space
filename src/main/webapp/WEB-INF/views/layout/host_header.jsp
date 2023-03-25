<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- Navbar STart -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header id="topnav" class="defaultscroll sticky">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <div class="container">
    
        <!-- Logo container-->
        <a class="logo" href="${pageContext.request.contextPath }/host">
            <div class="media align-items-center">
                <span class="text-primary">space Moon</span>
            </div>
        </a>
        <!-- End Logo container-->
        
			                      
			        <div class="buy-button">
			         <c:choose>
					    <c:when test="${not empty loginHost}">
					      <!-- 로그인한 경우 -->
				     <a class="btn btn-primary scroll-down" href="${pageContext.request.contextPath }/host/logout/host" >
				     Logout</a>
           
					    </c:when>
					    <c:otherwise>
					      <!-- 로그인하지 않은 경우 -->
					 <a class="btn btn-primary scroll-down" href="${pageContext.request.contextPath }/host/login/host">Login</a>
					    </c:otherwise>
					  </c:choose>
       
           
        </div>
        <!--end logout button-->

        
	    <!-- Navigation Menu-->   
        <div id="navigation">
            <ul class="navigation-menu">
            	<li><a href="${pageContext.request.contextPath }/sRegister/add">내 공간 등록하기</a></li>
                <li class="has-submenu">
					<a href="javascript:void(0)">관리</a><span class="menu-arrow"></span>
					<ul class="submenu">
					    <li><a href="${pageContext.request.contextPath }/host/mypage">마이 페이지 관리</a></li>
					   
					    <li><a href="${pageContext.request.contextPath }/host/host_reserve">예약 리스트 관리</a></li>
					  
					  
					    <li> <a href="${pageContext.request.contextPath }/host/host_review">리뷰/Q&A 관리</a></li>
					  
					  
					    <li><a href="${pageContext.request.contextPath }/host/space_manage">공간정보 관리</a></li>
					</ul>
						</li>

           		    <li>    <a href="${pageContext.request.contextPath }/host/host_account">정산</a>  </li>



                <li>
                    <a href="${pageContext.request.contextPath }/host/host_notice">공지사항</a>
                </li>

                <li>
                    <a href="${pageContext.request.contextPath }/host/host_faq">FAQ</a>
                </li>
            </ul>
        </div><!--end navigation-->
    </div><!--end container-->
</header><!--end header-->
<!-- Navbar End -->