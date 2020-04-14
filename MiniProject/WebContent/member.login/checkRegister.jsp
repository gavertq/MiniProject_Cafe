<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
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
	function alertRegi(){
		alert('회원가입에 성공하셨습니다.')
	}
	

</script>


</head>
<body onload="alertRegi()">
	<jsp:include page="../mainPage/header.jsp"/>
	이름 : ${param.username }
	아이디 : ${param.userid }
	비밀번호 : ${param.userpw }
	닉네임 : ${param.usernick }
	< 처리부 >
	
	
	<jsp:include page="../mainPage/footer.jsp"/>
</body>
</html>