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
	<style type="text/css">
		body{
			margin-top: 100px;
			font-family: 'Trebuchet MS', serif;
			line-height: 1.6
		}
		ul.tabs{
			margin: 0px;
			padding: 0px;
			list-style: none;
		}
		ul.tabs li{
			background: none;
			color: #222;
			display: inline-block;
			padding: 10px 15px;
			cursor: pointer;
		}
		 
		ul.tabs li.current{
			background: #ededed;
			color: #222;
		}
		 
		.tab-content{
			display: none;
			background: #ededed;
			padding: 15px;
		}
		 
		.tab-content.current{
			display: inherit;
		}
	</style>
</head>
<body>
	<!-- 상단바 -->
	<jsp:include page="bar/topbar.jsp"></jsp:include>
	
	<h1 style="text-align: center;">대상 선정</h1>
	<br/>
	
	<h5 style="text-align: center;"> 기부가 필요한 우리 이웃들에게 희망을 선물해주세요!</h5>
	<br/>
	
	<div class="DonateLike_Card_Center">
		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1">메뉴_하나</li>
			<li class="tab-link" data-tab="tab-2">메뉴_둘</li>
			<li class="tab-link" data-tab="tab-3">메뉴_셋</li>
		</ul>
		<!--  첫번째 탭 -->
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
		<!--   두번째 탭 -->
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
				<a href="" style="margin-left: 10px;">
					<div class="card mb-4 scale" >
							<img class="card-img-top" src="" style= "height: 280px; width: 350px;"/>
							<p class="card-header" style= "width: 350px; text-align: center; background:white;">
								<span style="color:black; text-decoration: none;">bbbbbbbbbbbbbb</span><br/>
								<span style="color:black; text-decoration: none;">bbbbbbbbbbbbbbbbbb</span><br/>
							</p>
					</div>		
				</a>
				<a href="" style="margin-left: 10px;">
					<div class="card mb-4 scale" >
							<img class="card-img-top" src="" style= "height: 280px; width: 350px;"/>
							<p class="card-header" style= "width: 350px; text-align: center; background:white;">
								<span style="color:black; text-decoration: none;">bbbbbbbbbbbbbbbbb</span><br/>
								<span style="color:black; text-decoration: none;">bbbbbbbbbbbbbbbbbbbbbbbb</span><br/>
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
								<span style="color:black; text-decoration: none;">bbbbbbbbbbbbbbbbbbbbb</span><br/>
								<span style="color:black; text-decoration: none;">bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb</span><br/>
							</p>
					</div>		
				</a>
			</div>
		</div>
		<!--   세번째 탭 -->
		<div id="tab-3" class="tab-content">
			<div class="card-deck mb-3 " id="div_left" >
				<a href="" style="margin-left: 10px;">
					<div class="card mb-4 scale" >
						<img class="card-img-top" src="" style= "height: 280px; width: 350px;"/>
						<p class="card-header" style= "width: 350px; text-align: center; background:white;">
							<span style="color:black; text-decoration: none;">ccccccccccccccccccccc</span><br/>
							<span style="color:black; text-decoration: none;">cccccccccccccccccccccccccccccccccccccc</span><br/>
						</p>
					</div>		
				</a>
				<a href="" style="margin-left: 10px;">
					<div class="card mb-4 scale" >
						<img class="card-img-top" src="" style= "height: 280px; width: 350px;"/>
						<p class="card-header" style= "width: 350px; text-align: center; background:white;">
							<span style="color:black; text-decoration: none;">ccccccccccccccccccc</span><br/>
							<span style="color:black; text-decoration: none;">ccccccccccccccccccccccccccccccccccccc</span><br/>
						</p>
					</div>		
				</a>
				<a href="" style="margin-left: 10px;">
					<div class="card mb-4 scale" >
						<img class="card-img-top" src="" style= "height: 280px; width: 350px;"/>
						<p class="card-header" style= "width: 350px; text-align: center; background:white;">
							<span style="color:black; text-decoration: none;">cccccccccccccccccc</span><br/>
							<span style="color:black; text-decoration: none;">cccccccccccccccccccccccccccccccccccccc</span><br/>
						</p>
					</div>		
				</a>
				<a href="" style="margin-left: 10px;">
					<div class="card mb-4 scale" >
						<img class="card-img-top" src="" style= "height: 280px; width: 350px;"/>
						<p class="card-header" style= "width: 350px; text-align: center; background:white;">
							<span style="color:black; text-decoration: none;">ccccccccccccccccccccc</span><br/>
							<span style="color:black; text-decoration: none;">ccccccccccccccccccccccccccccccccccccc</span><br/>
						</p>
					</div>		
				</a>
				<a href="" style="margin-left: 10px;">
					<div class="card mb-4 scale" >
						<img class="card-img-top" src="" style= "height: 280px; width: 350px;"/>
						<p class="card-header" style= "width: 350px; text-align: center; background:white;">
							<span style="color:black; text-decoration: none;">ccccccccccccccccccccccc</span><br/>
							<span style="color:black; text-decoration: none;">ccccccccccccccccccccccccccccccccccccccccc</span><br/>
						</p>
					</div>		
				</a>
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