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
	function checktextId(){
		if(document.userRegister.userid.value==""){
			alert('실명은 필수 입력 사항입니다');
			document.userRegister.userid.focus();
			return;
		}
		//실명이 입력되면 중복확인하는 기능의 웹페이지 checkRegister열기
		// wid = document.userRegister.userid.value;
		// window.open("../member.login/checkRegister.jsp?userid="+wid,"","width=300,height=200")
	}
	function checktextPw(){
		if(document.userRegister.userpw.value==""){
			alert('비밀번호는 필수 입력 사항입니다');
			document.userRegister.userpw.focus();
			return;
		}
		if(document.userRegister.userpwc.value==""){
			alert('비밀번호는 필수 입력 사항입니다');
			document.userRegister.userpwc.focus();
			return;
		}
		
	}
	function checktextNick(){
		if(document.userRegister.usernick.value==""){
			alert('닉네임은 필수 입력 사항입니다');
			document.userRegister.usernick.focus();
			return;
		}
	}
</script>


</head>
<body>
	<jsp:include page="../mainPage/header.jsp"/>
	
	<a id="first"></a>
	<div id="wrap_main" style="margin-top: 5%; margin-bottom: 5%;">
		<div align="center">
			<form name="userRegister" action="../member.login/checkRegister.jsp" method="post">
	 		<table width="400" CELLSPACING="15px">
	 		<caption align="top">
	 		<hr color="cyan" width="400">
	 		<h2>회원가입</h2>
	 		<hr color="cyan" width="400" style="margin-bottom: 1%;">
	 		</caption>
	 		<tr>
	 			<td>이름<sup><font color=red>(* 필수)</font>실명입력</sup></td>
	 			<td><input type="text" id="username" name="username" placeholder="실명입력" maxlength="4" style="width: 150px;"></td>
	 		</tr>
	 		<tr>
	 			<td>아이디<sup><font color=red>(* 필수)</font>중복허용x</sup></td>
	 			<td>
	 				<input type="text" id="userid" name="userid" placeholder="아이디 입력" style="width: 150px;">	
	 			</td>
	 		</tr>
	 		<tr>
	 			<td>비밀번호</td>
	 			<td>
	 				<input type="password" id="userpw" name="userpw" placeholder="비밀번호 입력" style="width: 150px;">	
	 			</td>
	 		</tr>
	 		<tr>
	 			<td>비밀번호 확인</td>
	 			<td>
	 				<input type="password" id="userpwc" name="userpwc" placeholder="비밀번호 입력" style="width: 150px;">	
	 			</td>
	 		</tr>
	 		<tr>
	 			<td>닉네임<sup><font color=red>(* 필수)</font>중복허용x</sup>	</td>
	 			<td>
	 				<input type="text" id="usernick" name="usernick" placeholder="비밀번호 입력" style="width: 150px;">	
	 			</td>
	 		</tr>
	 		<tr>
	 			<td colspan="2" align="center">
	 				<input type="submit" value="회원가입" style="margin-right: 10px;">
	 				<input type="reset" value="취소" style="margin-right: 10px;">
	 				
	 			</td>
	 		</tr>
	 	</table>
	 	</form>
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
		</div>
	</div>
	
	
	<jsp:include page="../mainPage/footer.jsp"/>
</body>
</html>