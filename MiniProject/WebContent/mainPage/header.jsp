<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	/*기본 CSS 및 모바일*/
	#wrap_header{display: flex; flex-flow: column; margin: 0 auto;	width: 80%; max-width: 1200px; background-color: #EEE880;}
		.logo{float: left; width: 50px; height: 50px; margin-top: 5px; margin-left: 5px;}
		.header_hr{width: 100%; max-width: 1200px;}
		.heaer_nav {float: right;}
		.header_ul{list-style: none;}
		.header_ul li{float: left; margin: 10px 15px 0px 5px;}
		#li{margin-left: 35%;}
		.header_ul a{text-decoration: none; color: black;}
		
	/*PC용 CSS*/
	@media all and (min-width:960px){		
	#wrap_header{position:relative; width:80%;}/*위에서 설정하고 아래서 따로 설정안하면 그 설정 유지. 새로 설정하면 새로 설정한값 적용*/
		.logo{width: 100px; height: 100px; margin-top: 10px; margin-left: 10px;}
		.header_ul li{margin: 50px 20px 0px 15px;}
		#li{margin-left: 60%;}
		
</style>

</head>
<body>

<div id="wrap_header">
	<header>
		<img alt="brand_logo" src="../resources/images/test4.jpg" class="logo">
		<nav class="header_nav"><ul class="header_ul">
		
		<c:choose>		
			<c:when test="${sessionScope.loginSuccess == 'Yes' }">
			<li id="li"><a id="" href="">로그아웃</a></li>
			</c:when>
			<c:otherwise>
			<li id="li"><a id="" href="">로그인</a></li>
			</c:otherwise>
		</c:choose>	

		<li><a href="">메뉴</a></li>
		<li><a href="">고객센터</a></li></ul>
		</nav>
	</header>
	<hr class="header_hr">
</div>

</body>
</html>
