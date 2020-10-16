<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>PICKCL</title>
</head>
<body>
<%@ include file="../topbottom/cardtoptest.jsp" %>
<%@ include file="../topbottom/choosingtoptest.jsp" %>
<section >

<c:forEach var = "b" items="${dto}">

<div class="card" style="height: 30rem;width: 20rem;margin-right:10px;float:left;">
  <img class="card-img-top" src="${pageContext.request.contextPath}/resources/image/${b.image}" alt="Card image cap">
  <div class="card-body">
  <h3>${b.cardname }</h3>
  ${b.companyname }<br>
  
  <a href="cardread?num=${b.cardno}" class="btn btn-success" >상세보기</a>
  </div>
  </div>

</c:forEach>

</section>
<%@ include file="../topbottom/cardbottom.jsp" %>
</body>
</html>