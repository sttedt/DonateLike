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
		<div class="container" style="width: 500px">
			<form action="DonateLike_TargetSelection_update" method="post" enctype='multipart/form-data'>
			<input type="hidden" name="TS_NO" value="${DTSelectionOne.TS_NO}">
				<div>
					<h3 style="text-align: center; margin-top: 20px;">대상선정추가</h3>
					<hr>
				</div>
				대상선정 아래 표시 내용 : 
				<input type="text"	name="TS_content" class="form-control" value="${DTSelectionOne.TS_CONTENT}"/> <br />
				대상선정 상세 표시 내용 : 
				<textarea rows="6" name="TS_detail_content" class="form-control" />${DTSelectionOne.TS_DETAIL_CONTENT}</textarea><br />  
				분야 수정: 
				<select name="CATE_NO" id="CATE_NO" class="form-control">
					<option value="1">국내 장애아동</option>
					<option value="2">국내 위기가정</option>
					<option value="3">국내 독거노인</option>
					<option value="4">국내 수재민</option>
				 </select>
				사진 : <br>
				
				<p class='row' style='margin-left:0;'><input type='file' name='file'></p>
				
				<div id="file_area"></div>
				<div id="image_area"></div>
				
				<input type="submit" value="글쓰기" class="btn btn-primary" />
			</form>
		</div>
		
	<!-- 하단바 -->
	<jsp:include page="../bar/footer.jsp"></jsp:include>	
</body>
<script src='resources/js/jquery-3.3.1.min.js'></script>
<script src="resources/js/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script>

	function image_preview() {
		$('#image_area').empty()
		$.each($('input[type=file]'), function(idx, item) {
			readURL(item)
		})
	}
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				var html = "<div style='background:url("
						+ e.target.result
						+ ");background-size:100px;height:100px;width:100px;display:inline-block;background-repeat:no-repeat'></div>"
				$('#image_area').append(html)
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	$('#add_img').on('click',function() {
		$('#file_area').append(file_html)	
	})
	$(document).on('change', 'input[type=file]', function() {
		image_preview()
	})
</script>
</html>