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
	#wrap_main{display: flex; flex-flow: column; margin: 0 auto; width: 80%; max-width: 1200px; height: 50%;}
		.rp1{position: fixed; right: 30px; top:70px; background: url(../resources/images/test8.jpg) center;
				width: 100px; height: 120px; box-shadow: -5px 5px 3px #000000;} /*고정 위치*/
		
		/*섹션 영역*/
		.section_1{order: 2; display: flex; flex-flow: column;}
		.section_image{order: 1; width: 100%; height: 300px; background: url(../resources/images/img.jpg) center;}
		.article1{order: 1; width: 100%; height: 300px; background: url(../resources/images/test3.jpg) center;}
		.article2{order: 1; width: 100%; height: 300px; background: url(../resources/images/test4.jpg) center;}				
		
	/*PC용 CSS*/
	@media all and (min-width:960px){		
	#wrap_main{position:relative; width:80%;}/*위에서 설정하고 아래서 따로 설정안하면 그 설정 유지. 새로 설정하면 새로 설정한값 적용*/	
	
		/*섹션 영역*/
		.section_1{order: 2; display: flex; flex-flow: column;}
		.article_line{}
</style>

</head>
<body>

<jsp:include page="header.jsp"/>

<div id="wrap_main">
<p class="rp1">고정 url</p>

	<section class="section_1">
		<article class="section_image">
			누르면 해당 페이지로 이동<br>
			<button>이동</button>
		</article>
		
		<article class="article1">
			누르면 해당 페이지로 이동<br>
			<button>이동</button>
		</article>
		
		<article class="article2">
			누르면 해당 페이지로 이동<br>
			<button>이동</button>
		</article>
	</section>
</div>

<jsp:include page="footer.jsp"/>

</body>
</html>