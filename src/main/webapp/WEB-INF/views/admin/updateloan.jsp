<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PICKCL ADMIN</title>
</head>
<body>
<script>
function delcheck(no){
	if(confirm("정말 삭제하시겠습니까?")){
		location.href="deleteloan?no="+no;
		return true;
	}else{
		false;
	}
}
</script>
	<%@ include file="../board/admintop.jsp"%>
	<input type="submit" value="대출 추가하기"
		onclick="location.href='insertloan'">
	<form action="searchLoan" method="post">
      <select name="option">
         <option value="name">대출명</option>
         <option value="company">회사명</option>
      </select> <input type="text" name="word"> <input type="submit"
         value="검색">
   </form>

	<div class="col-md-12">
		<div class="card">
			<div class="header">
				<h4 class="title">대출정보</h4>
				<p class="category"></p>
			</div>
			<div class="content table-responsive table-full-width">
				<table class="table table-hover table-striped">
				
					<thead>
						<th>회사명</th>
						<th>대출 상품명</th>
						<th>기간</th>
						<th>최저 금리</th>
						<th>최고 금리</th>
						
					</thead>
					
					<tbody>
						<c:forEach var="l" items="${list }">
							<tr>
								<td>${l.loancompany }</td>
								<td>${l.loanname }</td>
								<td>${l.period }</td>
								<td>${l.min }</td>
								<td>${l.max }</td>
								
								<td align="center"><a href="modifyloan?no=${l.loanno }">수정</a></td>
								<td><a href="#" onclick ="delcheck(${l.loanno })">삭제</a></td>                
							</tr>
						</c:forEach>
						<!-- paging -->
						<tr style="text-align: center;">
							<td colspan="5"><c:forEach var="i" begin="1"
									end="${pageSu }">
									<c:if test="${i == page }">
										<b>${i }</b>
									</c:if>
									<c:if test="${i != page }">
										<a href="updateloan?page=${i}">${i}</a>
									</c:if>
								</c:forEach></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<%@ include file="../board/adminbottom.jsp"%>
</body>
</html>