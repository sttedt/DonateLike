<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<html>
<head>
<meta charset="UTF-8">
	<title>DonateLike</title>
	<link rel="stylesheet" href="resources/css/bootstrap.css" />
	<link rel="stylesheet" href="resources/css/donateLike.css?ver=1" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
	<!-- 전체 임시 css -->
	<style type="text/css">
	
	</style>
</head>
<body>
	<!-- 상단바 -->
	<jsp:include page="../bar/topbar.jsp"></jsp:include>
	<!-- 목차? 상위목록 표시 -->
	<div style="text-align: right;  margin-right: 20px">
		<a href="main" style="color:black; text-decoration: none;">Home</a> > <a href="Donate_apply" style="color:black; text-decoration: none;">후원하기</a>	
	</div>
	
	<!-- 게시판글쓰기 시작 -->
	<div class="container">
		<form action="Donate_apply" method = "post">
		<input type="hidden" value="${sessionScope.SID}" name="DT_ID"/>
			<div>
				<h3 style="text-align: center;">
					후원 분야 선택 / 납입 방법
				</h3>
				<hr>
			</div>	
			후원 종류 선택 : 
			<select name="donate_select" class="form-control">
				<option value="Regular_support">정기후원</option>
				<option value="Temporary_support">일시후원</option>
			 </select>
			<br />
			후원 분야 선택 : 
			<select name="taker_class" class="form-control">
				<option value="1">국내 장애 아동</option>
				<option value="2">국내 위기 노인</option>
				<option value="3">국내 독거 가정</option>
				<option value="4">국내 수재민</option>
			</select>
			<br /> 
			후원 금액 입력 : <input type="text" name="donate_price" class="form-control"/>
			<br />
			납부 방법 선택 : 
			<select name="Bank_Transfer" class="form-control">
				<option value="Transfer">직접이체</option>
			</select>
 			<br /> 
			은행 선택 : 
			<select name="Bank_code" class="form-control">
				<option value="sin">신한은행</option>
				<option value="kb">국민은행</option>
				<option value="ibk">기업은행</option>
				<option value="busan">부산은행</option>
				<option value="gyeongnam">경남은행</option>
				<option value="hana">하나은행</option>
				<option value="nh">농협</option>
			</select>
			<br /> 
			계좌 번호 입력 : 
			<input type="text" name="account_number" class="form-control" placeholder=" - 빼고 입력해주세요"/>
			<br/>
			<input type="submit" value="후원하기" class="btn btn-primary"/>
		</form>
	</div>
	
	<!-- 하단바 -->
	<jsp:include page="../bar/footer.jsp"></jsp:include>	
</body>
<script src='resources/js/jquery-3.3.1.min.js'></script>
<script src="resources/js/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</html>