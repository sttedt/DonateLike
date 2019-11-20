<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<head>
<meta charset="UTF-8">
	<title>DonateLike</title>
	<link rel="stylesheet" href="resources/css/bootstrap.css" />
	<link rel="stylesheet" href="resources/css/donateLike.css?ver=1" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
	<!-- 전체 임시 css -->
	<style>
		
	</style>
</head>
<body>
	<!-- 상단바 -->
	<jsp:include page="../bar/topbar.jsp"></jsp:include>
	<!-- 로그인시작 -->
	<div class="DonateLike_Card_Center" style="max-width: 500px; margin-top:150px;" align="center">	
		<div>
			<h3 style="text-align: center; ">로그인</h3>
		</div>
	
		<form method="post">
			<div class="form-group">
				<input type="text" class="form-control" name="id" id="id" aria-describedby="emailHelp" placeholder="id">

			</div>
			<div class="form-group">
				<input type="password" class="form-control" name="pw" id="pw" placeholder="Password" onkeypress="caps_lock(event)"/>
				<p id="capslock" class="arrow_box" style="position:relative; border:2px solid #003b83; width:510px; bottom:-3px; display:none"> 
   				 &nbsp;<b>[CapsLock]</b>이 켜져 있습니다. &nbsp;<br> <b>[CapsLock]</b>이 켜져 있으면 암호를 올바르게 입력하지 못할 수 있습니다. <br><br>
   				 암호를 입력하기전에 <b>[CapsLock]</b>을 꺼야 합니다.
				</p>
			</div>
		<button type="submit" class="btn btn-dark" style="width: 200px; height: 47px;">로그인</button>
		<button type="submit" class="btn btn-dark" style="width: 200px; height: 47px;" ><a href="join" style="color:#fff; text-decoration:none;">회원가입</a></button>
		<a class="dropdown-item" href="find_id_form" style="text-align: center;">아이디찾기</a>
		<a class="dropdown-item" href="find_pw_form" style="text-align: center;">비밀번호 변경</a>
		</form>
	</div>
	
	
	<!-- 하단바 -->
	<jsp:include page="../bar/footer.jsp"></jsp:include>	
</body>
<script src='resources/js/jquery-3.3.1.min.js'></script>
<script src="resources/js/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script>
	// 캡스락
	function caps_lock(e) {
	    var keyCode = 0;
	    var shiftKey = false;
	    keyCode = e.keyCode;
	    shiftKey = e.shiftKey;
	    if (((keyCode >= 65 && keyCode <= 90) && !shiftKey)
	            || ((keyCode >= 97 && keyCode <= 122) && shiftKey)) {
	        show_caps_lock();
	        setTimeout("hide_caps_lock()", 3500);
	    } else {
	        hide_caps_lock();
	    }
	}
	function show_caps_lock() {
	 $("#capslock").show();
	}
	function hide_caps_lock() {
	 $("#capslock").hide();
	}
</script>
