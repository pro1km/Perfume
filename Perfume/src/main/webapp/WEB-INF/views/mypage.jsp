<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>

<link rel="stylesheet" href="css/member.css">
<link rel="stylesheet" href="css/common.css">
    
        <div class="mypage">
            <div class="rectangle" ></div>
            <div class=my_text1>MYPAGE</div>
        </div>
        <hr class="my_hr1">
        <div class="my_box1"></div>
        <div class="my_circle"><img src="../images/mypage_logo.png"></div>
        <div class="my_id">${sessionScope.user}님</div>
        <div class="my_text2">내가 만든 향수 : ${percount} <span class="bar">|</span> 작성한 리뷰 수 : ${rvcount}</div>
        <hr class="my_hr2">
        <div class="my_rvbox">
        <c:choose>
		<c:when test="${list.size() > 0 }">
			<c:forEach var="item" items="${list}">
            <div class="my_review">
                <div class="my_box2"><img src="${item.bottle}" style="height: 100%; width: 100%; object-fit: contain"></div>
                <div class="my_text3">${item.incense}</div>
                <a href="write?pNum=${item.pNum}"><div class="my_create">리뷰 작성하기</div></a>
            </div>
            </c:forEach>
            </c:when>
            <c:otherwise>
						<tr>
							<td colspan="5">등록 된 향수가 없습니다.</td>
						</tr> 
		</c:otherwise>
         </c:choose>
         <div class="my_pager"> ${pager2.pagination}</div>
        </div>
    </body>
</html>