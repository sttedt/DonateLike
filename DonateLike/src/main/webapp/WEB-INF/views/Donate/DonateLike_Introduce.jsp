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
	<link rel="stylesheet" href="resources/css/ui.intro.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
</head>
<body>
	<!-- 상단바 -->
	<jsp:include page="../bar/topbar.jsp"></jsp:include>
	<!-- 목차? 상위목록 표시 -->
	<div style="text-align: right; margin-right: 20px">
		<a href="main" style="color:black; text-decoration: none;">Home</a> > <a href="DonateLike_Introduce" style="color:black; text-decoration: none;">기부니 좋아 소개</a>	
	</div>
	
	<!-- 소개시작 -->
	<br/>
	
	<div class="DonateLike_Card_Center">
		<h1 style="text-align: center;" id="intro">기부니 좋아 소개</h1>
		<!-- sub contents s -->
		<div class="sub_contents wide">
			<div class="about_wrapper">
				<div class="hd">
					<h5 style="text-align: center;" id="1line_content"> 기부니 좋아는 블록체인을 통해 신뢰할수 있는 투명한 기부를 위해 노력합니다.</h5>
				</div>
				<div class="sec_about_list">
					<ul style=" list-style:none;">
						<li>
							<div class="item">
								<img src="resources/img/img_about_01.jpg"/>
								<strong>신뢰받는 밀알</strong>
								<p>투명성과 전문성 , 순수성, 나눔 확산</p>
							</div>
						</li>
						<li>
							<div class="item">
								<img src="resources/img/img_about_02.jpg"/>
								<strong>선도하는 밀알</strong>
								<p>지속적 연구, 열정적 도전, 새로운 역할 수행</p>
							</div>
						</li>
						<li>
							<div class="item">
								<img src="resources/img/img_about_03.jpg"/>
								<strong>협력하는 밀알</strong>
								<p>국내외 사회적약자의 권리와 자립</p>
							</div>
						</li>
					</ul>
				</div>
				<div class="about_banner"></div>
				<div class="sec_vision">
					<div class="item">
						<div class="hd">
							<h3>MISSION</h3>
						</div>
						<div class="desc_img">
							<img src=" " alt="Miral mission"/>
							<p class="blind">
								기독교　정신을 바탕으로
								소외된 이웃과 더불어 살아가는
								완전한 사회통합을 이룬다.
							</p>
						</div>
					</div>
					<div class="item">
						<div class="hd">
							<h3>VISION</h3>
						</div>
						<div class="desc_img">
							<img src="" alt="Miral Vision"/>
							<p class="blind">
								생애주기별, 자립복지, 장애통합 : Glocal(Global + Local의 합성어) 모델구현
							</p>
						</div>
					</div>
				</div>
				<div class="sec_spirit">
					<div class="hd">
						<h3>밀알정신</h3>
					</div>
					<div class="spirit_list">
						<ul style=" list-style:none;">
							<li>
								<span class="sp_about"></span>
								<strong>겸손</strong>
								<p>소외되고 고통 받는 사람을<br />
									섬기기 위해 자기를 비우고 낮춥니다.</p>
							</li>
							<li>
								<span class="sp_about"></span>
								<strong>진실</strong>
								<p>진실하고 공정하고 투명하게<br />
									봉사합니다.</p>
							</li>
							<li>
								<span class="sp_about"></span>
								<strong>존중</strong>
								<p>사람을 소중하게 여기고<br />
									자기계발과 환경변화를 추구합니다.</p>
							</li>
							<li>
								<span class="sp_about"></span>
								<strong>옹호</strong>
								<p>사회적 약자의 권익을<br />
									옹호하고 대변합니다.</p>
							</li>
							<li>
								<span class="sp_about"></span>
								<strong>사랑</strong>
								<p>희생과 인내로 나눔을<br />
									실천합니다.</p>
							</li>
						</ul>
					</div>
				</div>
				<div class="sec_ci">
					<div class="cont_ci">
						<div class="ci_area">
							<img src="" alt="밀알복지재단" />
						</div>
						<div class="ci_info">
							<ul style=" list-style:none;">
								<li>
									<span class="color"></span>
									<strong>온 지구에 가득함</strong>
									<p>장애인을 교회와 사회에 바로 알리는 계몽</p>
								</li>
								<li>
									<span class="color"></span>
									<strong>그리스도의 정신</strong>
									<p>뜨거운 마음으로 사랑을 실천하는 영성</p>
								</li>
								<li>
									<span class="color"></span>
									<strong>사회복지</strong>
									<p>순결한 마음으로 행하는 봉사</p>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--// sub contents e -->
	</div>
	
	<c:if test="${sessionScope.SID eq 'admin' }">
		<a href="DonateLike_Introduce_update" class="btn btn-dark" >수정</a>
		<a href="#" class="btn btn-dark" >삭제</a>
	</c:if>
	
	<jsp:include page="../bar/footer.jsp"></jsp:include>	
</body>
<script src='resources/js/jquery-3.3.1.min.js'></script>
<script src="resources/js/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</html>