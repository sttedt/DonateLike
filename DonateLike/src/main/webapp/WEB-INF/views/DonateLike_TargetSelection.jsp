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
	<!-- 전체 임시 css -->
	<style type="text/css">
		
	</style>
</head>
<body>
	<!-- 상단바 -->
	<jsp:include page="bar/topbar.jsp"></jsp:include>
		<!-- 목차? 상위목록 표시 -->
	<div style="text-align: right;  margin-right: 20px">
		<a href="main" style="color:black; text-decoration: none;">Home</a> > <a href="DonateLike_TargetSelection" style="color:black; text-decoration: none;">대상 선정</a>	
	</div>
	
	<h1 style="text-align: center;">대상 선정</h1>
	<br/>
	
	<h5 style="text-align: center;"> 기부가 필요한 우리 이웃들에게 희망을 선물해주세요!</h5>
	<br/>
	
	
	<div class="DonateLike_Card_Center" style="max-width: 1220px;">
		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1">전체</li>
			<li class="tab-link" data-tab="tab-2">국내 장애아동</li>
			<li class="tab-link" data-tab="tab-3">국내 위기가정</li>
			<li class="tab-link" data-tab="tab-4">국내 독거노인</li>
			<li class="tab-link" data-tab="tab-5">국내 수재민</li>
		</ul>
		<!-- 전체 -->
		<div id="tab-1" class="tab-content current">
			<div class="card-deck mb-3 " id="div_left" >
				<c:forEach items="${s_list}" var="map">
						<a href="DonateLike_TargetSelection_One?TS_NO=${map.TS_NO}" style="margin-left: 10px;">
							<div class="card mb-4 scale" >
								<img class="card-img-top" src="http://sttedt.dothome.co.kr/img/${map.TS_IMG}" style= "height: 280px; width: 350px;"/>
								<p class="card-header" style= "width: 350px; text-align: center; background:white;">
									<span style="color:black; text-decoration: none;">${map.TS_CONTENT}</span><br/>
								</p>
							</div>		
						</a>
				</c:forEach>
			</div>
		</div>
		<!-- 국내 장애아동 -->
		<div id="tab-2" class="tab-content">
			<div class="card-deck mb-3 " id="div_left" >
				<c:forEach items="${s_list}" var="map">
					<c:choose >
						<c:when test="${map.CATE_NO eq '1'}">
							<a href="DonateLike_TargetSelection_One?TS_NO=${map.TS_NO}" style="margin-left: 10px;">
								<div class="card mb-4 scale" >
									<img class="card-img-top" src="http://sttedt.dothome.co.kr/img/${map.TS_IMG}" style= "height: 280px; width: 350px;"/>
									<p class="card-header" style= "width: 350px; text-align: center; background:white;">
										<span style="color:black; text-decoration: none;">${map.TS_CONTENT}</span><br/>
									</p>
								</div>		
							</a>
						</c:when>
					</c:choose>
				</c:forEach>
			</div>
		</div>
		<!-- 국내 위기가정 -->
		<div id="tab-3" class="tab-content">
			<div class="card-deck mb-3 " id="div_left" >
				<c:forEach items="${s_list}" var="map">
					<c:choose >
						<c:when test="${map.CATE_NO eq '2'}">
							<a href="DonateLike_TargetSelection_One?TS_NO=${map.TS_NO}" style="margin-left: 10px;">
								<div class="card mb-4 scale" >
									<img class="card-img-top" src="http://sttedt.dothome.co.kr/img/${map.TS_IMG}" style= "height: 280px; width: 350px;"/>
									<p class="card-header" style= "width: 350px; text-align: center; background:white;">
										<span style="color:black; text-decoration: none;">${map.TS_CONTENT}</span><br/>
									</p>
								</div>		
							</a>
						</c:when>
					</c:choose>
				</c:forEach>
			</div>
		</div>
		<!-- 국내 독거노인 -->
		<div id="tab-4" class="tab-content">
			<div class="card-deck mb-3 " id="div_left" >
				<c:forEach items="${s_list}" var="map">
					<c:choose >
						<c:when test="${map.CATE_NO eq '3'}">
							<a href="DonateLike_TargetSelection_One?TS_NO=${map.TS_NO}" style="margin-left: 10px;">
								<div class="card mb-4 scale" >
									<img class="card-img-top" src="http://sttedt.dothome.co.kr/img/${map.TS_IMG}" style= "height: 280px; width: 350px;"/>
									<p class="card-header" style= "width: 350px; text-align: center; background:white;">
										<span style="color:black; text-decoration: none;">${map.TS_CONTENT}</span><br/>
									</p>
								</div>		
							</a>
						</c:when>
					</c:choose>
				</c:forEach>
			</div>
		</div>
			<!-- 국내 수재민 -->
		<div id="tab-5" class="tab-content">
			<div class="card-deck mb-3 " id="div_left" >
				<c:forEach items="${s_list}" var="map">
					<c:choose >
						<c:when test="${map.CATE_NO eq '4'}">
							<a href="DonateLike_TargetSelection_One?TS_NO=${map.TS_NO}" style="margin-left: 10px;">
								<div class="card mb-4 scale" >
									<img class="card-img-top" src="http://sttedt.dothome.co.kr/img/${map.TS_IMG}" style= "height: 280px; width: 350px;"/>
									<p class="card-header" style= "width: 350px; text-align: center; background:white;">
										<span style="color:black; text-decoration: none;">${map.TS_CONTENT}</span><br/>
									</p>
								</div>		
							</a>
						</c:when>
					</c:choose>
				</c:forEach>
			</div>
		</div>
	</div>
	
	<!-- 하단바 -->
	<jsp:include page="bar/footer.jsp"></jsp:include>	
</body>
<script src='resources/js/jquery-3.3.1.min.js'></script>
<script src="resources/js/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function(){
	   
	  $('ul.tabs li').click(function(){
	    var tab_id = $(this).attr('data-tab');
	 
	    $('ul.tabs li').removeClass('current');
	    $('.tab-content').removeClass('current');
	 
	    $(this).addClass('current');
	    $("#"+tab_id).addClass('current');
	  })
	 
	})
</script>
</html>