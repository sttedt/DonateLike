<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<html>
<head>
<meta charset="UTF-8">
	<title>DonateLike</title>
	<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
	<link rel="stylesheet" href="resources/css/donateLike.css?ver=1" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css" />
	
	<script src='resources/js/jquery-3.3.1.min.js'></script>
	<script src="resources/js/popper.min.js"></script>
	<script src='resources/js/owl.carousel.min.js'></script>
	<script src='resources/js/bootstrap.min.js'></script>
	<!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script> -->

	<!-- 전체 임시 css -->
	<style type="text/css">
		.customNextBtn, .customPrevBtn {
			position: absolute;
			z-index : 99999;
			font-size : 70px;
			cursor: pointer;
			font-weight: bolder;
			top:41%;
			opacity: 0.5;
		}
		.customNextBtn {left:5%;}
		.customPrevBtn {right:5%;}
		
		.card {
			cursor:pointer;
			transform: scale(1);
			-webkit-transform: scale(1);
			-moz-transform: scale(1);
			-ms-transform: scale(1);
			-o-transform: scale(1);
			transition: all 0.3s ease-in-out;   /* 부드러운 모션을 위해 추가*/
		}
		.card:hover {
			transform: scale(1.21);
			-webkit-transform: scale(1.1);
			-moz-transform: scale(1.1);
			-ms-transform: scale(1.1);
			-o-transform: scale(1.1);
		}
		.img {width:325px; height:280px; overflow:hidden }
		
		.bottomimg {
			background:url("http://sttedt.dothome.co.kr/img/icon_business.png");
			width: 160px;
    		height: 160px;
    		cursor: pointer;
    		border-radius: 160px;
		}
		
		.bottomimg1 {background-position: 0 0;}
		.bottomimg1:hover {
			background-position: 0 100%;
			background-color:green;
		}
		
		.bottomimg2 {background-position: 20% 0;}
		.bottomimg2:hover {
			background-position: 20% 100%;
			background-color:green;
		}
		
		.bottomimg3 {background-position: 40% 0;}
		.bottomimg3:hover {
			background-position: 40% 100%;
			background-color:green;
		}
		
		.bottomimg4 {background-position: 60% 0;}
		.bottomimg4:hover {
			background-position: 60% 100%;
			background-color:green;
		}
		
		.bottomimg5 {background-position: 80% 0;}
		.bottomimg5:hover {
			background-position: 80% 100%;
			background-color:green;
		}
		
		.bottomimg6 {background-position: 100% 0;}
		.bottomimg6:hover {
			background-position: 100% 100%;
			background-color:green;
		}
		
		.text-center {
			cursor: default;
		}
		
	</style>
	
	<script>
		$(function() {
			var owl = $('.owl-carousel');
			owl.owlCarousel({
				items:1,
			    lazyLoad:true,
			    loop:true,
			    margin:10,
			    autoplay:true,
			    autoplayTimeout:5000,
			    autoplayHoverPause:true
			});
			
			$('.customNextBtn').click(function() {
			    owl.trigger('next.owl.carousel');
			})
			$('.customPrevBtn').click(function() {
			    owl.trigger('prev.owl.carousel', [300]);
			})
			
			
		});
	</script>
	
</head>
<body>
	<!-- 상단바 -->
	<jsp:include page="bar/topbar.jsp"></jsp:include>
	
	<!--- 콘텐츠 --->
	
	<!-- 슬라이드 -->
	<div class="dOwl">
		<span class="customNextBtn d-sm-none d-md-none d-lg-block">〈</span>
		<span class="customPrevBtn d-sm-none d-md-none d-lg-block">〉</span>
		<div class="owl-carousel owl-theme">
	    <img class="owl-lazy" data-src="http://sttedt.dothome.co.kr/img/main_slider_01.jpg"  alt="">
	    <img class="owl-lazy" data-src="http://sttedt.dothome.co.kr/img/main_slider_02.jpg"  alt="">
	    <img class="owl-lazy" data-src="http://sttedt.dothome.co.kr/img/main_slider_03.jpg"  alt="">
	    <img class="owl-lazy" data-src="http://sttedt.dothome.co.kr/img/main_slider_04.jpg"  alt="">
	    <img class="owl-lazy" data-src="http://sttedt.dothome.co.kr/img/main_slider_05.jpg"  alt="">
		</div>
	</div>
	<br/><br/>
	
	<div class="col-md-12">
		 <div class="col-md-12">
			<h2 class="text-center">후원 캠페인</h2>
	    </div>
		<div class="col-md-12">
			<p class="text-center">소외된 이웃들을 위해 특별하고 아름다운 사랑을 실천합니다.</p>
		</div>
	</div><br/>
	
	 <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-6 col-sm-6">
          <div class="card">
            <img src="http://sttedt.dothome.co.kr/img/sub_01.jpg" alt="" style="max-height:280px;" />
            <div class="card-body">
              <h5 class="card-title text-center">유산기부 캠페인</h5>
            </div> 
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6">
          <div class="card">
            <img src="http://sttedt.dothome.co.kr/img/sub_02.jpg" alt="" style="max-height:280px;"/>
            <div class="card-body">
              <h5 class="card-title text-center">라이팅 칠드런 캠페인</h5>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6">
          <div class="card">
            <img src="http://sttedt.dothome.co.kr/img/sub_03.jpg" alt="" style="max-height:280px;"/>
            <div class="card-body">
              <h5 class="card-title text-center">결연하면, 달라져요</h5>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6">
          <div class="card">
            <img src="http://sttedt.dothome.co.kr/img/sub_04.jpg" alt="" style="max-height:280px;"/>
            <div class="card-body">
              <h5 class="card-title text-center">후원이 처음이신가요?</h5>
            </div>
          </div>
        </div>
      </div>
    </div><br/><br/>
    
	<div class="col-md-12">
		 <div class="col-md-12">
			<h2 class="text-center">어울림으로 하나되는 세상</h2>
	    </div>
		<div class="col-md-12">
			<p class="text-center">기부니조아 소외된 이웃과 더불어 살아가는 사회를 꿈꿉니다.</p>
		</div>
	</div><br/>    
	 
	<div class="container">
		<div class="row bg-light">
			<div class="bottomimg bottomimg1 rounded-circle">1</div>
			<div class="bottomimg bottomimg2 rounded-circle">2</div>
			<div class="bottomimg bottomimg3 rounded-circle">3</div>
			<div class="bottomimg bottomimg4 rounded-circle">4</div>
			<div class="bottomimg bottomimg5 rounded-circle">5</div>
			<div class="bottomimg bottomimg6 rounded-circle">6</div>
		</div>
	</div>
	
	
	<!-- 하단바 -->
	<jsp:include page="bar/footer.jsp"></jsp:include>
</body>

	
</html>