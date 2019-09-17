<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>

<link rel="stylesheet" href="css/member.css">
<link rel="stylesheet" href="css/common.css">
<script src="js/login.js"></script>

<div class="lg_textbox">
	<div class="login">LOGIN</div>
	<div class="login_text">향기제작소에 오신걸 환영합니다. 아이디와 비밀번호를 입력해주시길 바랍니다.</div>
</div>
<div class="login_box1" style="border: 1px solid; padding: 10px;">
	<form id="login_ok" action="login" method="post"
		onsubmit="return false">

		<div class="btn">
			<img src="images/loginbtn.png" name="btn" alt="btn">
		</div>
		<ul>
			<li><label for="id">아이디</label> <input type="text" id="id"
				name="id" size="35" class="id" autofocus></li>
			<li><label for="pw">비밀번호</label> <input type="password" id="pw"
				name="pw" size="35" autofocus></li>
			<input type="submit" value="LOGIN" class="login_btn"
				onclick="login_ok()">
		</ul>
		<hr / class="hr">
		<div class="login_text2">
			아직 회원이 아니시라면 ? <a href="terms">회원가입 하러가기</a>
		</div>
	</form>
</div>
</body>
</html>