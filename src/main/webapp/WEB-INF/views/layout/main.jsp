<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
  
    <title>아이콘 목록</title>
    <style>
      /* 아이콘을 가로로 배열하고, 아이콘 간격을 조정합니다. */
      .icon-container {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        justify-content: center;
        max-width: 1200px;
        margin: 0 auto; /* 수평 가운데 정렬 */
      }

      /* 각 아이콘을 세로 가운데 정렬하고, 마우스 오버 시 색깔을 바꿉니다. */
      .icon {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 180px; 
        height: 180px;

        cursor: pointer;
      }

   
      
      h1{
       text-align: center;
       margin-bottom: 50px;
      }
      

    </style>
  </head>
  
  <body>
  	<h1>원하는 공간을 선택하세요.</h1>
    <div class="icon-container" >
      <!-- 18개의 아이콘을 출력합니다. -->
      <div class="icon" id="sCate"><a href="filter?scafe=cate1"><img src="${pageContext.request.contextPath}/images/main_icon1.png"></a></div>
      <div class="icon" id="sCate"><a href="filter?scafe=cate2"><img src="${pageContext.request.contextPath}/images/main_icon2.png"></a></div>
      <div class="icon" id="sCate"><a href="filter?sCate=cate3"><img src="${pageContext.request.contextPath}/images/main_icon3.png"></a></div>
      <div class="icon" id="sCate"><a href="filter?sCate=cate4"><img src="${pageContext.request.contextPath}/images/main_icon4.png"></a></div>
      <div class="icon" id="sCate"><a href="filter?sCate=cate5"><img src="${pageContext.request.contextPath}/images/main_icon5.png"></a></div>
      <div class="icon" id="sCate"><a href="filter?sCate=cate6"><img src="${pageContext.request.contextPath}/images/main_icon6.png"></a></div>
      <div class="icon" id="sCate"><a href="filter?sCate=cate7"><img src="${pageContext.request.contextPath}/images/main_icon7.png"></a></div>
      <div class="icon" id="sCate"><a href="filter?sCate=cate8"><img src="${pageContext.request.contextPath}/images/main_icon8.png"></a></div>
      <div class="icon" id="sCate"><a href="filter?sCate=cate9"><img src="${pageContext.request.contextPath}/images/main_icon9.png"></a></div>
      <div class="icon" id="sCate"><a href="filter?sCate=cate10"><img src="${pageContext.request.contextPath}/images/main_icon10.png"></a></div>
      <div class="icon" id="sCate"><a href="filter?sCate=cate11"><img src="${pageContext.request.contextPath}/images/main_icon11.png"></a></div>
      <div class="icon" id="sCate"><a href="filter?sCate=cate12"><img src="${pageContext.request.contextPath}/images/main_icon12.png"></a></div>
     
    </div>
  </body>
</html>
