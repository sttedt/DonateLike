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
			<h3 style="text-align: cneter;">대상선정 상세페이지</h3>
			<input type="button" class="btn btn-dark" value="목록" onclick="history.back(-1)"/>
			<c:choose>
			    <c:when test="${sessionScope.SID eq 'admin'}">
					<a href="DonateLike_TargetSelection_update?TS_NO=${DTSelectionOne.TS_NO}" class="btn btn-dark">수정</a>
					<a href="DonateLike_TargetSelection_delete?TS_NO=${DTSelectionOne.TS_NO}" class="btn btn-dark" >삭제</a>
				</c:when>
			</c:choose>
		</div>
		<img class="card-img-top" src="http://sttedt.dothome.co.kr/img/${DTSelectionOne.TS_IMG}"/>
		
		<table class="table">
			<tbody>
				<tr>
					<th width="80px">글내용</th>
					<td>${DTSelectionOne.TS_CONTENT}</td>
				</tr>
				<tr>	
					<th width="80px">상세내용</th>
					<td height="300px" width="600px">${DTSelectionOne.TS_DETAIL_CONTENT}</td>
				</tr>
			</tbody>
		</table>
		<div style="text-align: center;">
			<a href="Donate_apply?TS_NO=${DTSelectionOne.TS_NO}" class="btn btn-dark" >후원하기</a>
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
