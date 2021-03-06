<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

		<div style="text-align: center; height: 130px" >
			<!-- 메인베너 -->
			<!-- 드롭다운 메뉴 -->
			<div class="container" style="height: 110px">
				<div style="text-align : right; font-size: 10pt; height : 22px; margin-top: 7px;" >
					<c:choose>
					    <c:when test="${sessionScope.SID eq 'admin'}">
							<span>
								<a class="topMember" href="#" style="text-decoration: none;">관리자 님</a> &nbsp;
								<a class="topMember" href="logout">· 로그아웃</a> &nbsp;
								<a class="topMember" href="taker_list">· 수혜자 관리</a> &nbsp;
								<a class="topMember" href="DonateLike_Board">· 문의게시판</a>&nbsp;
							</span> 
					    </c:when>
					    <c:when test="${sessionScope.SID ne null}">
							<span>
								<a class="topMember" href="#">${sessionScope.SID} 님</a>&nbsp;
								<a class="topMember" href="profile_check">· 개인정보 수정</a>&nbsp;
								<a class="topMember" href="logout">· 로그아웃</a>&nbsp;
								<a class="topMember" href="DonateLike_Board">· 문의하기</a>&nbsp;
							</span> 
					    </c:when>
					    <c:otherwise>
						    <span>
								<a class="topMember" href="login">로그인</a>&nbsp;
								<a class="topMember" href="join"> · 회원가입</a>&nbsp; 
								<a class="topMember" href="DonateLike_Board"> · 문의하기</a>&nbsp;
							</span> 
					    </c:otherwise>
					</c:choose>
					
					</div>
						<nav class="navbar navbar-expand-lg navbar-light" style="padding-top: 10px;">
							<i class="fas fa-puzzle-piece" style="font-size: 60px; color:#298A08;">&nbsp;<a class="navbar-brand" href="main" style="opacity: 0.8; font-size:27pt;">기부니좋아</a></i>
							<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							
							<div class="collapse navbar-collapse" id="navbarNav" style="padding-top: 12px; justify-content: center; margin-left: -70px">
								<div class="menubar">
									<c:choose >
								    	<c:when test="${sessionScope.SID eq 'admin'}">
											<ul class="navbar-nav" style="margin-top: 18px;">
												<li class="nav-item">	
													<a class="nav-link" href="#">홈페이지 관리 <span class="sr-only">(current)</span></a>
													<ul>
														<li><a href="DonateLike_Introduce_update">소개 수정</a></li>
														<li><a href="DonateLike_TargetSelection_insert">대상 선정 등록</a></li>
														<li><a href="DonateLike_TargetSelection">대상 선정</a></li>
													</ul>
												</li>
												<li class="nav-item">
													<a class="nav-link" href="#">수혜자 관리</a>
													<ul>
														<li><a href="taker_insert">수혜자 등록</a></li>
														<li><a href="taker_list">수혜자 목록</a></li>
													</ul>
												</li>
												<li class="nav-item">
													<a class="nav-link" href="#" tabindex="-1" aria-disabled="true">후원금 관리</a>
													<ul>
														<li><a href="admin_Donate_detail">후원 내역</a></li>
													</ul>
												</li>
												<li class="nav-item">
													<a class="nav-link" href="DonateLike_Board">문의 사항</a>
												</li>
												<li class="nav-item">	
													<a class="nav-link" href="#">임시메뉴 <span class="sr-only">(current)</span></a>
													<ul>
														<li><a href="#">임시메뉴 </a></li>
														<li><a href="#">임시메뉴 </a></li>
														<li><a href="#">임시메뉴 </a></li>
													</ul>
												</li>
												<li class="nav-item">	
													<a class="nav-link" href="#">임시메뉴  <span class="sr-only">(current)</span></a>
													<ul>
														<li><a href="#">소개 수정</a></li>
														<li><a href="#">대상 선정 등록</a></li>
														<li><a href="#">대상 선정</a></li>
													</ul>
												</li>
												<li class="nav-item">	
													<a class="nav-link" href="#">임시메뉴 <span class="sr-only">(current)</span></a>
													<ul>
														<li><a href="#">임시메뉴 </a></li>
														<li><a href="#">임시메뉴 </a></li>
														<li><a href="#">임시메뉴 </a></li>
													</ul>
												</li>
												
											</ul>
									    </c:when>
								    <c:otherwise>
											<ul class="navbar-nav" style="margin-top: 18px;">
												<li class="nav-item">	
													<a class="nav-link" href="#">기부니좋아 소개 <span class="sr-only">(current)</span></a>
													<ul>
														<li><a href="DonateLike_Introduce">사이트소개</a></li>
														<li><a href="DonateLike_purpose">목표와 비전</a></li>
													</ul>
												</li>
												<li class="nav-item">
													<a class="nav-link" href="#">후원하기</a>
													<ul>
														<li><a href="DonateLike_TargetSelection">대상선정</a></li>
														<li><a href="Donate_apply">정기후원</a></li>
														<li><a href="Donate_apply">일시후원</a></li>
													</ul>
												</li>
												<li class="nav-item">
													<a class="nav-link" href="DonateLike_Board">문의하기</a>
												</li>
												<li class="nav-item">
													<a class="nav-link" href="#" tabindex="-1" aria-disabled="true">마이페이지</a>
													<ul>
														<li><a href="Donate_detail">기부상세내역</a></li>
														<li><a href="#">기부 영수증</a></li>
													</ul>
												</li>
												<li class="nav-item">	
													<a class="nav-link" href="#">임시메뉴 <span class="sr-only">(current)</span></a>
													<ul>
														<li><a href="#">임시메뉴 </a></li>
														<li><a href="#">임시메뉴 </a></li>
														<li><a href="#">임시메뉴 </a></li>
													</ul>
												</li>
												<li class="nav-item">	
													<a class="nav-link" href="#">임시메뉴 <span class="sr-only">(current)</span></a>
													<ul>
														<li><a href="#">임시메뉴 </a></li>
														<li><a href="#">임시메뉴 </a></li>
														<li><a href="#">임시메뉴 </a></li>
													</ul>
												</li>
												<li class="nav-item">	
													<a class="nav-link" href="#">임시메뉴 <span class="sr-only">(current)</span></a>
													<ul>
														<li><a href="#">임시메뉴 </a></li>
														<li><a href="#">임시메뉴 </a></li>
														<li><a href="#">임시메뉴 </a></li>
													</ul>
												</li>
											</ul>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</nav>
					</div>
				</div>
		
		
		
		
		
		
		
		
		
		

		