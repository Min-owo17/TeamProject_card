<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PICKCL</title>
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<body>
   <%@ include file="../topbottom/cardtoptest.jsp" %>
   <%@ include file="../topbottom/mypagetest.jsp"%>
   <section>
	<table border="1">
		<c:forEach var="s" items="${datas }">
			<div class="card"
				style="height: 30rem; width: 20rem; margin-right: 10px; float: left;">
				<img class="card-img-top"
					src="${pageContext.request.contextPath}/resources/image/${s.image}"
					alt="Card image cap">
				<div class="card-body">
					<h3>${s.cardname }</h3>
					${s.companyname }<br> <a href="cardread?num=${s.cardno}"
						class="btn btn-success">상세보기</a><br>
					신청일: ${s.registerdate }<br>
					접수 상태: ${s.cardstatus }<br>
					조회수: ${s.count }
				</div>
			</div>
		</c:forEach>

	</table>
	</section>
	   <%@ include file="../topbottom/cardbottom.jsp" %>
</body>
</html>