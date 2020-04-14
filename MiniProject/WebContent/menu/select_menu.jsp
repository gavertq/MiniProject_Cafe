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
		.menu_category_ul {list-style: none; align-items: center; padding-left: 20%;}
		.menu_category_li {float: left; text-align: center; margin: 20px 20px 20px 0px; overflow: hidden;}
		.menu_category_li img{width: 220px; height: 220px; transform:scale(1);}
		.menu_category_li:hover img{transform:scale(1.1);}
		.menu_category_li span{font-weight: bold;}
		
	/*PC용 CSS*/
	@media all and (min-width:960px){		
	#wrap_Cmenu{position:relative; width:80%;}/*위에서 설정하고 아래서 따로 설정안하면 그 설정 유지. 새로 설정하면 새로 설정한값 적용*/
	.menu_category_ul {padding-left: 10%;}
	.menu_category_li img{width: 320px; height: 320px;}

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
		
		<ul class="menu_category_ul">
			<c:forEach var="result" items="${ result_category}">
			<li class="menu_category_li">
				<img class="${result }" alt="${result }" src="../resources/menu/${ result}.jpg" 
					onclick="location.href='menuDetail.jsp?name=${result}'">
				<br><br><span>${result }</span>
			<li>			
			</c:forEach>			
		</ul>
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