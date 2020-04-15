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
	#wrap_Dmenu{display: flex; flex-flow: column; margin: 0 auto;	width: 80%; max-width: 1200px;}
	.menu_select{margin: 0 auto; min-width: 350px; width: 80%; padding: 10px; margin-top: 10px;}
	.menu_select fieldset{border: 1px solid; border-color: gray; border-radius: 5px; }
	.menu_select span{margin-right: 10px;}
	.menu_submit{margin-left: 85%;}
	/*PC용 CSS*/
	@media all and (min-width:960px){		
	#wrap_Dmenu{position:relative; width:80%;}/*위에서 설정하고 아래서 따로 설정안하면 그 설정 유지. 새로 설정하면 새로 설정한값 적용*/
	.menu_select{max-width: 800px;}
	.menu_select span{margin-right: 30px;}
	.menu_submit{margin-left: 90%;}	
</style>

</head>
<body>

<jsp:include page="../mainPage/header.jsp"/>

<div id="wrap_Dmenu">
	<section class="menu_select">
	<fieldset>
	<h3> 분 류 보 기</h3>
	<hr>
	<form action="select_menu.jsp" method="post">
		<input type="hidden" name="category" value="dessert">
		<input type="radio" name="menu" value="*"><span>전체 보기</span><br>
		<input type="radio" name="menu" value="cake"><span>케이크</span>
		<input type="radio" name="menu" value="sandwich"><span>샌드위치</span>
		<input type="radio" name="menu" value="bakery"><span>베이커리</span><br><br>
		<input type="submit" value="검색" class="menu_submit">
	</form>
	</fieldset>
	</section>
	
	<section>
	
	</section>
</div>

<jsp:include page="../mainPage/footer.jsp"/>

</body>
</html>