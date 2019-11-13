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
	
		<div class="container">
		<form method = "post">
			<div>
				<h3 style="text-align: center;">
					게시글 수정
				</h3>
				<hr>
			</div>	
			<br /> 
			<input type="hidden" name="B_NO" class="form-control" value="${board_update_ready.B_NO}"/>
			<br />
			제목 :<br /> 
			<input type="text" name="B_TITLE" class="form-control" value="${board_update_ready.B_TITLE}"/>
			<br />
			내용 : <textarea rows="6" name="B_CONTENT" class="form-control">${board_update_ready.B_CONTENT}</textarea>
			<br /> 
			작성자 :<input type="text" name="DM_ID" value="${sessionScope.SID}" class="form-control" readonly="readonly"/>
			<br />
			<input type="submit" value="수정하기" class="btn btn-dark"/>
		</form>
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

</script>
