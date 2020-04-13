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
				width: 100px; height: 120px; box-shadow: -3px 3px 3px #000000;} /*고정 위치*/
		.rp1 button{margin-top: 90%; margin-left: 15px;}
		
		/*섹션 영역*/
		.section_1{order: 2; display: flex; flex-flow: column;}
		.article1{order: 1; width: 100%; height: 300px;}
		.article2{order: 1; width: 100%; height: 300px;}
		.article3{order: 1; width: 100%; height: 300px;}				
		
	/*PC용 CSS*/
	@media all and (min-width:960px){		
	#wrap_main{position:relative; width:80%;}/*위에서 설정하고 아래서 따로 설정안하면 그 설정 유지. 새로 설정하면 새로 설정한값 적용*/	
	
		/*섹션 영역*/
		.section_1{order: 2; display: flex; flex-flow: column;}
		.article_flow{display: flex; flex-flow: row;}
		.article1{width: 50%;}
		.article2{width: 50%; margin-left: 40%;}
		.article3{width: 50%;}
		.article_flow p{order: 2;}
		#article_flow_second_p{order: 0;}		

</style>

</head>
<body>

<jsp:include page="header.jsp"/>

<div id="wrap_main">
<p class="rp1"><button>바로 가기</button></p>

	<section class="section_1">
		<article class="article_flow">
			<img alt="" src="../resources/images/img.jpg" class="article1">
			<p>
				누르면 해당 페이지로 이동<br>
				<button>이동</button>
			</p>
		</article>
		
		<article class="article_flow">
			<img alt="" src="../resources/images/test2.jpg" class="article2">
			<p id="article_flow_second_p">
				누르면 해당 페이지로 이동<br>
				<button>이동</button>
			</p>
		</article>
		
		<article class="article_flow">
			<img alt="" src="../resources/images/test3.jpg" class="article3">
			<p>
				누르면 해당 페이지로 이동<br>
				<button>이동</button>
			</p>
		</article>

	</section>
</div>

<jsp:include page="footer.jsp"/>

</body>
</html>