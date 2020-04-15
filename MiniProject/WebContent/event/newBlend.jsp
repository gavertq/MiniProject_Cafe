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
	#wrap_Bmenu{display: flex; flex-flow: column; margin: 0 auto;	width: 80%; max-width: 1200px;}		
	.Bmenu_Section{display: flex; flex-flow: column; margin: 50px 0px;}
	
	/*메뉴 이미지*/
	.Bmenu_dt{overflow: hidden;}
	.Bmenu_Img{width: 100%; max-width:320px; height: 320px; transform:scale(1);  transition: all 0.3s ease-in-out;}	
	.Bmenu_Img:hover{transform:scale(1.2);}	
	
	/*테이블 내부 디자인*/
	.Bmenu_mainTable{margin: 0 auto; table-layout: fixed; width: 400px;}
	#menu_name{font-size:20px; font-weight: bold; }
	.table_hr{background-color: black; height: 1px; noshade="noshade";}
	
/*PC용 CSS*/
	@media all and (min-width:960px){		
	#wrap_Bmenu{position:relative; width:80%;}/*위에서 설정하고 아래서 따로 설정안하면 그 설정 유지. 새로 설정하면 새로 설정한값 적용*/
	.Bmenu_Section{display: flex; flex-flow: row; max-width: 700px; margin: 0 auto;}
	
	/*메뉴 이미지*/
	.Bmenu_Img{width:320px; height: 320px; margin: 0 auto;}
	
	/*테이블 내부 디자인*/
	.Bmenu_mainTable{padding-top: 20px;}


</style>

</head>
<body>

<c:set var="newBlendImg" value="${ param.img}"/>

<c:import url="../mainPage/header.jsp"/>
<div id="wrap_Bmenu">

	<section class="Bmenu_Section">
	<dl style="margin: 0 auto;"><dt class="Bmenu_dt">
		<img src="../resources/images/${newBlendImg }" class="Bmenu_Img">
	</dt></dl>	
	
		<table class="Bmenu_mainTable">
			<tr>
				<td id="menu_name">카티카티 블렌드 250g</td>				
			</tr>
			<tr>
				<td><hr class="table_hr">여름에 어울리는 상쾌한 커피로 취향에 따라 차갑게 혹은 따뜻하게 즐길 수 있습니다.	<hr></td>
			</tr>
		</table>

	</section>



</div>
<c:import url="../mainPage/footer.jsp"/>

</body>
</html>