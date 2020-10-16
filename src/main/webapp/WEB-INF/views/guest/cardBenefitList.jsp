<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>PICKCL</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/loanListTop/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/loanListTop/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/loanListTop/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/loanListTop/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/loanListTop/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/loanListTop/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/loanListTop/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/loanListTop/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<%@ include file="../topbottom/cardtoptest.jsp" %>
       <%@ include file="../topbottom/benefitSelecttest.jsp" %>
       
       <section>
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver1 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									
									<th class="cell100 column2" style="text-align: center;">IMAGE</th>
									<th class="cell100 column3" style="text-align: center;">CARDNAME</th>
									<th class="cell100 column4" style="text-align: center;">BANKNAME</th>
									<th class="cell100 column5" style="text-align: center;">상세보기</th>
									
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
							<c:forEach var="c" items="${list}">
								<tr class="row100 body">
									
									<td class="cell100 column2" style="text-align: center;"><img src="${pageContext.request.contextPath}/resources/image/${c.image}"
										width="175px"></td>
									<td class="cell100 column3" style="text-align: center;">${c.cardname}</td>
									<td class="cell100 column4" style="text-align: center;">${c.companyname}</td>
									<td class="cell100 column5" style="text-align: center;"> <a href="cardread?num=${c.cardno}" class="btn btn-success" >상세보기</a></td>
								</tr>

							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<table>
							<!-- paging -->
								<tr style="text-align: center;">
									<td colspan="5"><c:forEach var="i" begin="1" end="${pageSu }">
										<c:if test="${i == page }">
											<b>${i }</b>
										</c:if>
										<c:if test="${i != page }">
											<a href="benefitcategory?category=${category}&page=${i}">${i}</a>
										</c:if>
									</c:forEach>
									</td>
									</tr>
		</table>
			</div>
		</div>		
	</div>	

<!--===============================================================================================-->	
	<script src="${pageContext.request.contextPath}/resources/loanListTop/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/loanListTop/vendor/bootstrap/js/popper.js"></script>
	<script src="${pageContext.request.contextPath}/resources/loanListTop/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/loanListTop/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/loanListTop/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
			
		
	</script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/loanListTop/js/main.js"></script>
	</section>
  <%@ include file="../topbottom/cardbottom.jsp" %>
</body>
</html>

















