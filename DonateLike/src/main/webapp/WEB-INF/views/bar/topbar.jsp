<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
		<div style="text-align: center;">
			<a style="color: black; font-size:26pt; text-decoration: none; display: inline-block; margin-top: 30px; margin-left: 50px;" href="main">
			<i class="fas fa-puzzle-piece"> 기부니 좋아</i></a>
			<a class="nav-link fas fa-user" href="login" id="dropLogin" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false" style="float: right; font-size: 30px; margin-top: 10px; margin-right: 50px; text-decoration:none; color: #000;">
			</a>

			<c:choose>
			    <c:when test="${sessionScope.SID eq 'admin'}">
			        <div class="dropdown-menu" aria-labelledby="dropLogin">
						<a class="dropdown-item" href="#">관리자 님</a> 
						<a class="dropdown-item" href="logout">로그아웃</a> 
						<a class="dropdown-item" href="board">수혜자 관리</a> 
						<a class="dropdown-item" href="DonateLike_Board">문의게시판</a> 
					</div>
			    </c:when>
			    <c:when test="${sessionScope.SID ne null}">
					<div class="dropdown-menu" aria-labelledby="dropLogin">
						<a class="dropdown-item" href="#">${sessionScope.SID} 님</a> 
						<a class="dropdown-item" href="logout">로그아웃</a> 
						<a class="dropdown-item" href="DonateLike_Board">문의하기</a> 
					</div>
			    </c:when>
			    <c:otherwise>
			        <div class="dropdown-menu" aria-labelledby="dropLogin">
						<a class="dropdown-item" href="login">로그인</a> 
						<a class="dropdown-item" href="join">회원가입</a> 
						<a class="dropdown-item" href="DonateLike_Board">문의하기</a> 
					</div>
			    </c:otherwise>
			</c:choose>
			<!-- 드롭다운 메뉴 -->
			<div class="menubar" align="center">
				<c:choose>
				    <c:when test="${sessionScope.SID eq 'admin'}">
						<ul>
							<li><a href="adminMain">홈페이지 관리</a>
								<ul>
									<li><a href="DonateLike_Introduce">소개 수정</a></li>
									<li><a href="#">대상 선정 수정</a></li>
								</ul>
							</li>
							<li><a href="#">수혜자 관리</a>
								<ul>
									<li><a href="taker_insert">수혜자 등록</a></li>
									<li><a href="DonateLike_purpose">수혜자 수정</a></li>
								</ul>
							</li>
							<li>
								<a href="#" id="current">후원금 관리</a>
								<ul>
									<li><a href="DonateLike_TargetSelection">후원 내역</a></li>
									<li><a href="#">후원</a></li>
								</ul>
							</li>
							<li><a href="DonateLike_Board">문의 사항</a>
							</li>
						</ul>
						
				    </c:when>
				    <c:otherwise>
						<ul>
							<li><a href="#">기부니 좋아 소개</a>
								<ul>
									<li><a href="DonateLike_Introduce">사이트소개</a></li>
									<li><a href="DonateLike_purpose">목표와 비전</a></li>
								</ul>
							</li>
							<li>
								<a href="#" id="current">후원하기</a>
								<ul>
									<li><a href="DonateLike_TargetSelection">대상선정</a></li>
									<li><a href="#">정기후원</a></li>
									<li><a href="#">일시후원</a></li>
								</ul>
							</li>
							<li><a href="DonateLike_Board">Q & A</a>
							</li>
							<li><a href="#">MyPage</a>
								<ul>
									<li><a href="profile_check">개인정보 수정</a></li>
									<li><a href="#">기부상세내역</a></li>
									<li><a href="#">기부 영수증</a></li>
								</ul>
							</li>
						</ul>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<hr/>

		