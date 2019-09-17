<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>

<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/common.css">
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/sub.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<div id="slide">

	<div class="visual-slider">
		<ul>
			<li class="active"></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>

	<div class="visual">

		<div id="btns">
			<img src="images/left.png" alt="left" title="left"
				onClick="animation('left')">

			<ul>
				<li><a class="under-btn active-btn" onClick="animation('1')"></a></li>
				<li><a class="under-btn" onClick="animation('2')"></a></li>
				<li><a class="under-btn" onClick="animation('3')"></a></li>
				<li><a class="under-btn" onClick="animation('4')"></a></li>
			</ul>

			<img src="images/right.png" alt="right" title="right"
				onClick="animation('right')">
		</div>

	</div>

</div>

<div class="box1">
	<div class="BlackLine"></div>
	<div class="text1">Synopsys</div>
	<div class="text2">사람을 만날 때 향기는 좋은 첫인상을 좌우하는데</div>
	<div class="text3">아주 큰 힘을 가지고 있습니다.</div>
	<div class="text4">기존에 있는 향수를 사용하기보단 자신이 원하는 향을 조합하여 향수를 제작해보세요.</div>
	<div class="text4">세상에 하나뿐인 향수를 만들어서 누군가에게 특별한 선물을 하거나 자신만의 고유한
		향기가 생긴다면</div>
	<div class="text4">향기제작소에 방문하여 제작한 당신에게는 잊지 못할 추억이 될 것입니다.</div>
</div>
<div class="box2">
	<img src="images/banner1.png">
</div>
<div class="box3">
	<div class="box3-text">
		<div class="box3-text1">내가 직접 만드는 향수,</div>
		<div class="box3-text2">
			<span class="big">향기제작소</span><span>에 방문해주셔서 감사합니다.</span>
		</div>
		<div class="box3-text3">그 이상의 향기를 느낄 수 있을 것입니다.</div>
	</div>
</div>
<div class="box4">
	<div class="BlackLine2"></div>
	<div class="text5">PREVIEW</div>
</div>
<div class="box5">
	<div class="box5_1">
		<div class="box5_box1">
			<div class="box5_text1">데이지</div>
			<div class="box5_text2">체리블라썸</div>
		</div>
		<div class="box5_1_textbox">
			<div class="box5_textbox1_text1">=봄스러운 플로럴향</div>
		</div>
		<div class="detail_btn">
			<div class="detail_btn btn_01">
				<a href="#">자세히 보기</a>
			</div>
		</div>
	</div>

	<div class="box5_2">
		<div class="box5_box2">
			<div class="box5_box2_text1">레몬</div>
			<div class="box5_box2_text2">유자</div>
		</div>
		<div class="box5_2_textbox">
			<div class="box5_textbox2_text1">=전형적인 시트러스향</div>
		</div>
		<div class="detail_btn">
			<div class="detail_btn btn_02">
				<a href="#">자세히 보기</a>
			</div>
		</div>
	</div>
	<div class="box5_3">
		<div class="box5_box3">
			<div class="box5_box3_text1">장미</div>
			<div class="box5_box3_text2">바이올렛</div>
		</div>
		<div class="box5_3_textbox">
			<div class="box5_textbox3_text1">
				=딥하지만 무겁지 않은<br> 플로럴향
			</div>
		</div>
		<div class="detail_btn">
			<div class="detail_btn btn_03">
				<a href="#">자세히 보기</a>
			</div>
		</div>
	</div>
	<div class="box5_4">
		<div class="box5_box4">
			<div class="box5_box4_text1">타임</div>
			<div class="box5_box4_text2">알로에</div>
		</div>
		<div class="box5_4_textbox">
			<div class="box5_textbox4_text1">=달콤한 숲향</div>
		</div>
		<div class="detail_btn">
			<div class="detail_btn btn_04">
				<a href="#">자세히 보기</a>
			</div>
		</div>
	</div>
</div>

<div class="footer">
	<div class="footer_text">
		<div class="footer-text1">
			<div class="center1">고객센터</div>
			<div class="phone">1998-0604</div>
			<div class="center2">운영시간 : 09:00 - 18:00</div>
			<div class="center2">점심시간 : 12:00 - 13:00</div>
			<div class="center2">토,일,공휴일 휴무</div>
			<div class="email">Email : perfume@gmail.com</div>
		</div>
		<div class="footer-text2">
			<div class="company">COMPANY : 향기제작소 / 조원 : 방아영, 이강민, 김현지, 신원준</div>
			<div class="company">사업자등록번호 : 000-00-00000 [사업자정보확인] / 통신판매업
				신고번호 : 2018-대전-0604호</div>
			<div class="company">ADDRESS : [34503] 대전광역시 동구 우암로 352-21</div>
			<div class="copyright">Copyright (c) by 향기제작소. All Right
				Reserved.</div>
		</div>
	</div>
</div>
</div>
</body>
</html>
