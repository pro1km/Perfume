<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>

<link rel="stylesheet" href="css/subway.css">
<link rel="stylesheet" href="css/common.css">
<script src="js/sub.js"></script>

<div class="sub_title">
	<ul>
		<li></li>
		<li>리뷰작성하기</li>
	</ul>
	<hr>
</div>

<div class="wr_id">${sessionScope.user}님</div>
<form id="write_f" method="post" action="write" enctype="multipart/form-data" onsubmit="return false">
	<input type="hidden" name="pNum" value="${write.pNum}">
	<table frame="hsides" rules="all" class="write_table">
		<tr class="wr_tr1">
			<td class="wr_td1"><span class="wr_text">조합된 향</span></td>
			<td><span class="wr_text2">${write.incense}</span></td>
		</tr>
		<tr class="wr_tr1">
			<td><span class="wr_text">향수 이름</span></td>
			<td><input name="perfumeName" type="text" placeholder="목록에 보여질 향수 이름을 입력하시길 바랍니다."
				class="wr_name" autofocus></td>
		</tr>
		<tr>
			<td><span class="wr_text">향수병</span></td>
			<td>
				<div class="wr_upload">
					<img src="${write.bottle}">
				</div>
			</td>
		</tr>
		<tr>
			<td><span class="wr_text">내용</span></td>
			<td><textarea name="rContents" placeholder="내용을 입력하세요" class="wr_textarea" autofocus></textarea></td>
		</tr>
	</table>

	<div class="wr_addbox">
	
	<ul class="wr_move">
		<li><a href="review" onclick="history.go(-1); return false;"><div class="wr_back">뒤로가기</div></a></li>
		<li><input type="submit" class="wr_add" value="작성하기" onclick="write_ch()"></li>
	</ul>

	</div>
	</form>
</body>
</html>
