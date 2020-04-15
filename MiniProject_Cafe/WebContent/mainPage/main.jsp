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
		/*고정 배너*/
		.rp1{position: fixed; right: 30px; top:70px; z-index:3;
			background-image: url(../resources/images/main_simple.PNG);	background-size: cover;
			background-repeat: no-repeat;	border-radius:5px;
			width: 110px; height: 195px; box-shadow: -3px 3px 3px #D8D8D8;} /*고정 위치*/
		.rp1 button{margin-top: 165px; margin-left: 20px;}
		
		/*섹션 영역 공통*/
		.section_1{order: 2; display: flex; flex-flow: column;}
		.article_flow{}
		.article_flow p{text-align: center;}
		/*첫번째 기사*/
		.article{order: 1; width: 100%; height: 300px; max-width: 400px;}	
		/*두번째 기사*/
		.article2{order: 1;  width:300px; height:250px; max-width: 400px; margin-left: 11%;}	
		/*세번째 기사*/
		.article3{width: 100%; height: 300px; max-width: 400px;}	
		#article3_event3{position:absolute; left:19%; width: 320px; height: 400px;}
		#event3_ment{padding-top: 50px;}
		
		/*섹션 배경색*/
		#event1{background-color: #F6F6F6;}
		#event3{background-color: #B7D8F1;}
		
		/*영상 이벤트 p*/
		#video_span{background-color: darkgreen; color: white; font-weight: bold; font-size: 25px; padding:0px 8px;}
		#second_p{color: darkgreen; font-size: 20px; line-height: 30px;}
		
		/*이벤트 이동 span과 a*/
		#event_span{border:2px solid; border-color: #313B88; border-radius: 5px; padding: 2px; text-align: center;}
		#event_a{text-decoration: none; color: black; margin: 4px; font-size: 12px;}
		
		/*위로 이동*/
		.goUp_p{margin:2px 0 0 85%; width: 50px; height: 50px;}
		.goUp_p img{margin-left: 12px; width: 20px; height: 20px;}
		.goUp_a{text-decoration: none; font-size: 10px; color: black;}
		
	/*PC용 CSS*/
	@media all and (min-width:960px){		
	#wrap_main{position:relative; width:80%;}/*위에서 설정하고 아래서 따로 설정안하면 그 설정 유지. 새로 설정하면 새로 설정한값 적용*/	
	
		/*섹션 영역 공통*/
		.section_1{order: 2; display: flex; flex-flow: column;}
		.article_flow{display: flex; flex-flow: row;}
		.article_flow p{order: 2; width: 50%; text-align: center; padding-top: 70px;}
		/*첫번째 기사*/
		.article{width: 50%;  margin-left: 10%;}
		/*두번째 기사*/
		.article2{width: 50%; margin-left: 0;}
		#second_p{order: 0;  min-width: 50%;}		
		/*세번째 기사*/
		.article3{width: 50%;}
		#article3_event3{position:absolute; left:25%;  width: 240px; height: 300px;}			
		#event3_ment{padding-top: 55px; min-width:;}
		
		/*위로 이동*/
		.goUp_p{margin-left: 93%;}
		
</style>
<script src="../jquery-3.4.1.min.js"></script>
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
		<article class="article_flow" id="event1">
			<img src="../resources/images/event1.PNG" class="article">
			<p>
			<b>햇볕과 물의 연금술</b>로 빚은 황홀한 풍미<br>
			레인샤인 블렌드<br>
			에티오피아 카욘 마운틴 팜<br><br>
			<span id="event_span" class="event_span1">
				<a id="event_a" class="event_a1" href="#">자세히 보기</a>
			</span>
			</p>
		</article>
		
		<article class="article_flow">
			<video src="../resources/media/starbucks_video.mp4" 
				muted autoplay loop class="article2" onclick="window.open('https://youtu.be/eGkvPUKyzEE')"></video>
			<p id="second_p">
			<span id="video_span">카밥족</span>을 위한<br>
			스타벅스의 <b>다양한 푸드</b>를<br>
			추천합니다.
			<br><br>

			</p>
		</article>
		
		<article class="article_flow" id="event3">
			<img src="../resources/images/event3BackImg.png" class="article3">
			<img src="../resources/images/bean1.png" id="article3_event3">
			<p id="event3_ment">
				<span style="font-weight: bold; color:#1590E6; font-size: 20px;">여름의 시작을 알리는 청량함</span><br>
				<span style="font-weight: bold; color:#0854CB; font-size: 30px;">카티 카티 블렌드</span><br><br>
				<span style="font-weight: bold; color: #373838;">케냐 원두의 시트러스한 산미와 입 안 가득 향긋한<br>
				에티오피아 원두의 꽃 향기를 경험해 보세요.</span><br><br>
				
				<span id="event_span" class="event_span3">
					<a id="event_a" class="event_a3" href="#">자세히 보기</a>
				</span>
			</p>
		</article>

		<p class="goUp_p">
		<img alt="" src="../resources/images/위화살표.jpg" onclick="location.href='#first'"><br>
		<a href="#first" class="goUp_a">위로 이동</a>
		</p>
	</section>
	
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>