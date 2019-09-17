<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>

<link rel="stylesheet" href="css/member.css">
<link rel="stylesheet" href="css/common.css">
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/login.js"></script>

<form name="form" action="information" method="post" onsubmit="return false" id="info_submit">
	<div class="information">
		<img src="images/information.png">
	</div>
	<div class="info">
		<div class="info_text1">
			<span class="star">*</span> 필수 작성
		</div>
		<table frame="hsides" rules="all" class="info_table">
			<tr>
				<td><label for="info_id"><span class="star">*</span> 아이디</label></td>
				<td>
					<input type="text" id="info_id" name="id" class="info_id"
					maxlength="20" minlength="8" autofocus>
					<button type="button" value="check" onclick="loginChk()" id="id_ch" class="check">중복확인</button>
					<div class="info_text2">영문과 숫자를 조합해 8~20자 이내로 입력</div></td>
			</tr>
			<tr>
				<td><label for="info_pw"><span class="star">*</span> 비밀번호</label></td>
				<td>
					<input type="password" id="info_pw" name="pw" maxlength="20" minlength="8" class="info_pw" autofocus>
					<div class="info_text2">8~20자 이내로 입력</div>
				</td>
			</tr>
			<tr>
				<td><label for="info_pwch"><span class="star">*</span> 비밀번호 확인</label></td>
				<td><input type="password" id="info_pwch" name="pwch" maxlength="20" class="info_pwch" autofocus></td>
			</tr>
			<tr>
				<td><label for="info_email1"><span class="star">*</span> 이메일</label></td>
				<td>
					<input type="text" id="info_email1" name="email1" class="info_email1" autofocus> @ 
                    <input type="text" id="info_email2" name="email2" class="info_email2" autofocus> 
                    <select class="select" id="info_select" name="info_select" onchange="checkemail();">
                        <option value="1" selected>직접입력</option>
                        <option value="naver.com">naver.com</option>
                        <option value="daum.net">daum.net</option>
                        <option value="gmail.com">gmail.com</option>
                        <option value="hanmail.com">hanmail.com</option>
                    </select>
				</td>
			</tr>
			<tr>
				<td><span class="star">*</span> 성별</td>
				<td>
					<div class="gender">
                       <input type="radio" name="gender" value="man" id="m" checked > 
                       <label for="m">남성</label> &nbsp;
                       <input type="radio" name="gender" value="woman" id="w"> 
                       <label for="w">여성</label>
                   	</div>
				</td>
			</tr>
		</table>
	</div>
	<div class="info_btn">
		<button type="submit" onclick="check_input()" class="sub">가입하기</button>
		<button type="reset" class="reset" onclick="reset_focus()">다시 작성하기</button>
	</div>
	</div>
</form>
</body>
</html>