<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리저브 이벤트</title>

<style type="text/css">
	/*기본 CSS 및 모바일*/
	#wrap_reserve{display: flex; flex-flow: column; margin: 0 auto; width: 80%; max-width: 1200px; height: 50%;}	
	.summer_img {width: 100%; height: 90%; margin: 0 auto;}
	
	/*PC용 CSS*/
	@media all and (min-width:960px){		
	#wrap_main{position:relative; width:80%;}/*위에서 설정하고 아래서 따로 설정안하면 그 설정 유지. 새로 설정하면 새로 설정한값 적용*/	
	.summer_img {width: 100%; height: 80%;}
		
</style>

</head>
<body>

<jsp:include page="../mainPage/header.jsp"/>
<div id="wrap_reserve">

<img src="../resources/eventImg/summer_event.jpg" class="summer_img">

</div>
<jsp:include page="../mainPage/footer.jsp"/>

</body>
</html>