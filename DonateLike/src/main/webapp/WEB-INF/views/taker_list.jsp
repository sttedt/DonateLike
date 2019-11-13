<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<head>
<meta charset="UTF-8">
	<title>DonateLike</title>
	<link rel="stylesheet" href="resources/css/bootstrap.css" />
	<link rel="stylesheet" href="resources/css/donateLike.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
	<!-- 전체 임시 css -->
	<style type="text/css">
	
	</style>
</head>
<body>
	<!-- 상단바 -->
	<jsp:include page="bar/topbar.jsp"></jsp:include>

	<div class="container" style="margin-top: 15px; z-index: -9999;" >
		<div>
			<h3 style="text-align: center;">수혜자 목록</h3>
		</div>

		<table class="table" id='target' style="z-index: -9999;">
			<thead>
				<tr>
					<th>수혜자 번호</th>
					<th>이름</th>
					<th>번호</th>
					<th>생년월일</th>
					<th>주소</th>
					<th>이메일</th>
					<th>카테고리</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${t_list}" var="map">
					<tr>
						<td>${map.TI_NO}</td>
						<td>${map.TI_NAME}</td>
						<td>${map.TI_PHONE}</td>
						<td>${map.TI_BIRTH}</td>
						<td>${map.TI_ADDRESS}</td>
						<td>${map.TI_EMAIL}</td>
						<td>
						<c:choose>
						<c:when test="${map.CATE_NO eq '1'}">국내 장애아동</c:when>
						<c:when test="${map.CATE_NO eq '2'}">국내 위기아동</c:when>
						<c:when test="${map.CATE_NO eq '3'}">국내 독거노인</c:when>
						<c:when test="${map.CATE_NO eq '4'}">국내 수재민</c:when>
						</c:choose>
						</td>
						<td>
							<a class="title" href="taker_update?TI_NO=${map.TI_NO}"	name="update_no">수정</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<a href="taker_insert" class="btn btn-dark">수혜자등록</a>
		</div>
	</div>
	
	<!-- 하단바 -->
	<jsp:include page="bar/footer.jsp"></jsp:include>	
</body>
<script src='resources/js/jquery-3.3.1.min.js'></script>
<script src="resources/js/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	
<script>


</script>
