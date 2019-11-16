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
		
		.circles {
			display: inline-block;
		    width: 160px;
		    height: 160px;
		    border-radius: 160px;
		    background: #ffffff url(../images/main/icon_business.png)no-repeat;
		}
	
	</style>
	
	<script>
		$(function() {
			$('.owl-carousel').owlCarousel({
			    items:1,
			    lazyLoad:true,
			    loop:true,
			    margin:10,
			    autoplay:true,
			    autoplayTimeout:5000,
			    autoplayHoverPause:true
			    /* loop:true,
			    margin:10,
			    autoplay:true,
			    autoplayTimeout:1000,
			    autoplayHoverPause:true */
			});
		});
	</script>
	
</head>
<body>
	<!-- 상단바 -->
	<jsp:include page="bar/topbar.jsp"></jsp:include>
	
	<!--- 콘텐츠 --->
	
	<!-- 슬라이드 -->
	<div class="owl-carousel owl-theme">
    <img class="owl-lazy" data-src="http://sttedt.dothome.co.kr/img/main_slider_01.jpg"  alt="">
    <img class="owl-lazy" data-src="http://sttedt.dothome.co.kr/img/main_slider_02.jpg"  alt="">
    <img class="owl-lazy" data-src="http://sttedt.dothome.co.kr/img/main_slider_03.jpg"  alt="">
    <img class="owl-lazy" data-src="http://sttedt.dothome.co.kr/img/main_slider_04.jpg"  alt="">
    <img class="owl-lazy" data-src="http://sttedt.dothome.co.kr/img/main_slider_05.jpg"  alt="">
	</div><br/><br/>
	
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
        <div class="col-3">
          <div class="card">
            <img src="http://sttedt.dothome.co.kr/img/sub_01.jpg" alt="" />
            <div class="card-body">
              <h5 class="card-title">유산기부 캠페인</h5>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card">
            <img src="http://sttedt.dothome.co.kr/img/sub_02.jpg" alt="" />
            <div class="card-body">
              <h5 class="card-title">라이팅 칠드런 캠페인</h5>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card">
            <img src="http://sttedt.dothome.co.kr/img/sub_03.jpg" alt="" />
            <div class="card-body">
              <h5 class="card-title">결연하면, 달라져요</h5>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card">
            <img src="http://sttedt.dothome.co.kr/img/sub_04.jpg" alt="" />
            <div class="card-body">
              <h5 class="card-title">후원이 처음이신가요?</h5>
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
      <div class="row">
        <div class="col-3">
          <div class="card">
            <img src="http://sttedt.dothome.co.kr/img/sub_01.jpg" alt="" />
            <div class="card-body">
              <h5 class="card-title">유산기부 캠페인</h5>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card">
            <img src="http://sttedt.dothome.co.kr/img/sub_02.jpg" alt="" />
            <div class="card-body">
              <h5 class="card-title">라이팅 칠드런 캠페인</h5>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card">
            <img src="http://sttedt.dothome.co.kr/img/sub_03.jpg" alt="" />
            <div class="card-body">
              <h5 class="card-title">결연하면, 달라져요</h5>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card">
            <img src="http://sttedt.dothome.co.kr/img/sub_04.jpg" alt="" />
            <div class="card-body">
              <h5 class="card-title">후원이 처음이신가요?</h5>
            </div>
          </div>
        </div>
      </div>
    </div><br/><br/>
	
	<!-- 하단바 -->
	<jsp:include page="bar/footer.jsp"></jsp:include>	
</body>

	
</html>