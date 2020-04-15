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
	#wrap_CDmenu{display: flex; flex-flow: column; margin: 0 auto;	width: 80%; max-width: 1200px;}		

		
	/*PC용 CSS*/
	@media all and (min-width:960px){		
	#wrap_CDmenu{position:relative; width:80%;}/*위에서 설정하고 아래서 따로 설정안하면 그 설정 유지. 새로 설정하면 새로 설정한값 적용*/


</style>

</head>
<body>

<jsp:useBean id="menuDao" class="members.MenuDAO"/>
<c:set var="category" value="${ param.category}"/>
<c:set var="detail" value="${ param.menu}"/>

<c:import url="../mainPage/header.jsp"/>
<div id="wrap_CDmenu">

</div>
<c:import url="../mainPage/footer.jsp"/>

</body>
</html>