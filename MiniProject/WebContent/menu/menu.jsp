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
	#wrap_menu{display: flex; flex-flow: column; margin: 0 auto; width: 80%; max-width: 1200px;}
	.menu_h3{margin-left: 10%;}
	#menu_fieldset {width: 80%; margin: 0 auto; margin-bottom: 30px;}
	.menu_h4{font-weight: bold; font-size: 20px; margin-left: 5%;}
	.menu_a{text-decoration: none; color: black;}
	.menu_img{float: right; width: 40px; height: 40px;}	
	
	/*PC용 CSS*/
	@media all and (min-width:960px){		
	#wrap_menu{position:relative; width:80%;}/*위에서 설정하고 아래서 따로 설정안하면 그 설정 유지. 새로 설정하면 새로 설정한값 적용*/
	.menu_h3{margin-left: 0%; text-align: center; font-size: 2.0em;}
	#menu_fieldset {max-width: 500px; }
	
</style>

</head>
<body>

<jsp:include page="../mainPage/header.jsp"/>

<div id="wrap_menu">
	<section class="menu_select">
	<h3 class="menu_h3"> 카 테 고 리</h3>
	
	<fieldset id="menu_fieldset">
	<h4 class="menu_h4"><a class="menu_a" href="drink_menu.jsp">음료<img class="menu_img" alt="오른쪽화살표" src="../resources/images/오른쪽화살표.jpg"></a></h4>
	</fieldset>
	
	<fieldset id="menu_fieldset">
	<h4 class="menu_h4"><a class="menu_a" href="dessert_menu.jsp">디저트<img class="menu_img" alt="오른쪽화살표" src="../resources/images/오른쪽화살표.jpg"></a></h4>
	</fieldset>

	</section>

</div>

<jsp:include page="../mainPage/footer.jsp"/>

</body>
</html>