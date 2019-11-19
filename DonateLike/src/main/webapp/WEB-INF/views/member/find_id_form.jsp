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
	
		<div class="container" style="margin-top: 150px; max-width: 540px;">
		<div>
			<h3 style="text-align: center;">아이디찾기</h3>
		</div>

		<form method="post">

			<p>
				<label>Email</label> <input class="form-control" type="text"
					id="email" name="email" required>
			</p>

			<p class="w3-center">
				<button type="submit" id=findBtn
					class="btn btn-dark" style="width: 512px; height: 47px;">찾기</button>
				
				<button type="button" onclick="history.go(-1);"
					class="btn btn-dark" style="width: 512px; height: 47px; margin-top: 10px;">취소</button>
			</p>

		</form>
	</div>
	
	<!-- 하단바 -->
	<jsp:include page="../bar/footer.jsp"></jsp:include>	
</body>
<script src='resources/js/jquery-3.3.1.min.js'></script>
<script src="resources/js/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script>

</script>
