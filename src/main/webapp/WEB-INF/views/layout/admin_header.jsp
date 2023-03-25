<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>

<!-- Navbar STart -->
<header id="topnav" class="defaultscroll sticky">
    <div class="container">
    
        <!-- Logo container-->
        <a class="logo" href="${pageContext.request.contextPath }/admin">
            <div class="media align-items-center">
                <span class="text-primary">space Moon</span>
            </div>
        </a>
        <!-- End Logo container-->
        
                      
        <div class="buy-button" >
			  <c:choose>
			    <c:when test="${not empty loginHost}">
			      <!-- 로그인한 경우 -->
			      <a href="${pageContext.request.contextPath}/logout/admin" class="btn btn-primary scroll-down">
			        <span>로그아웃</span>
			      </a>
			    </c:when>
			    <c:otherwise>
			      <!-- 로그인하지 않은 경우 -->
			      <a href="${pageContext.request.contextPath}/host/login/host" class="btn btn-primary scroll-down">
			        <span>로그인</span>
			      </a>
			    </c:otherwise>
			  </c:choose>
        </div>
        <!--end logout button-->

        
	    <!-- Navigation Menu-->   
        <div id="navigation">
            <ul class="navigation-menu">
                <li>
                    <a href="${pageContext.request.contextPath }/admin/host?hstatus=2">호스트 관리</a>
                </li>

                <li>
                    <a href="${pageContext.request.contextPath }/admin/notice?nmstatus=2&nstatus=2">공지사항</a>
                </li>

                <li>
                    <a href="${pageContext.request.contextPath }/admin/faq?fmstatus=2&fstatus=2">FAQ</a>
                </li>

                <li>
                    <a href="${pageContext.request.contextPath }/admin/pay?pwstatus=1">정산 관리</a>
                </li>
            </ul>
        </div><!--end navigation-->
    </div><!--end container-->
</header><!--end header-->
<!-- Navbar End -->