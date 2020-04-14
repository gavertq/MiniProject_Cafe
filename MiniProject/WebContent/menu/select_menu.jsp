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
	#wrap_Cmenu{display: flex; flex-flow: column; margin: 0 auto;	width: 80%; max-width: 1200px;}		
		.menu_category_table {table-layout: 80%;}
		.menu_category_img {width: 200px; height: 200px;}
		.menu_category_td {text-align: center;}
		
	/*PC용 CSS*/
	@media all and (min-width:960px){		
	#wrap_Cmenu{position:relative; width:80%;}/*위에서 설정하고 아래서 따로 설정안하면 그 설정 유지. 새로 설정하면 새로 설정한값 적용*/
		.menu_category_img {width: 350px; height: 350px;}

</style>

</head>
<body>

<jsp:useBean id="menuDao" class="members.MenuDAO"/>
<c:set var="category" value="${ param.category}"/>
<c:set var="detail" value="${ param.menu}"/>

<c:import url="../mainPage/header.jsp"/>
<div id="wrap_Cmenu">

<c:choose>
<c:when test="${detail != null }">	
	<c:set var="result_category" value="${ menuDao.menuView(detail)}"/>
	
	<c:choose>
		<c:when test="${result_category.size() != 0 }">
		
			<table class="menu_category_table">			
			<c:forEach var="result" items="${ result_category}">
			<tr>
				<td class="menu_category_td">
				<img class="menu_category_img" alt="${result }" src="../resources/menu/${ result}.jpg" 
					onclick="location.href='menuDetail.jsp?name=${result}'">
				<br><span>${result }</span>
				<td>
			</tr>
			</c:forEach>			
			</table>
			
		</c:when>
		
		<c:otherwise>
		 <p>메뉴 준비 중입니다</p>
		</c:otherwise>
	</c:choose>	
	
</c:when>

<c:otherwise>
	<p>오류 발생!<br>관리자에게 문의하세요.</p>
</c:otherwise>
</c:choose>

</div>
<c:import url="../mainPage/footer.jsp"/>

</body>
</html>