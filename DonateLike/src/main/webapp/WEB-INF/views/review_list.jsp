<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<head>
<meta charset="UTF-8">
	<title>DonateLike</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/donateLike.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
	<!-- 전체 임시 css -->
	<style type="text/css">
	
	</style>
</head>
<body>
	<hr>
	
			<div class="container"  >
	
		<div>
			<h3 style="text-align: left;">리뷰 </h3>
			<br>
		</div>

		<table class="table" id='target'>
		
			<tbody>
				<c:forEach items="${r_list}" var="map" varStatus="status">
					<tr style="font-size: 12px;" >
						<td rowspan="3">${map.DM_ID}</td>
					
						<td>작성시간 : ${map.RE_DATE}</td>
						
					</tr>
					<tr>
						<td>${map.RE_CONTENT}</td>
						<td></td>
					</tr>
				
				</c:forEach>
			</tbody>
		</table>
		
	</div>
	
</body>
<script src='resources/js/jquery-3.3.1.min.js'></script>
<script src="resources/js/popper.min.js"></script>
<script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>
<script>

</script>
