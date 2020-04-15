<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리저브 이벤트</title>

<style type="text/css">
	/*기본 CSS 및 모바일*/
	#wrap_reserve{display: flex; flex-flow: column; margin: 0 auto; width: 80%; max-width: 1200px; height: 50%;}	
	.reserve_img {width: 100%; height: 90%; margin: 0 auto;}
	.reserve_l {position: absolute; top: 10%; left: 15%; width: 9%; height: 50%; display: inline-block;}
	.reserve_r {position: absolute; top: 10%; right: 15%; width: 9%; height: 50%; display: inline-block;}
	
	/*PC용 CSS*/
	@media all and (min-width:960px){		
	#wrap_main{position:relative; width:80%;}/*위에서 설정하고 아래서 따로 설정안하면 그 설정 유지. 새로 설정하면 새로 설정한값 적용*/	
	.reserve_img {width: 100%; height: 80%;}
	.reserve_l {top: 13%; left: 19%; height: 80%; }
	.reserve_r {top: 13%; right: 19%; height: 80%; }
		
</style>

<script type="text/javascript">
	i=1;
	
	function rightMove() {
		if(i>=3){i=1;}	
		else{i++;}	
		document.getElementById("reserveImg").src = "../resources/eventImg/reserve"+i+".jpg";	
	}
	
	function leftMove() {
		if(i<=1){i=3;}	
		else{i--;}	
		document.getElementById("reserveImg").src = "../resources/eventImg/reserve"+i+".jpg";	
	}
</script>

</head>
<body>

<jsp:include page="../mainPage/header.jsp"/>
<div id="wrap_reserve">

<a href="javascript:void(0);" onclick="leftMove()" class="reserve_l"></a>
<img src="../resources/eventImg/reserve1.jpg" class="reserve_img" id="reserveImg">
<a href="javascript:void(0);" onclick="rightMove()" class="reserve_r"></a>

</div>
<jsp:include page="../mainPage/footer.jsp"/>

</body>
</html>