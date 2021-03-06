<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<head>
<meta charset="UTF-8">
<title>DonateLike</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/donateLike.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- 전체 임시 css -->
<style type="text/css">
</style>
</head>
<body>
	<!-- 상단바 -->
	<jsp:include page="../bar/topbar.jsp"></jsp:include>
	<!-- 목차? 상위목록 표시 -->
	<div style="text-align: right; margin-right: 20px">
		<a href="main" style="color: black; text-decoration: none;">Home</a> >
		<a href="Donate_detail" style="color: black; text-decoration: none;">후원내역</a>
	</div>
	<!-- 게시판 시작 -->
	<div class="container" style="margin-top: 15px; z-index: -9999;">
		<div class="border">
			<div>
				<h3 style="text-align: center;">기부 영수증</h3>
			</div>
			<br>
			<input type="hidden" value="${sessionScope.SID}" name="Main_id" />

			<div>
				<h5 style="text-align: left;">기부자 인적사항</h5>
			</div>


			<table class="table" id='target' style="z-index: -9999;">
				<thead>
					<tr>
						<th>성명</th>
						<th>생년월일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${DDOne.DM_NAME}</td>
						<td>${DDOne.DM_BIRTH}</td>
					</tr>
				</tbody>
			</table>
			<br>
			<div>
				<h5 style="text-align: left;">기부자 지출내역</h5>
			</div>
			<table class="table" id='target' style="z-index: -9999;">
				<thead>
					<tr>
						<th>기부대상</th>
						<th>후원종류</th>
						<th>은행</th>
						<th>금액</th>
						<th>날짜</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<c:choose>
								<c:when test="${DDOne.DA_CATE eq '1'}">국내 장애아동</c:when>
								<c:when test="${DDOne.DA_CATE eq '2'}">국내 위기아동</c:when>
								<c:when test="${DDOne.DA_CATE eq '3'}">국내 독거노인</c:when>
								<c:when test="${DDOne.DA_CATE eq '4'}">국내 수재민</c:when>
							</c:choose>
						</td>
						<td>
							<c:choose>
								<c:when test="${DDOne.DA_SELECT eq 'Regular_support'}">정기후원</c:when>
								<c:when test="${DDOne.DA_SELECT eq 'Temporary_support'}">일시후원</c:when>

							</c:choose>
						</td>
						<td>
							<c:choose>
								<c:when test="${DDOne.DA_BANK eq 'sin'}">신한은행</c:when>
								<c:when test="${DDOne.DA_BANK eq 'kb'}">국민은행</c:when>
								<c:when test="${DDOne.DA_BANK eq 'ibk'}">기업은행</c:when>
								<c:when test="${DDOne.DA_BANK eq 'busan'}">부산은행</c:when>
								<c:when test="${DDOne.DA_BANK eq 'gyeongnam'}">경남은행</c:when>
								<c:when test="${DDOne.DA_BANK eq 'hana'}">하나은행</c:when>
								<c:when test="${DDOne.DA_BANK eq 'nh'}">농협</c:when>
							</c:choose>
						</td>
						<td>${DDOne.DA_DONATE}</td>
						<td>${DDOne.DA_DATE}</td>
					</tr>
				</tbody>
			</table>

		</div>
	</div>

	<!-- 하단바 -->
	<jsp:include page="../bar/footer.jsp"></jsp:include>
</body>
<script src='resources/js/jquery-3.3.1.min.js'></script>
<script src="resources/js/popper.min.js"></script>
<script
	src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script
	src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>

