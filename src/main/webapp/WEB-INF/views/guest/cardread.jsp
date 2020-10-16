<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
.backg{
font: 15px Roboto-Medium;
color: #999999 ;

}
</style>
<title>PICKCL</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/qnamain/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/qnamain/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/qnamain/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/qnamain/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/qnamain/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/qnamain/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/qnamain/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/qnamain/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<%@ include file="../topbottom/cardtoptest.jsp" %>
<%@ include file="../topbottom/cardlisttest.jsp" %>
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver1">
					<div class="table100-firstcol">
						<table >
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">CardName</th>
								</tr>
							</thead>
							<tbody>
								<tr class="row100 body">
									<td class="cell100 column1">${datas.cardname }</td>
								</tr>

								
							</tbody>
						</table>
					</div>
					
					<div class="wrap-table100-nextcols js-pscroll">
						<div class="table100-nextcols">
							<table>
								<thead>
									<tr class="row100 head">
										<th class="cell100 column2">CompanyName</th>
										<th class="cell100 column3">Image</th>
										<th class="cell100 column4">Benefit</th>
										
									</tr>
								</thead>
								<tbody>
									<tr class="row100 body">
										<td class="cell100 column2">${datas.companyname }</td>
										<td class="cell100 column3"><img src="${pageContext.request.contextPath}/resources/image/${datas.image}" width="100"></td>
										<td class="cell100 column4"> 
										<c:forEach var="s" items="${datas2 }">
         
            								${s.benefit }<br>
         
     									 </c:forEach></td>
									</tr>
								</tbody>
								<a href="cardurl?no=${datas.cardno}" class="btn btn-success">카드신청</a>
							</table>
								<div class="backg">
   							</div>
   							
						</div>
						
					</div>
				</div>
			</div>
			
		</div>
	</div>


<!--===============================================================================================-->	
	<script src="${pageContext.request.contextPath}/resources/qnamain/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/qnamain/vendor/bootstrap/js/popper.js"></script>
	<script src="${pageContext.request.contextPath}/resources/qnamain/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/qnamain/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/qnamain/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>

<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/qnamain/js/main.js"></script>
<%@ include file="../topbottom/cardbottom.jsp" %>
</body>
</html>