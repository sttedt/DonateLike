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

</style>
</head>
<body>
	<!-- 상단바 -->
	<jsp:include page="../bar/topbar.jsp"></jsp:include>

		<div class="container">
		<div>
			<h3 style="text-align: left;">
				회원정보
			</h3>
		</div>	
		<table class="table">
			<tbody>
				<tr>
					<th>아이디</th>
					<td>${pro.DM_ID}</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>${pro.DM_NAME}</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>${pro.DM_EMAIL}</td>
				</tr>
				<tr>	
					<th>주소</th>
					<td>${pro.DM_ADDRESS}</td>
				</tr>
				<tr>	
					<th>전화번호</th>
					<td>${pro.DM_PHONE}</td>
				</tr>
			</tbody>
		</table>
		<div>
			<a href="profile_update?DM_ID=${pro.DM_ID}" class="btn btn-primary">수정</a>
		</div>
	</div>


	<!-- 하단바 -->
	<jsp:include page="../bar/footer.jsp"></jsp:include>
</body>
<script src='resources/js/jquery-3.3.1.min.js'></script>
<script src="resources/js/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script>

</script>
