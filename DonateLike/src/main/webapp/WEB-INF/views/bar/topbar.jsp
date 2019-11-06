<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
		<div style="text-align: center;">
			<a style="color: black; font-size:26pt; text-decoration: none; display: inline-block; margin-top: 10px; margin-left: 50px;" href="main">
			<i class="fas fa-puzzle-piece"> 기부니 좋아</i></a>
			<a class="nav-link fas fa-user" href="login" id="dropLogin" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false" style="float: right; font-size: 30px; margin-top: 10px; margin-right: 50px; text-decoration:none; color: #000;">
			</a>
			<div class="dropdown-menu" aria-labelledby="dropLogin">
				<a class="dropdown-item" href="login">LOGIN</a> 
				<a class="dropdown-item" href="join">JOIN</a> 
				<a class="dropdown-item" href="board">Q & A</a> 
			</div>
			<div class="menubar" align="center">
				<ul>
					<li><a href="#">소개</a>
						<ul>
							<li><a href="#">사이트소개</a></li>
							<li><a href="#">목표와 비전</a></li>
						</ul>
					</li>
					<li>
						<a href="#" id="current">후원하기</a>
						<ul>
							<li><a href="#">대상선정</a></li>
							<li><a href="#">정기후원</a></li>
							<li><a href="#">일시후원</a></li>
						</ul>
					</li>
					<li><a href="#">Q & A</a>
					</li>
					<li><a href="#">MyPage</a>
						<ul>
							<li><a href="#">개인정보 수정</a></li>
							<li><a href="#">기부상세내역</a></li>
							<li><a href="#">기부 영수증</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<hr/>
		