<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>향기제작소</title>
<script src="js/jquery-3.3.1.min.js"></script>
<script>      
$(function(){
	$(".login_alt").on("click", function(){
		alert("로그인 후 이용해주시길 바랍니다.");
	});	
});
</script>
</head>
<body>
	<div id="wrap">
		<div class="header">
			<div class="logo">
				<a href="index"><img src="images/logo.png"></a>
			</div>
			<div class="firstbox">
				<ul class="first">
					<c:choose>
						<c:when
							test="${sessionScope.user eq null and sessionScope.admin eq null}">
							<li><a href="terms">JOIN</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="mypage">MYPAGE</a></li>
						</c:otherwise>
					</c:choose>
					<li>|</li>
					<c:choose>
						<c:when
							test="${sessionScope.user eq null and sessionScope.admin eq null}">
							<li><a href="login">LOGIN</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="logout">LOGOUT</a></li>
						</c:otherwise>
					</c:choose>
					<li>|</li>
					<li><a href="index">HOME</a></li>
				</ul>
			</div>

			<ul class="second">
				<li><a href="review">REVIEW</a></li>
				<c:choose>
					<c:when test="${sessionScope.user eq null and sessionScope.admin eq null}">
						<li><a href="login" class="login_alt">MAN</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="man">MAN</a></li>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${sessionScope.user eq null and sessionScope.admin eq null}">
						<li><a href="login" class="login_alt">WOMAN</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="woman">WOMAN</a></li>
					</c:otherwise>
				</c:choose>
				<li><a href="brand">BRAND</a></li>
			</ul>
		</div>