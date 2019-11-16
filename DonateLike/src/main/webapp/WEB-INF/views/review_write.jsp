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
			<form action="review_write" method = "post" enctype='multipart/form-data'>
				<div>
				 <h3 style="text-align: center; color: #ffc107">
						${detail.DM_ID} 님의 
					</h3>
					<h3 style="text-align: center; color: #ffc107">
						${detail.B_TITLE}
					</h3>
					<h3 style="text-align: center;">
						에 대한 리뷰
					</h3>
				</div>	
	
			<br /> 
			<input type="hidden" name="B_NO" class="form-control" value="${detail.B_NO}"/>
			<br />
			
			작성자 :<input type="text" name="DM_ID" value="${sessionScope.SID}" class="form-control" readonly="readonly"/>
			<br />
			내용 : <textarea rows="6" name="RE_CONTENT" class="form-control" >${detail.DM_ID} 님</textarea>
			<br /> 
		
			<input type="submit" value="리뷰쓰기" class="btn btn-primary"/>
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
