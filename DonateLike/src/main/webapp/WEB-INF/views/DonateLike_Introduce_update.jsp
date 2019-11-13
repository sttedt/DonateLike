<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<html>
<head>
<meta charset="UTF-8">
	<title>DonateLike</title>
	<link rel="stylesheet" href="resources/css/bootstrap.css" />
	<link rel="stylesheet" href="resources/css/donateLike.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
</head>
<body>
	<!-- 상단바 -->
	<jsp:include page="bar/topbar.jsp"></jsp:include>
	<!-- 목차? 상위목록 표시 -->
	<div style="text-align: right; margin-right: 20px">
		<a href="main" style="color:black; text-decoration: none;">Home</a> > <a href="DonateLike_Introduce" style="color:black; text-decoration: none;">기부니 좋아 소개</a>	
	</div>
	
	<!-- 소개시작 -->
	<h1 style="text-align: center;">기부니 좋아 소개</h1>
	<br/>
	
	<h5 style="text-align: center;"> 기부니 좋아는 블록체인을 통해 신뢰할수 있는 투명한 기부를 위해 노력합니다.</h5>
	<br/>
	
	<div class="DonateLike_Card_Center">
		<h6> 후원금 이렇게 사용됩니다.</h6>
		<div class="card-deck mb-3 " id="div_left" >
			<a href="" style="margin-left: 10px;">
				<div class="card mb-4 scale" >
						<img class="card-img-top" src="" style= "height: 280px; width: 350px;"/>
						<p class="card-header" style= "width: 350px; text-align: center; background:white;">
							<span style="color:black; text-decoration: none;">aaaaaaaaa</span><br/>
							<span style="color:black; text-decoration: none;">aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</span><br/>
						</p>
				</div>		
			</a>
			<a href="" style="margin-left: 10px;">
				<div class="card mb-4 scale" >
						<img class="card-img-top" src="" style= "height: 280px; width: 350px;"/>
						<p class="card-header" style= "width: 350px; text-align: center; background:white;">
							<span style="color:black; text-decoration: none;">aaaaaaaaa</span><br/>
							<span style="color:black; text-decoration: none;">aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</span><br/>
						</p>
				</div>		
			</a>
			<a href="" style="margin-left: 10px;">
				<div class="card mb-4 scale" >
						<img class="card-img-top" src="" style= "height: 280px; width: 350px;"/>
						<p class="card-header" style= "width: 350px; text-align: center; background:white;">
							<span style="color:black; text-decoration: none;">aaaaaaaaa</span><br/>
							<span style="color:black; text-decoration: none;">aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</span><br/>
						</p>
				</div>		
			</a>
			<a href="" style="margin-left: 10px;">
				<div class="card mb-4 scale" >
						<img class="card-img-top" src="" style= "height: 280px; width: 350px;"/>
						<p class="card-header" style= "width: 350px; text-align: center; background:white;">
							<span style="color:black; text-decoration: none;">aaaaaaaaa</span><br/>
							<span style="color:black; text-decoration: none;">aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</span><br/>
						</p>
				</div>		
			</a>
			<a href="" style="margin-left: 10px;">
				<div class="card mb-4 scale" >
						<img class="card-img-top" src="" style= "height: 280px; width: 350px;"/>
						<p class="card-header" style= "width: 350px; text-align: center; background:white;">
							<span style="color:black; text-decoration: none;">aaaaaaaaa</span><br/>
							<span style="color:black; text-decoration: none;">aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</span><br/>
						</p>
				</div>		
			</a>
		</div>
	</div>
	
	<jsp:include page="bar/footer.jsp"></jsp:include>	
</body>
<script src='resources/js/jquery-3.3.1.min.js'></script>
<script src="resources/js/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</html>