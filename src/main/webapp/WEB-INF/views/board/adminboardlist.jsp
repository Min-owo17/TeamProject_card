<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>게시판</title>

<link rel="stylesheet" type="text/css" href="./resources/css/board.css">

</head>

<body>

<%@ include file="../board/admintop.jsp" %>

<table align="center">

  <tr>

  	<td>

  		<a href="adminboardlist?page=1" class="btn btn-primary py-2">최근목록</a>&nbsp;

  	</td>

  </tr>

</table>

 

 

<table width="80%" style="text-align: center; margin:auto">

  <tr style="background-color: silver;">

  	<th>번호</th><th>제  목</th><th>작성자</th><th>작성일</th><th>조회</th>

  </tr>

  <c:forEach var="b" items="${data}">

  	<!-- 댓글 들여쓰기 준비-->

  	<c:set var="tab" value="" />

  	<c:forEach var="n" begin="1" end="${b.nested}">

  		<c:set var="tab" value="${tab}&nbsp;&nbsp;" />

  	</c:forEach>

  <tr>

  	<td>${b.num}</td>

  	<td>

  		${tab}

  		<a href="admindetail?num=${b.num}&page=${page}">${b.title}</a>

  	</td>

  	<td>${b.name}</td>

  	<td>${b.bdate}</td>

  	<td>${b.readcnt}</td>

  </tr>	

  </c:forEach>

  <!-- paging -->

  <tr style="text-align: center;">

    <td colspan="5">

    <c:forEach var="i" begin="1" end="${pageSu }">

      <c:if test="${i == page }">

      	<b>${i }</b>

      </c:if>

      <c:if test="${i != page }">

      	<a href="adminboardlist?page=${i}">${i}</a>

      </c:if>

    </c:forEach>

    </td>

  </tr>

  <!-- search -->

  <tr style="text-align: center;">

  	<td colspan="5">

  	<br><br>

  	<form action="search" method="post">

  		<select name="searchName">

  			<option value="title" selected="selected">글제목</option>

  			<option value="name">작성자</option> 

  		</select>

  		<input type="text" name="searchValue">

  		<input type="submit" value="검색">

  	</form>

  	</td>

  </tr>

</table>

<%@ include file="../board/adminbottom.jsp" %>

</body>

</html>