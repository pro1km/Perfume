<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="css/subway.css">
<link rel="stylesheet" href="css/common.css">

<div class="sub_title">
	<ul>
		<li></li>
		<li>REVIEW</li>
	</ul>
	<hr>
</div>
<div class="review_box1">
	<c:choose>
		<c:when test="${list.size() > 0 }">
			<c:forEach var="item" items="${list}">
				<div class="review_box2">
					<a href="view?rNum=${item.rNum}"><div class="review_imgbox1">
						<img src="${item.bottle}"
							style="height: 100%; width: 100%; object-fit: contain">
					</div></a>
					<div class="review_imgtext1">${item.id}님</div>
					<div class="review_imgtext2">
						<a href="view?rNum=${item.rNum}">${item.perfumeName}</a>
					</div>
				</div>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<tr style="margin-left:200px;">
				<td colspan="5">등록 된 게시물이 없습니다</td>
			</tr>
		</c:otherwise>
	</c:choose>
</div>
<%-- <div class="wrbox">
       	<c:choose>
			<c:when
			test="${sessionScope.user eq null and sessionScope.admin eq null}">
			</c:when>
			<c:otherwise>
				<a href="write" style="color: black"><div class="write">등록</div></a>
			</c:otherwise>
		</c:choose>
		</div> --%>

<div class="review_footer">${pager.pagination}</div>
</body>
</html>
