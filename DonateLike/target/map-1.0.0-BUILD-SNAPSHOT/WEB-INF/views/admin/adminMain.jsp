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
	<jsp:include page="../bar/topbar.jsp"></jsp:include>
	
		<div class="DonateLike_Card_Center" style="max-width: 1220px;">
		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1">후원 내역</li>
			<li class="tab-link" data-tab="tab-2">문의 사항</li>
		</ul>
		<!-- 후원 내역 -->
		<div id="tab-1" class="tab-content current">
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
			</div>
		</div>
		<!-- 문의 사항 -->
		<div id="tab-2" class="tab-content">
			<div class="card-deck mb-3 " id="div_left" >
				<a href="" style="margin-left: 10px;">
					<div class="card mb-4 scale" >
							<img class="card-img-top" src="" style= "height: 280px; width: 350px;"/>
							<p class="card-header" style= "width: 350px; text-align: center; background:white;">
								<span style="color:black; text-decoration: none;">bbbbbbbbbbbbbbbbb</span><br/>
								<span style="color:black; text-decoration: none;">bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb</span><br/>
							</p>
					</div>		
				</a>
			</div>
		</div>
	</div>
	
	
	<!-- 하단바 -->
	<jsp:include page="../bar/footer.jsp"></jsp:include>	
</body>
<script src='resources/js/jquery-3.3.1.min.js'></script>
<script src="resources/js/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
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