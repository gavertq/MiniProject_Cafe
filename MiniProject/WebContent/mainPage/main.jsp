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
		.article_flow{}
		.article_flow p{text-align: center;}
		
		/*이벤트 이동 span과 a*/
		#event_span{border:2px solid; border-color: #313B88; border-radius: 5px; padding: 2px;}
		#event_a{text-decoration: none; color: black;}
		
		/*위로 이동*/
		.goUp_a{margin-left: 80%;  text-decoration: none;}
		
	/*PC용 CSS*/
	@media all and (min-width:960px){		
	#wrap_main{position:relative; width:80%;}/*위에서 설정하고 아래서 따로 설정안하면 그 설정 유지. 새로 설정하면 새로 설정한값 적용*/	
	
		/*섹션 영역*/
		.section_1{order: 2; display: flex; flex-flow: column;}
		.article_flow{display: flex; flex-flow: row;}
		.article1{width: 50%;}
		.article_flow p{order: 2; width: 50%; text-align: center; padding-top: 110px;}
		#second_p{order: 0;  min-width: 50%;}		
		
		/*위로 이동*/
		.goUp_a{margin-left: 90%; margin-bottom: 5px;}
</style>
<script src="../resources/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("a.event_a1").mouseenter(function(){
			$("span.event_span1").css({"background-color":"#313B88"});
			$("a.event_a1").css({"color":"white"});
		})
		
		$("a.event_a1").mouseleave(function(){
			$("span.event_span1").css({"background-color":"rgba(255,255,255,0)"});
			$("a.event_a1").css({"color":"black"});
		})
		
		$("a.event_a2").mouseenter(function(){
			$("span.event_span2").css({"background-color":"#313B88"});
			$("a.event_a2").css({"color":"white"});
		})
		
		$("a.event_a2").mouseleave(function(){
			$("span.event_span2").css({"background-color":"rgba(255,255,255,0)"});
			$("a.event_a2").css({"color":"black"});
		})
		
		$("a.event_a3").mouseenter(function(){
			$("span.event_span3").css({"background-color":"#313B88"});
			$("a.event_a3").css({"color":"white"});
		})
		
		$("a.event_a3").mouseleave(function(){
			$("span.event_span3").css({"background-color":"rgba(255,255,255,0)"});
			$("a.event_a3").css({"color":"black"});
		})
	})
</script>
</head>
<body>

<a id="first"></a>
<jsp:include page="header.jsp"/>
<div id="wrap_main">
<p class="rp1"><button>바로 가기</button></p>
	<section class="section_1">	
		<article class="article_flow">d
			<img alt="" src="../resources/images/img.jpg" class="article1">
			<p>
			이벤트 1로 이동<br>
			<span id="event_span" class="event_span1">
				<a id="event_a" class="event_a1" href="#">이동</a>
			</span>
			</p>
		</article>
		
		<article class="article_flow">
			<img alt="" src="../resources/images/test2.jpg" class="article1">
			<p id="second_p">
			이벤트 2로 이동<br>
			<span id="event_span" class="event_span2">
				<a id="event_a" class="event_a2" href="#">이동</a>
			</span>
			</p>
		</article>
		
		<article class="article_flow">
			<img alt="" src="../resources/images/test3.jpg" class="article1">
			<p>
			이벤트 3로 이동<br>
			<span id="event_span" class="event_span3">
				<a id="event_a" class="event_a3" href="#">이동</a>
			</span>
			</p>
		</article>
	<a href="#first" class="goUp_a">위로 이동</a>
	</section>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>