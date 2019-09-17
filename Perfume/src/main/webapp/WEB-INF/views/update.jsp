<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>

<link rel="stylesheet" href="css/subway.css">
<link rel="stylesheet" href="css/common.css">
<script src="js/sub.js"></script>

<div class="sub_title">
	<ul>
		<li></li>
		<li>리뷰 작성 수정하기</li>
	</ul>
	<hr>
</div>

<div class="wr_id">${item.id}님</div>
<form id="update_f" method="post" action="update" enctype="multipart/form-data" onsubmit="return false">
	<input type="hidden" name="rNum" value="${item.rNum}">
	<table frame="hsides" rules="all" class="write_table">
		<tr class="wr_tr1">
			<td class="wr_td1"><span class="wr_text">조합된 향</span></td>
			<td><span class="wr_text2">${item.incense}</span></td>
		</tr>
		<tr class="wr_tr1">
			<td><span class="wr_text">향수 이름</span></td>
			<td><input name="perfumeName" type="text" value="${item.perfumeName}"
				class="wr_name"></td>
		</tr>
		<tr>
			<td><span class="wr_text">향수병</span></td>
			<td>
				<div class="wr_upload">
					<img src="${item.bottle}">
				</div>
			</td>
		</tr>
		<tr>
			<td><span class="wr_text">내용</span></td>
			<td><textarea name="rContents" class="wr_textarea">${item.rContents}</textarea></td>
		</tr>
	</table>


	<div class="wr_addbox">
	
	<ul class="wr_move">
		<li><a href="review" onclick="history.go(-1); return false;"><div class="wr_back">뒤로가기</div></a></li>
		<li><input type="submit" class="wr_add" value="변경" onclick="update_ch()"></li>
	</ul>

	</div>
	</form>
</body>
</html>
