<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>

<style type="text/css">
	/*기본 CSS 및 모바일*/
	#wrap_Cmenu{display: flex; flex-flow: column; margin: 0 auto;	width: 80%; max-width: 1200px;}		
	/*선택지*/
		.menu_select{margin: 0 auto; min-width: 350px; width: 80%; padding: 10px; margin-top: 10px;}
		.menu_select fieldset{border: 1px solid; border-color: gray; border-radius: 5px; }
		.menu_select span{margin-right: 10px;}
		.menu_submit{margin-left: 85%;}
	
	/*카테고리*/
		.menu_category_ul {list-style: none; align-items: center; padding-left: 20%;}
		.menu_category_li {float: left; margin: 0px 20px 0px 0px;}
		.menu_category_dt {overflow: hidden;}		
		.menu_category_li img{width: 220px; height: 220px; transform:scale(1);  transition: all 0.3s ease-in-out;}
		.menu_category_li:hover img{transform:scale(1.1);}
		.menu_category_dd {font-weight: bold; margin: 0 auto; text-align: center;}
		
	/*PC용 CSS*/
	@media all and (min-width:960px){		
	#wrap_Cmenu{position:relative; width:80%;}/*위에서 설정하고 아래서 따로 설정안하면 그 설정 유지. 새로 설정하면 새로 설정한값 적용*/
	/*선택지*/
		.menu_select{max-width: 800px;}
		.menu_select span{margin-right: 30px;}
		.menu_submit{margin-left: 90%;}	
	
	/*카테고리*/
	.menu_category_ul {padding-left: 10%;}
	.menu_category_li img{width: 320px; height: 320px;}
	.menu_category_dd {font-size: 1.5em;}
	
</style>

</head>
<body>

<jsp:useBean id="menuDao" class="members.MenuDAO"/>
<c:set var="category" value="${ param.category}"/>
<c:set var="detail" value="${ param.menu}"/>

<c:import url="../mainPage/header.jsp"/>
<div id="wrap_Cmenu">

<c:choose>
<c:when test="${category == 'dessert' }">
	<section class="menu_select">
	<fieldset>
	<h3> 분 류 보 기</h3>	
	<hr>
	<form action="select_menu.jsp" method="post">
		<input type="hidden" name="category" value="dessert">
		<input type="radio" name="menu" value="*" <c:if test="${detail=='*' }">checked</c:if>><span>전체 보기</span><br>
		<input type="radio" name="menu" value="cake" <c:if test="${detail=='cake' }">checked</c:if>><span>케이크</span>
		<input type="radio" name="menu" value="sandwich" <c:if test="${detail=='sandwich' }">checked</c:if>><span>샌드위치</span>
		<input type="radio" name="menu" value="bakery" <c:if test="${detail=='bakery' }">checked</c:if> ><span>베이커리</span><br><br>
		<input type="submit" value="검색" class="menu_submit">
	</form>
	</fieldset>
	</section>
</c:when>
<c:otherwise>
	<section class="menu_select">
	<fieldset>
		<h3> 분 류 보 기</h3>
			<hr>
		<form action="select_menu.jsp" method="post">
			<input type="hidden" name="category" value="drink">
			<input type="radio" name="menu" value="*" <c:if test="${detail=='*' }">checked</c:if> ><span>전체 보기</span><br>
			<input type="radio" name="menu" value="coffee" <c:if test="${detail=='coffee' }">checked</c:if> ><span>커피</span>
			<input type="radio" name="menu" value="tea" <c:if test="${detail=='tea' }">checked</c:if> ><span>차</span>
			<input type="radio" name="menu" value="juice" <c:if test="${detail=='juice' }">checked</c:if> ><span>주스</span><br><br>
			<input type="submit" value="검색" class="menu_submit">
		</form>
	</fieldset>
	</section>
</c:otherwise>
</c:choose>

<c:choose>
<c:when test="${detail != '*' }">	
	<c:set var="result_category" value="${ menuDao.menuView(category, detail)}"/>
	
	<c:choose>
		<c:when test="${result_category.size() != 0 }">
		
		<ul class="menu_category_ul">
			<c:forEach var="result" items="${ result_category}">
			<li class="menu_category_li">
			<dl>
				<dt class="menu_category_dt">
				<img class="${result }" alt="${result }" src="../resources/menu/${ result}.jpg" 
					onclick="location.href='menuDetail.jsp?name=${result}'">
				</dt>
				<dd class="menu_category_dd">${result }</dd>
			</dl>			
			<li>			
			</c:forEach>			
		</ul>
		</c:when>
		
		<c:otherwise>
		 <p>메뉴 준비 중입니다</p>
		</c:otherwise>
	</c:choose>	
	
</c:when>

<c:when test="${detail == '*' }">	
	<c:set var="result_categoryAll" value="${ menuDao.menuViewAll(category)}"/>
	
	<c:choose>
		<c:when test="${result_categoryAll.size() != 0 }">
		
		<ul class="menu_category_ul">
			<c:forEach var="result" items="${ result_categoryAll}">
			<li class="menu_category_li">
			<dl>
				<dt class="menu_category_dt">
				<img class="${result }" alt="${result }" src="../resources/menu/${ result}.jpg" 
					onclick="location.href='menuDetail.jsp?name=${result}'">
				</dt>
				<dd class="menu_category_dd">${result }</dd>
			</dl>			
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