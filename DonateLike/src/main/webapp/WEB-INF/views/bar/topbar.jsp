<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
		<div style="text-align: center; background-color: #F2F2F2; height: 130px" >
			<div style="text-align : right; font-size: 10pt; background-color: #D8D8D8; height : 22px;" >
				<c:choose>
				    <c:when test="${sessionScope.SID eq 'admin'}">
						<span>
							<a class="topMember" href="#" style="text-decoration: none;">관리자 님</a> &nbsp;
							<a class="topMember" href="logout">로그아웃</a> &nbsp;
							<a class="topMember" href="taker_list">수혜자 관리</a> &nbsp;
							<a class="topMember" href="DonateLike_Board">문의게시판</a>&nbsp;
						</span> 
				    </c:when>
				    <c:when test="${sessionScope.SID ne null}">
						<span>
							<a class="topMember" href="#">${sessionScope.SID} 님</a>&nbsp;
							<a class="topMember" href="profile_check">개인정보 수정</a>&nbsp;
							<a class="topMember" href="logout">로그아웃</a>&nbsp;
							<a class="topMember" href="DonateLike_Board">문의하기</a>&nbsp;
						</span> 
				    </c:when>
				    <c:otherwise>
					    <span>
							<a class="topMember" href="login">로그인</a>&nbsp;
							<a class="topMember" href="join">회원가입</a>&nbsp; 
							<a class="topMember" href="DonateLike_Board">문의하기</a>&nbsp;
						</span> 
				    </c:otherwise>
				</c:choose>
			</div>
			<!-- 메인베너 -->
			<!-- 드롭다운 메뉴 -->
				<div class="menubar" style="margin-left: 9%; font-size:12pt;">
					<c:choose >
					    <c:when test="${sessionScope.SID eq 'admin'}">
							<ul style="margin-top: 30px; margin-bottom: 10px; width: 100%">
							    <a style="color: black; font-size:28pt; text-decoration: none; background-color: #F2F2F2; float: left;" href="main">
										<i class="fas fa-puzzle-piece"> 기부니 좋아</i>
								</a>
								<li style="margin-left: 16%;"><a href="adminMain">홈페이지 관리</a>
									<ul>
										<li><a href="DonateLike_Introduce_update">소개 수정</a></li>
										<li><a href="DonateLike_TargetSelection_insert">대상 선정 등록</a></li>
										<li><a href="DonateLike_TargetSelection">대상 선정</a></li>
									</ul>
								</li>
								<li><a href="#">수혜자 관리</a>
									<ul>
										<li><a href="taker_insert">수혜자 등록</a></li>
										<li><a href="taker_list">수혜자 목록</a></li>
									
									</ul>
								</li>
								<li>
									<a href="#" id="current">후원금 관리</a>
									<ul>
										<li><a href="admin_Donate_detail">후원 내역</a></li>
									</ul>
								</li>
								<li><a href="DonateLike_Board">문의 사항</a>
								</li>
							</ul>
					    </c:when>
					    <c:otherwise>
							<ul style="margin-top: 10px; margin-bottom: 10px; width: 100%">
								    <a style="color: black; font-size:28pt; text-decoration: none; background-color: #F2F2F2; float: left;" href="main">
										<i class="fas fa-puzzle-piece"> 기부니 좋아</i>
									</a>
								<li style="margin-left: 16%;"><a href="#">기부니 좋아 소개</a>
									<ul>
										<li><a href="DonateLike_Introduce">사이트소개</a></li>
										<li><a href="DonateLike_purpose">목표와 비전</a></li>
									</ul>
								</li>
								<li>
									<a href="#" id="current">후원하기</a>
									<ul>
										<li><a href="DonateLike_TargetSelection">대상선정</a></li>
										<li><a href="Donate_apply">정기후원</a></li>
										<li><a href="Donate_apply">일시후원</a></li>
									</ul>
								</li>
								<li><a href="DonateLike_Board">Q & A</a>
								</li>
								<li><a href="#">MyPage</a>
									<ul>
								
										<li><a href="Donate_detail">기부상세내역</a></li>
										<li><a href="#">기부 영수증</a></li>
									</ul>
								</li>
							</ul>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		
		
		
		
		
		
		
		
		
		
		
		
		

		