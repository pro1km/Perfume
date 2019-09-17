<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>

<link rel="stylesheet" href="css/man.css">
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/sub.js"></script>
<script src="js/man.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<div id="step1">
	<ul class="step1_text">
		<li>향수 제작 서비스</li>
		<li>향기제작소</li>
		<li>자신이 원하는 향을 조합하여 향수를 제작해보세요.</li>
	</ul>
	<button data-step="2" class="start_btn"
		style="margin-left: 46%; margin-top: 5%">START</button>
</div>

<!-- step 2 start -->
<div id="step2">
	<div class="sub_title">
		<ul>
			<li></li>
			<li>MAN > 조합할 향 선택하기</li>
		</ul>
		<hr>
	</div>
	<div class="tabmenu">
		<ul class="tab">
			<li class="current" data-tab="tab1"><a href="#" class="m1_a">Woody</a></li>
			<li class="m1_tab2" data-tab="tab2"><a href="#" class="m1_a">Aqua</a></li>
			<li class="m1_tab2" data-tab="tab3"><a href="#" class="m1_a">Green</a></li>
		</ul>

		<div id="tab1" class="tabcontent current">
			<ul class="m1_group">
				<li><div class="m1_circle">
						<img src="../images/incense/cedarwood.png" data-code="1"
							class="m1_img">
					</div>
					<div class=m1_tabtext>Cedarwood</div></li>
				<li><div class="m1_circle">
						<img src="../images/incense/amber.png" data-code="2"
							class="m1_img">
					</div>
					<div class=m1_tabtext>Amber</div></li>
				<li><div class="m1_circle">
						<img src="../images/incense/farouli.png" data-code="3"
							class="m1_img">
					</div>
					<div class=m1_tabtext>Pachuli</div></li>
				<li><div class="m1_circle">
						<img src="../images/incense/pine.png" data-code="4" class="m1_img">
					</div>
					<div class=m1_tabtext>Pine</div></li>
			</ul>
		</div>

		<div id="tab2" class="tabcontent">
			<ul class="m1_group">
				<li><div class="m1_circle">
						<img src="../images/incense/eucalyptus.png" data-code="5"
							class="m1_img">
					</div>
					<div class=m1_tabtext>Eucalyptus</div></li>
				<li><div class="m1_circle">
						<img src="../images/incense/aquanot.png" data-code="6"
							class="m1_img">
					</div>
					<div class=m1_tabtext>Aquanot</div></li>
				<li><div class="m1_circle">
						<img src="../images/incense/orcmos.png" data-code="7"
							class="m1_img">
					</div>
					<div class=m1_tabtext>Orcmos</div></li>
				<li><div class="m1_circle">
						<img src="../images/incense/vergamo.png" data-code="8"
							class="m1_img">
					</div>
					<div class=m1_tabtext>Vergamot</div></li>
			</ul>
		</div>

		<div id="tab3" class="tabcontent">
			<ul class="m1_group">
				<li><div class="m1_circle">
						<img src="../images/incense/mint.png" data-code="9" class="m1_img">
					</div>
					<div class=m1_tabtext>Mint</div></li>
				<li><div class="m1_circle">
						<img src="../images/incense/thyme.png" data-code="10"
							class="m1_img">
					</div>
					<div class=m1_tabtext>Thyme</div></li>
				<li><div class="m1_circle">
						<img src="../images/incense/aloe.png" data-code="11"
							class="m1_img">
					</div>
					<div class=m1_tabtext>Aloe</div></li>
				<li><div class="m1_circle">
						<img src="../images/incense/bamboo.png" data-code="12"
							class="m1_img">
					</div>
					<div class=m1_tabtext>Bamboo</div></li>
			</ul>
		</div>
	</div>

	<div class="m1_combination">
		<ul class="m1_cbtab">
			<li class="m1_cbox1">조합할 향</li>
		</ul>
		<div class="m1_cbox2"></div>
	</div>

	<div class="m1_plus">
		<div class="m1_width"></div>
		<div class="m1_height"></div>
	</div>

	<div class="alert_text">(두 가지 향을 선택해야 다음으로 넘어갈 수 있습니다.)</div>

	<div class="step_btn" style="margin-top: 48px;">
		<button type="button" data-step="2" style="opacity: 0; cursor: unset">E</button>
		<div class="m1_j1"></div>
		<div class="m1_j2"></div>
		<div class="m1_j2"></div>
		<div class="m1_j2"></div>
		<button type="button" data-step="3" class="stop_step1" disabled>NEXT</button>
	</div>
</div>
<!-- step 2 end -->

<!-- step 3 start -->
<div id="step3">

	<div class="sub_title">
		<ul>
			<li></li>
			<li>MAN > 선택한 향</li>
		</ul>
		<hr>
	</div>

	<div class="m2_box1">조합된 향</div>

	<div class="m2_circle"></div>

	<div class="m2_recommend">
		<ul class="m2_rctab">
			<li class="m2_rcbox1">조합된 향기 특징</li>
		</ul>
		<div class="m2_rcbox2">
			<div class="m2_rcbox2_name"></div>
			<div class="m2_rcbox2_desc"></div>
		</div>
	</div>

	<div class="step_btn" style="margin-top: 28px;">
		<button type="button" data-step="2">PREV</button>
		<div class="m1_j2"></div>
		<div class="m1_j1"></div>
		<div class="m1_j2"></div>
		<div class="m1_j2"></div>
		<button type="button" data-step="4">NEXT</button>
	</div>
</div>
<!-- step 3 end -->

<!-- step 4 start -->
<form action="man" method="post">
<div id="step4">

	<div class="sub_title">
		<ul>
			<li></li>
			<li>MAN > 향수 제작 선택하기</li>
		</ul>
		<hr>
	</div>

	<div class="m3_box1">
		<div class="m3_box2">
		    <div class="m3_box3">향수병 선택</div>
		    <div class="m3_box4">
		        <div class="m3_box5">
		            <label for="1"><div class="m3_circle1"></div></label> 
		            <input type="radio" name="bottle" value="../images/perfume_bottle/m_pb_01.png" id="1" checked>
		        </div>
		        <div class="m3_box5">
		            <label for="2"><div class="m3_circle2"></div></label>
		            <input type="radio" name="bottle" value="../images/perfume_bottle/m_pb_02.png" id="2">
		        </div>
		        <div class="m3_box5">
		            <label for="3"><div class="m3_circle3"></div></label>
		            <input type="radio" name="bottle" value="../images/perfume_bottle/m_pb_03.png" id="3">
		        </div>
		        <div class="m3_box5">
		            <label for="4"><div class="m3_circle4"></div></label>
		            <input type="radio" name="bottle" value="../images/perfume_bottle/m_pb_04.png" id="4">
		        </div>
		    </div>
		</div>
		<div class="m3_box6">
			<div class="m3_box7">편지지 선택</div>
			<div class="m3_div_radio1">
				<input type="radio" name="letter" value="카드 선택" id="radio1"
					checked> <label for="radio1" id="radio1">카드 선택 </label>
				<p>&nbsp;</p>
				<input type="radio" name="letter" value="카드 안함" id="radio2">
				<label for="radio2">선택 안함</label>
			</div>
			
				<div class="m3_box8"></div>
				<div class="m3_box9">
					<textarea cols="25" rows="6" style="resize: none;"
						placeholder="카드문구를 입력해주세요."></textarea>
				</div>
				<div class="m3_text1">* 편지지 카드를 선택할 시 포장할 때 포함됩니다.</div>
			
			<div class="m3_box10">포장 선택</div>
			<div class="m3_div_radio2">
				<input type="radio" name="pack" value="박스 포장" id="radio3"
					checked> <label for="radio3" id="radio2">박스 포장 </label>
				<p>&nbsp;</p>
				<input type="radio" name="pack" value="쇼핑백 포장" id="radio4">
				<label for="radio4">쇼핑백 포장</label>
				<p>&nbsp;</p>
				<input type="radio" name="pack" value="박스+쇼핑백 포장"
					id="radio5"> <label for="radio5">박스+쇼핑백 포장</label>
			</div>
		</div>
		<div class="m3_hid"></div>
	</div>

	<div class="step_btn" style="margin-top: 150px;">
		<button type="button" data-step="3">PREV</button>
		<div class="m1_j2"></div>
		<div class="m1_j2"></div>
		<div class="m1_j1"></div>
		<div class="m1_j2"></div>
		<button type="button" data-step="5">NEXT</button>
	</div>
</div>
<!-- step 4 end -->

<!-- step 5 start -->
<div id="step5">

	<div class="sub_title">
		<ul>
			<li></li>
			<li>MAN > 제작된 향수 보기</li>
		</ul>
		<hr>
	</div>

	<div class=m4_box1>
		<div class="m4_box2">완성된 향수 보기</div>
		<div class="m4_text1">
			<span>향기제작소</span>를 이용해주셔서 감사합니다.
		</div>
		<div class="m4_box3"></div>
		<input type="submit" class="m4_box4" value="저장하기">
	</div>

	<div class="step_btn" style="margin-top: 30px;">
		<button type="button" data-step="4">PREV</button>
		<div class="m1_j2"></div>
		<div class="m1_j2"></div>
		<div class="m1_j2"></div>
		<div class="m1_j1"></div>
		<button type="button" data-step="5" style="opacity: 0; cursor: unset">NEXT</button>
	</div>
</div>
</form>
<!-- step 5 end -->
</div>

</body>

</html>