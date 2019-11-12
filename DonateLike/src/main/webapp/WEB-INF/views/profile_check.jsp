<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<head>
<meta charset="UTF-8">
<title>DonateLike</title>
<link rel="stylesheet" href="resources/css/bootstrap.css" />
<link rel="stylesheet" href="resources/css/donateLike.css?ver=1" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- 전체 임시 css -->
<style>
.arrow_box {
	position: relative;
	background: #ffffff;
	border: 2px solid #000000;
}

.arrow_box:after, .arrow_box:before {
	bottom: 100%;
	left: 50%;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none;
}

.arrow_box:after {
	border-color: rgba(255, 255, 255, 0);
	border-bottom-color: #ffffff;
	border-width: 7px;
	margin-left: -7px;
}

.arrow_box:before {
	border-color: rgba(0, 0, 0, 0);
	border-bottom-color: #000000;
	border-width: 10px;
	margin-left: -10px;
}
</style>
</head>
<body>
	<!-- 상단바 -->
	<jsp:include page="bar/topbar.jsp"></jsp:include>

	<div class="container" style="margin-top: 150px; max-width: 540px;">
	<div>
			<h3 style="text-align: center; ">회원정보 확인</h3>
		</div>
	
		<form method="post">
			<div class="form-group">
				<input type="text" class="form-control" name="id" id="id" aria-describedby="emailHelp" value='${sessionScope.SID}' readonly>
			</div>
			<div class="form-group">
				<input type="password" class="form-control" name="pw" id="pw" placeholder="Password">
			</div>
		<button type="submit" id='chk' class="btn btn-dark" style="width: 512px; height: 47px;">로그인</button>
		</form>
	</div>




	<!-- 하단바 -->
	<jsp:include page="bar/footer.jsp"></jsp:include>
</body>
<script src='resources/js/jquery-3.3.1.min.js'></script>
<script src="resources/js/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script>

</script>
