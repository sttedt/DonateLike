<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<head>
<meta charset="UTF-8">
	<title>DonateLike</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/donateLike.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
	<!-- 전체 임시 css -->
	<style type="text/css">
	
	</style>
</head>
<body>
	<!-- 상단바 -->
	<jsp:include page="bar/topbar.jsp"></jsp:include>
		<!-- 목차? 상위목록 표시 -->
	<div style="text-align: right;  margin-right: 20px">
		<a href="main" style="color:black; text-decoration: none;">Home</a> > <a href="DonateLike_Board" style="color:black; text-decoration: none;">문의 하기</a>	
	</div>
	<!-- 게시판 시작 -->
	<div class="container" style="margin-top: 15px; z-index: -9999;" >
		<div>
			<h3 style="text-align: center;">후원 내역</h3>
		</div>
			<input type="hidden" value="${sessionScope.SID}" name="Main_id"/>
		<table class="table" id='target' style="z-index: -9999;">
			<thead>
				<tr>
					<th>기부대상</th>
					<th>은행</th>
					<th>금액</th>
					<th>날짜</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="map">
					<tr>
						<td>
							<c:choose>
								<c:when test="${map.CATE_NO eq '1'}">국내 장애아동</c:when>
								<c:when test="${map.CATE_NO eq '2'}">국내 위기아동</c:when>
								<c:when test="${map.CATE_NO eq '3'}">국내 독거노인</c:when>
								<c:when test="${map.CATE_NO eq '4'}">국내 수재민</c:when>
							</c:choose>
						</td>
						<td>
							<c:choose>
								<c:when test="${map.AA_BANK eq 'sin'}">신한은행</c:when>
								<c:when test="${map.AA_BANK eq 'kb'}">국민은행</c:when>
								<c:when test="${map.AA_BANK eq 'ibk'}">기업은행</c:when>
								<c:when test="${map.AA_BANK eq 'busan'}">부산은행</c:when>
								<c:when test="${map.AA_BANK eq 'gyeongnam'}">경남은행</c:when>
								<c:when test="${map.AA_BANK eq 'hana'}">하나은행</c:when>
								<c:when test="${map.AA_BANK eq 'nh'}">농협</c:when>
							</c:choose>
						</td>
						<td>${map.AA_DONATE}</td>
						<td>${map.AA_DATE}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<!-- 하단바 -->
	<jsp:include page="bar/footer.jsp"></jsp:include>	
</body>
<script src='resources/js/jquery-3.3.1.min.js'></script>
<script src="resources/js/popper.min.js"></script>
<script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>
<script>
	$('#target').DataTable({
		order : [ [ 0, 'desc' ] ],
		ordering : true,
		serverSide : false
	})

	$(document).ready(function() {
		$('#target').DataTable()
	})
</script>
