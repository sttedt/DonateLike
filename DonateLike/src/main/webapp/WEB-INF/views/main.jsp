<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="resources/css/bootstrap.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
	<style type="text/css">
		.menubar{
		border:none;
		border:0px;
		margin:0px;
		padding:0px;
		font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans", "Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica, sans-serif;
		font-size:14px;
		font-weight:bold;
		}
		
		.menubar ul{
		height:50px;
		list-style:none;
		margin:0;
		padding:0;
		display: table;
		}
		
		.menubar li{
		float:left;
		padding:0px;
		}
		
		.menubar li a{
		color:#000;
		display:block;
		font-weight:normal;
		line-height:50px;
		margin:0px;
		padding:0px 25px;
		text-align:center;
		text-decoration:none;
		}
		
		.menubar li a:hover, .menubar ul li:hover a{
		background: #ccc;
		color:#FFFFFF;
		text-decoration:none;
		}
		
		.menubar li ul{
		background: #ccc;
		display:none; /* 평상시에는 드랍메뉴가 안보이게 하기 */
		height:auto;
		padding:0px;
		margin:0px;
		border:0px;
		position:absolute;
		width:200px;
		z-index:200;
		/*top:1em;
		/*left:0;*/
		}
		
		.menubar li:hover ul{
		display:block; /* 마우스 커서 올리면 드랍메뉴 보이게 하기 */
		}
		
		.menubar li li {
		background: #ccc;
		display:block;
		float:none;
		margin:0px;
		padding:0px;
		width:200px;
		}
		
		.menubar li:hover li a{
		background:none;
		}
		
		.menubar li ul a{
		display:block;
		height:50px;
		font-size:12px;
		font-style:normal;
		margin:0px;
		padding:0px 10px 0px 15px;
		text-align:left;
		}
		
		.menubar li ul a:hover, .menubar li ul li:hover a{
		background: rgb(71,71,71);
		border:0px;
		color:#ffffff;
		text-decoration:none;
		}
		
		.menubar p{
		clear:left;
		}
	</style>
</head>
<body>
	<jsp:include page="bar/topbar.jsp"></jsp:include>
	
	
</body>
<script src='resources/js/jquery-3.3.1.min.js'></script>
<script src="resources/js/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</html>