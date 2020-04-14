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
</head>
<body>

<jsp:useBean id="menuDao" class="members.MenuDAO"/>
<c:set var="category" value="${ param.category}"/>
<c:set var="detail" value="${ param.menu}"/>

<c:choose>
<c:when test="${category == drink }">
	<c:set var="drink_category" value="${ menuDao.menuView(category)}"/>
	<table><tr>
	<c:forEach var="result" items="${ drink_category}">
	<td><img alt="${result.menu_name }" src="../resource/images/${ result.image}.jsp"><br>${result.menu_name } <td>
	</c:forEach>
	</tr>
	</table>
</c:when>

<c:when test="${category == dessert }">
	
</c:when>

<c:otherwise>
	<p>오류 발생!<br>관리자에게 문의하세요.</p>
	</c:otherwise>
</c:choose>


</body>
</html>