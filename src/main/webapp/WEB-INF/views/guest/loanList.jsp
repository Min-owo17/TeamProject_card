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
       <%@ include file="../topbottom/loanListTest.jsp" %>
       
       <section>
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver1 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1" style="text-align: center;">대출명</th>
									<th class="cell100 column2" style="text-align: center;">회사명</th>
									<th class="cell100 column3" style="text-align: center;">평균금리</th>
									<th class="cell100 column4" style="text-align: center;">기간</th>
									<th class="cell100 column5" style="text-align: center;">신청하기</th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
							<c:forEach var="l" items="${list}">
								<tr class="row100 body">
									<td class="cell100 column1" style="text-align: center;">${l.loanname }</td>
									<td class="cell100 column2" style="text-align: center;">${l.loancompany }</td>
									<td class="cell100 column3" style="text-align: center;"><fmt:formatNumber value="${l.avg }" pattern=".000"/></td>
									<td class="cell100 column4" style="text-align: center;">${l.period }</td>
									<td class="cell100 column5" style="text-align: center;"> <a href="${l.url }" class="btn btn-success" >신청하기</a></td>
								</tr>

							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
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


