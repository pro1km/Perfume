<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>

<link rel="stylesheet" href="css/subway.css">
<link rel="stylesheet" href="css/common.css">
<script src="js/sub.js"></script>

<div class="sub_title">
	<ul>
		<li></li>
		<li>REVIEW</li>
	</ul>
	<hr>
</div>

<div class="wr_id">${view.id}님</div>
	<table frame="hsides" rules="all" class="write_table">
		<tr class="wr_tr1">
			<td class="wr_td1"><span class="wr_text">조합된 향</span></td>
			<td><span class="wr_text2">${view.incense}</span></td>
		</tr>
		<tr class="wr_tr1">
			<td><span class="wr_text">향수 이름</span></td>
			<td>${view.perfumeName}</td>
		</tr>
		<tr>
			<td><span class="wr_text">향수병</span></td>
			<td>
				<div class="wr_upload">
					<img src="${view.bottle}">
				</div>
			</td>
		</tr>
		<tr>
			<td><span class="wr_text">내용</span></td>
			<td>${view.rContents}</td>
		</tr>
	</table>
	
	<div class="wr_addbox">
	<form action="review.html">
     <ul class="wr_move">
     <c:choose>
		<c:when
		test="${sessionScope.user eq view.id or sessionScope.admin eq view.id and sessionScope.user != null}">
		<li><a href="update?rNum=${view.rNum}"><div class="v_back">수정</div></a></li>
		<li><a href="delete?rNum=${view.rNum}" onclick="del_msg()"><div class="v_back">삭제</div></a></li>
		<li><button type="submit" class="v_back" onclick="history.go(-1); return false;">뒤로가기</button></li>
		</c:when>
		<c:otherwise>
		<li><button type="submit" class="v_back" onclick="history.go(-1); return false;">뒤로가기</button></li>
		</c:otherwise>
		</c:choose> 
     </ul>
    </form>
    </div>
</body>
</html>
