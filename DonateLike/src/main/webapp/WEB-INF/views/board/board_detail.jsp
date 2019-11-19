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
	
		<div class="container">
		<div>
			<h3 style="text-align: left;">
				게시글
			</h3>
		</div>	
		
		<table class="table">
			<tbody>
				<tr>
					<th>글번호</th>
					<td>${detail.B_NO}</td>
				</tr>
				<tr>
					<th>글제목</th>
					<td>${detail.B_TITLE}</td>
				</tr>
				<tr>
					<th>글내용</th>
					<td>${detail.B_CONTENT}</td>
				</tr>
				<tr>	
					<th>작성자</th>
					<td>${detail.DM_ID}</td>
				</tr>
				<tr>	
					<th>날짜</th>
					<td>${detail.B_DATE}</td>
				</tr>
				
			</tbody>
		</table>
		<div>
			<input type="button" class="btn btn-dark" value="목록" onclick="history.back(-1)"/>
			<c:if test="${sessionScope.SID eq detail.DM_ID }">
				<a href="board_update_ready?B_NO=${detail.B_NO}" class="btn btn-dark" >수정</a>
				<a href="board_delete?B_NO=${detail.B_NO}" class="btn btn-dark" >삭제</a>
			</c:if>
		</div>
		<div>
			<c:if test="${sessionScope.SID eq 'admin' }">
				<a href="review_write?B_NO=${detail.B_NO}" class="btn btn-dark" >리뷰쓰기</a>
			</c:if>
		</div>
	</div>
	
	<jsp:include page="../review/review_list.jsp"></jsp:include>
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
