<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>


<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="resources/css/bootstrap.css" />
	<link rel="stylesheet" href="resources/css/donateLike.css?ver=1" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
	
	
	<style type="text/css">
	
	</style>
</head>
<body>
	<jsp:include page="bar/topbar.jsp"></jsp:include>
	
	
	<div class="container" style="max-width: 540px">
		<div>
			<h3 style="text-align: center;">회원가입</h3>
		</div>
		<form method="post">
			<input type="text" name="DM_ID" id="DM_ID" placeholder="아이디"
				class="form-control"><br>
			<div align="right">
				<span id="idMsg"></span>
			</div>
			<input type="text" name="DM_NAME" id="DM_NAME" placeholder="이름"
				class="form-control"><br>
			<div align="right">
				<span id="nameMsg"></span>
			</div>
			<input type="password" name="DM_PW" id="DM_PW" placeholder="비밀번호"
				class="form-control"><br>
			<div align="right">
				<span id="pwMsg"></span>
			</div>
			<input type="password" id="pw_confirm" placeholder="비밀번호 확인"
				class="form-control"><br>
			<div align="right">
				<span id="pw_confirmMsg"></span>
			</div>
			<input type="text" name="DM_ADDRESS" placeholder="주소"
				class="form-control"><br>
		
			
<!-- 			<div class="form-group input-group"> -->
<!-- 				<input type="email" name="email" id="email" placeholder="이메일" -->
<!-- 					class="form-control"> <label>&nbsp;</label> <input -->
<!-- 					type="button" id='btn_email' class="btn btn-primary" value="메일인증"> -->
<!-- 			</div> -->
<!-- 			<div class="form-group input-group" style='display: none;' -->
<!-- 				id='emailAuthArea'> -->
<!-- 				<input type="text" name="emailAuth" id="txt_emailAuth" -->
<!-- 					placeholder="인증번호입력" class="form-control"> <label>&nbsp;</label> -->
<!-- 				<input type="button" id='btn_emailAuth' class="btn btn-primary" -->
<!-- 					value="인증하기"> -->
<!-- 			</div> -->
<!-- 			<div align="right"> -->
<!-- 				<span id="emailMsg"></span> -->
<!-- 			</div> -->

<!-- 			<div class="form-group input-group"> -->
<!-- 				<input type="text" name="phone" id="phone" placeholder="폰번호" -->
<!-- 					class="form-control"> <label>&nbsp;</label> <input -->
<!-- 					type="button" id="btn_phone" class="btn btn-dark" value="인증번호받기"> -->
<!-- 			</div> -->
<!-- 			<div class="form-group input-group" style="display: none;" -->
<!-- 				id="checkOn"> -->
<!-- 				<input type="text" class="form-control" id="phoneCheckEnd" -->
<!-- 					name="phoneCheckEnd" placeholder="인증번호입력"> <label>&nbsp;</label> -->
<!-- 				<input type="button" class="btn btn-dark" id="phoneCheckEndButton" -->
<!-- 					name="phoneCheckEndButton" value="인증하기"> -->
<!-- 			</div> -->
<!-- 			<div align="right"> -->
<!-- 				<span id="phoneMsg"></span> -->
<!-- 			</div> -->

			<input type="submit" class="btn btn-dark" id="btn_join" value="회원가입">
		</form>
	</div>

<script src='resources/js/jquery-3.3.1.min.js'></script>
<script src="resources/js/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	

	<script>

	</script>
	
</body>



</html>