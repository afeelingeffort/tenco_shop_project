<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="/WEB-INF/view/layout/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet href=" https://fonts.	`googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0 " />
<link href='https://fonts.googleapis.com/css?family=Noto Sans' rel='stylesheet'>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
form {
	display: flex;
	align-items: center;
	flex-direction: column;
}

body {
	font-family: 'Noto Sans';
}

}
.search-container {
	display: flex;
	justify-content: center;
}

.search {
	width: 770px;
	padding-bottom: 16px;
	border-bottom: 3px solid #000;
	margin: 30px;
}

.search input {
	display: flex;
	border: none;
	width: 770px;
	line-height: 29px;
	background-color: #eee;
	font-size: 20px;
	background-color: transparent;
}

.product {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
}

.product-search {
	display: flex;
	flex-direction: column;
	margin: 10px;
	width: 280px;
}

img {
	width: 280px;
	background-color: #eee;
	size: 50px;
	border-radius: 10px;
}

p {
	width: 280px;
	height: 15px;
	font-size: 13px;
}

.page {
	margin-top: 100px;
	display: flex;
	justify-content: center;
	text-align: center;
	padding-bottom: 200px;
}

.page p {
	font-size: 15px;
	color: black;
	width: 50px;
}
</style>
</head>
<body>
	<div class="search-container">
		<form action="/product/search-proc" method="get">
			<div class="search">
				<input type="text" id="search" name="title" placeholder="브랜드명,모델명 등"> <input type="hidden" id="search" name="begin" value="0"> <input type="hidden" id="search" name="range"
					value="8"> <input type="submit" value="검색">
			</div>
		</form>
	</div>
	<div class="product">
		<c:forEach var="list" items="${list}">
			<div class="product-search">
				<a href="/info-prod/${list.id}"><img class="img" src="/static/images/prodImages/${list.imgRoute}" /></a>
				<p>${list.engName}</p>
				<p>${list.korName}</p>
				<p>${list.releasePrice}원</p>
			</div>
		</c:forEach>
	</div>
	<div class="page">
		<c:forEach var="i" begin="1" end="${page}">
			<a href="/shopCategorySelect?type=${type}&begin=${8*(i-1)}&range=8"><p>${i}</p></a>
		</c:forEach>
	</div>
</body>
</html>
