<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<!-- 	<div  class="fixed-top bg-light"> -->
<!-- 		<div class="flex-column  p03 px-md-4 bg-secondary" style="position: fixed; width:100%; height: 41px;"> -->
<!-- 			<div class="list-inline"> -->
<!-- 				<form style="font-size:12pt; text-align: left;	"> -->
<!-- 					<ul class="list-inline" style="margin-right: 100px; text-align: right;"> -->
<%-- 						<c:if test="${sessionScope.SID eq null}"> --%>
<!-- 							<li class="list-inline-item"> -->
<!-- 								<a class="list-inline-item" href="login" style="color:#fff; text-decoration: none; margin-top:15px;"> 로그인 </a> &nbsp; -->
<!-- 							</li>  -->
<!-- 							<li class="list-inline-item"> -->
<!-- 								<a class="list-inline-item" href="join"  style="color:#fff; text-decoration: none;"> 회원가입 </a>&nbsp; -->
<!-- 							</li> -->
<!-- 							<li class="list-inline-item"> -->
<!-- 								<a class="list-inline-item" href="board"  style="color:#fff; text-decoration: none;"> 문의하기 </a> &nbsp; -->
<!-- 							</li> -->
<%-- 						</c:if> --%>
	
<%-- 						<c:if test="${sessionScope.SID ne null}"> --%>
<!-- 							<li class="list-inline-item"> -->
<%-- 								<a class="list-inline-item" style="color:#fff; text-decoration: none; margin-top:15px;"> ${sessionScope.SNAME} 님</a> &nbsp; --%>
							
<!-- 							<li class="list-inline-item"> -->
<!-- 								<a class="list-inline-item" href="logout"  style="color:#fff; text-decoration: none; "> 로그아웃</a> &nbsp;  -->
							
<!-- 							<li class="list-inline-item"> -->
<!-- 								<a class="list-inline-item" href="profile" style="color:#fff; text-decoration: none;"> 회원정소 </a> &nbsp;  -->
							
<%-- 							<c:if test="${sessionScope.SLEV eq 'ADMIN'}"> --%>
<!-- 							<li class="list-inline-item"> -->
<!-- 								<a class="list-inline-item" href="admin"   style="color:#fff; text-decoration: none;"> 관리자 </a>&nbsp; -->
							
<%-- 							</c:if>  --%>
<!-- 							<li class="list-inline-item"> -->
<!-- 								<a class="list-inline-item" href="board"   style="color:#fff; text-decoration: none;"> 문의하기</a> &nbsp; -->
<%-- 						</c:if> --%>
<!-- 					</ul> -->
<!-- 				</form> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
		<div style="text-align: center;">
			<i class="fas fa-puzzle-piece" style="font-size:26pt;">
				<a style="color: black; font-size:26pt; text-decoration: none; display: inline-block; margin-top: 10px;" href="main">기부니좋아</a>
			</i>
			
			<!-- 드롭다운메뉴 로그인 전 -->
			<a class="nav-link fas fa-user" href="login" id="dropLogin" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false" style="float: right; font-size: 30px; margin-top: 10px; margin-right: 50px; text-decoration:none; ">
			</a>
			<div class="dropdown-menu" aria-labelledby="dropLogin">
				<a class="dropdown-item" href="login">LOGIN</a> 
				<a class="dropdown-item" href="join">JOIN</a> 
				<a class="dropdown-item" href="board">Q & A</a> 
			</div>
			
			
			
			<div align="center" style="margin-top: 10px">
				<a class="list-inline-item" href=""  style="color:black;font-size:13pt;" id="MainDropDown" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> 기부니 조아 소개  </a>
				
				
				<a class="list-inline-item" href=""  style="color:black;font-size:13pt;"id="MainDropDown" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> 후원하기 </a>
				
				
				<a class="list-inline-item" href=""  style="color:black;font-size:13pt;"id="MainDropDown" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> 문의하기 </a>
				
				
				<a class="list-inline-item" href=""  style="color:black;font-size:13pt;"id="MainDropDown" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> mypage </a>
				
				
				<a class="list-inline-item" href=""  style="color:black;font-size:13pt;"id="MainDropDown" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> ------- </a>
				
				<div class="dropdown-menu" aria-labelledby="MainDropDown">
					<a class="dropdown-item" href="login">사이트 소개</a> 
					<a class="dropdown-item" href="join">목표와 비전</a> 
					<a class="dropdown-item" href="login">사이트 소개</a> 
					<a class="dropdown-item" href="join">목표와 비전</a> 
					<a class="dropdown-item" href="login">사이트 소개</a> 
					<a class="dropdown-item" href="join">목표와 비전</a> 
				</div>		
				
			</div>
		</div>
		<hr/>
		