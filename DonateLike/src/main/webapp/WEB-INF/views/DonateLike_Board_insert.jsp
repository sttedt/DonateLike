<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<html>
<head>
<meta charset="UTF-8">
	<title>DonateLike</title>
	<link rel="stylesheet" href="resources/css/bootstrap.css" />
	<link rel="stylesheet" href="resources/css/donateLike.css?ver=1" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
	<!-- 전체 임시 css -->
	<style type="text/css">
	
	</style>
</head>
<body>
	<!-- 상단바 -->
	<jsp:include page="bar/topbar.jsp"></jsp:include>
	
	<!-- 게시판글쓰기 시작 -->
	<div class="container">
		<form action="DonateLike_Board_insert" method = "post">
			<div>
				<h3 style="text-align: center;">
					Q&A 글쓰기
				</h3>
				<hr>
			</div>	
			제목 :<br /> 
			<input type="text" name="title" class="form-control"/>
			<br />
			내용 : <textarea rows="6" name="content" class="form-control"></textarea>
			<br /> 
			작성자 :<input type="text" name="dm_id" value="${sessionScope.SID}" class="form-control" readonly="readonly"/>
			<br />
			<input type="submit" value="글쓰기" class="btn btn-primary"/>
		</form>
	</div>
	
	<!-- 하단바 -->
	<jsp:include page="bar/footer.jsp"></jsp:include>	
</body>
<script src='resources/js/jquery-3.3.1.min.js'></script>
<script src="resources/js/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</html>