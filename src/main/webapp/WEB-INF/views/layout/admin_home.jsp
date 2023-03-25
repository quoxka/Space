<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>SpaceCloud</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="HTML5 Landing Template" />
    <meta name="keywords" content="Landing, Multipurpose, Application, Clean, Saas, Dashboard, Bootstrap4" />
    <meta content="Uniquecrewdesign" name="author" />
    <meta content="uniquecrewdesign@gmail.com" name="Email" />
    <meta content="http://shreethemes.in/" name="Website" />
    <!-- favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/images/favicon.ico">
    <!-- Bootstrap css -->
    <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Icons -->
    <link href="${pageContext.request.contextPath }/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.11/css/unicons.css">
    <!-- Main css File -->
    <link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css" />
    
	
        <script src="${pageContext.request.contextPath }/js/jquery-3.5.1.min.js"></script>
        <script src="${pageContext.request.contextPath }/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath }/js/jquery.easing.min.js"></script>
        <script src="${pageContext.request.contextPath }/js/scrollspy.min.js"></script>
        <!-- Icon -->
        <script src="${pageContext.request.contextPath }/js/feather.min.js"></script>

        <!-- Main Js -->
        <script src="${pageContext.request.contextPath }/js/app.js"></script>	
       <script src="https://unicons.iconscout.com/release/v2.1.11/script/monochrome/bundle.js"></script>
<title>SPRING</title>
<style type="text/css">
#header{
	height: 100px;
	margin: 10px;
	padding: 10px;
	text-align: center;
}

#content{

	min-height: 300px;
	margin: 10px;
	padding: 10px;
	text-align: center;
	
}
</style>
</head>
<body>
	<div id="header">
		<tiles:insertAttribute name="header"/>
	</div>
	
	<div id="content">
		<tiles:insertAttribute name="content"/>
	</div>
</body>
</html>