<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<head>
<meta charset="UTF-8">
	<title>DonateLike</title>
	<link rel="stylesheet" href="resources/css/bootstrap.css" />
	<link rel="stylesheet" href="resources/css/donateLike.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
	<!-- 전체 임시 css -->
	<style type="text/css">
	
	</style>
</head>
<body>
	<!-- 상단바 -->
	<jsp:include page="../bar/topbar.jsp"></jsp:include>

		
	<div class="container" style="max-width: 540px">
		<div>
			<h3 style="text-align: center;">수혜자 수정</h3>
		</div>
		<form method="post">
			<input type="hidden" name="TI_NO" class="form-control" value="${taker_update.TI_NO}"/>
				
				이름 : <input type="text" name="TI_NAME" value="${taker_update.TI_NAME}" class="form-control"><br>
					<div align="right">
						<span id="nameMsg"></span>
					</div>
			
				번호 : <input type="text" name="TI_PHONE" value="${taker_update.TI_PHONE}" class="form-control"><br>
			
				생년월일 : <input type="text" name="TI_BIRTH" value="${taker_update.TI_BIRTH}" class="form-control"><br>
			
				주소 : <input type="text" name="TI_ADDRESS" value="${taker_update.TI_ADDRESS}" class="form-control" ><br>
			
				이메일 : <input type="email" name="TI_EMAIL" value="${taker_update.TI_EMAIL}" class="form-control"><br> 
			
				카테고리 : 
			<div class="form-group input-group">
			
				<select name="CATE_NO" id="CATE_NO" class="form-control" >
					<option value="1">국내 장애아동</option>
					<option value="2">국내 위기가정</option>
					<option value="3">국내 독거노인</option>
					<option value="4">국내 수재민</option>
				 </select>
				<label>&nbsp;</label> 
			</div>
		
			<input type="submit" class="btn btn-dark" value="수혜자 수정하기">
		</form>
			<input type="button" class="btn btn-dark" value="수혜자 목록" onclick="history.back(-1)"/>
	</div>


	<!-- 하단바 -->
	<jsp:include page="../bar/footer.jsp"></jsp:include>	
</body>
<script src='resources/js/jquery-3.3.1.min.js'></script>
<script src="resources/js/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	
	<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	$('input[name=TI_ADDRESS]').on('click', function() {
		new daum.Postcode({
			oncomplete : function(data) {
				$('input[name=TI_ADDRESS]').val(data.jibunAddress)
			}
		}).open();
	})
	
	$(function() {
		$("#name").keyup(function() {
			checkName(event);
		});
		
	});
	
	function ErrorMsg(obj, msg) {
		obj.attr("class", "red");
		obj.html(msg);
	}

	function SuccessMsg(obj, msg) {
		obj.attr("class", "success");
		obj.html(msg);
	}
	function checkName(event) {
		regexp = /[a-z0-9]|[ \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"'\\]/g;
		//v = $(this).val();

		var Msg = $('#nameMsg');
		var name = $('#name').val();

		if (name == "") {
			ErrorMsg(Msg, "필수입니다.");
			$("#nameMsg").css("color", "red");
			return false;
		}
		if (regexp.test(name)) {
			ErrorMsg(Msg, "한글만 입력가능합니다.");
			$("#nameMsg").css("color", "red");
			$('#name').val("");
			//$(this).val(name.replace(regexp,''));
			return false;
		} else if (name != "") {
			SuccessMsg(Msg, "OK!");
			$("#nameMsg").css("color", "green");
			return true;
		}
		return true;
	}
		</script>
