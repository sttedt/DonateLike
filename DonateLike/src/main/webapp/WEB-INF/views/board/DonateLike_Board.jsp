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
	<jsp:include page="../bar/topbar.jsp"></jsp:include>
		<!-- 목차? 상위목록 표시 -->
	<div style="text-align: right;  margin-right: 20px">
		<a href="main" style="color:black; text-decoration: none;">Home</a> > <a href="DonateLike_Board" style="color:black; text-decoration: none;">문의 하기</a>	
	</div>
	<!-- 게시판 시작 -->
	<div class="container" style="margin-top: 15px; z-index: -9999;" >
		<div>
			<h3 style="text-align: center;">Q&A 목록</h3>
		</div>

		<table class="table" id='target' style="z-index: -9999;">
			<thead>
				<tr>
					<th>글번호</th>
					<th>글제목</th>
					<th>작성자</th>
					<th>날짜</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${b_list}" var="map">
					<tr>
						<td>${map.B_NO}</td>
						<td>
							<a class="title" href="board_detail?B_NO=${map.B_NO}" name="B_TITLE">${map.B_TITLE}</a>
						</td>
						<td>${map.DM_ID}</td>
						<td>${map.B_DATE}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<a href="DonateLike_Board_insert" class="btn btn-dark">글쓰기</a>
		</div>
	</div>
	
	<!-- 하단바 -->
	<jsp:include page="../bar/footer.jsp"></jsp:include>	
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
