<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>SpaceMoon</title>
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
	
	<!-- BootStrap CDN : CSS-->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<title>SPRING</title>
<style type="text/css">
#header{
	height: 100px;
	margin: 10px;
	padding: 10px;
	text-align: center;
}

#content{

	min-height: 200px;
	margin: 10px;
	padding: 10px;
	text-align: center;
	
}

#footer{
	height: 150px;
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
	
	<div id="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
	
	<!-- BootStrap CDN : JS-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
</body>
     
</html>