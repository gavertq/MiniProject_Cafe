<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${detailResult.menu_name }</title>

<style type="text/css">
/*기본 CSS 및 모바일*/
	#wrap_CDmenu{display: flex; flex-flow: column; margin: 0 auto;	width: 80%; max-width: 1200px;}		
	.CDmenu_Section{display: flex; flex-flow: column; margin: 50px 0px;}
	
	/*메뉴 이미지*/
	.CDmenu_dt{overflow: hidden;}
	.CDmenu_Img{width: 100%; max-width:320px; height: 320px; transform:scale(1);  transition: all 0.3s ease-in-out;}	
	.CDmenu_Img:hover{transform:scale(1.2);}	
	
	/*테이블 내부 디자인*/
	.CDmenu_mainTable{margin: 0 auto; table-layout: fixed; width: 400px;}
	#menu_name{font-size:20px; font-weight: bold; }
	.CDmenu_info td{padding:10px;}
	#CDmenu_info_td{border-right: 1px solid; border-right-style: dashed; border-right-color: gray;}	
	
/*PC용 CSS*/
	@media all and (min-width:960px){		
	#wrap_CDmenu{position:relative; width:80%;}/*위에서 설정하고 아래서 따로 설정안하면 그 설정 유지. 새로 설정하면 새로 설정한값 적용*/
	.CDmenu_Section{display: flex; flex-flow: row;}
	
	/*메뉴 이미지*/
	.CDmenu_Img{width:320px; height: 320px; margin: 0 auto;}
	
	/*테이블 내부 디자인*/
	.CDmenu_info{}	

</style>

</head>
<body>

<jsp:useBean id="menuDetailDao" class="members.MenuDAO"/>
<jsp:useBean id="menuDetailDto" class="members.MenuDTO"/>
<c:set var="menuName" value="${ param.name}"/>

<c:import url="../mainPage/header.jsp"/>
<div id="wrap_CDmenu">

<c:set var="menu_detailResult" value="${menuDetailDao.menuDetailView(menuName) }"/>
<c:choose>
		<c:when test="${menu_detailResult.size() != 0 }">		
			<c:forEach var="detailResult" items="${ menu_detailResult}">
			
			<section class="CDmenu_Section">
			<dl style="margin: 0 auto;"><dt class="CDmenu_dt">
				<img src="../resources/menu/${detailResult.menu_name }.jpg" class="CDmenu_Img">
			</dt></dl>	
				<table class="CDmenu_mainTable">
				<tr><td id="menu_name">${detailResult.menu_name }</td></tr>
				<tr><td>
				<hr style="background-color: black; height: 1px;" noshade="noshade">${detailResult.menu_Info }
				<hr></td></tr>
				<tr><td> 
					<table class="CDmenu_info">
					<tr>
						<td>사이즈: </td><td id="CDmenu_info_td">${detailResult.menu_size }</td>
						<td>1회 제공량 (kcal): </td><td>${detailResult.kcal }</td>
					</tr>
					<tr>
						<td>포화지방 (g): </td><td id="CDmenu_info_td">${detailResult.fat }</td>
						<td>나트륨 (mg): </td>	<td>${detailResult.natrium }</td>
					</tr>
					<tr>
						<td>당류 (g): </td><td id="CDmenu_info_td">${detailResult.sugars }</td>
						<td>단백질 (g): </td><td>${detailResult.protein }</td>
					</tr>
					</table>
				</td></tr>
				</table>
		
			</section>
			</c:forEach>
		</c:when>
		
		<c:otherwise>
		 <p>메뉴 준비 중입니다</p>
		</c:otherwise>
	</c:choose>	


</div>
<c:import url="../mainPage/footer.jsp"/>

</body>
</html>