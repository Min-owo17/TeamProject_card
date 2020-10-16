<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" type="text/css" href="./resources/css/board.css">
<link
	href="${pageContext.request.contextPath}/resources/css2/style2.css"
	rel="stylesheet">
</head>
<body>
	<%@ include file="../topbottom/cardtoptest.jsp"%>
	<%@ include file="../topbottom/qnatest.jsp" %>
	<h3>게시글 내용</h3>
	<h1>${data.title}</h1>

	<table style="width: 80%">
		<tr>

			<c:choose>
				<c:when test="${data.id == dto.id}">
					<td style="text-align: right;"><a
						href="update?num=${data.num}&page=${page}"
						class="btn btn-primary py-2">수정 </a> <a
						href="delete?num=${data.num}&page=${page}"
						class="btn btn-primary py-2">삭제 </a> <a href="list?page=${page}"
						class="btn btn-primary py-2"> 목룍 </a></td>
				</c:when>
				<c:when test="${data.id != dto.id}">
					<td style="text-align: right;"><a href="list?page=${page}"
						class="btn btn-primary py-2"> 목룍 </a></td>
				</c:when>

			</c:choose>

		</tr>
	</table>

	<table style="width: 80%">
		<div class="row form-group">
			<div class="col-md-12">
				<h3>${data.name}</h3>
			</div>
			<div class="col-md-9 mb-3 mb-md-0">
				<textarea name="cont" class="form-control" cols="30" rows="5"
					readonly="readonly">${data.cont}</textarea>
			</div>
		</div>
		<tr>
			<td>작성자 : <a href="mailto:${data.mail}">${data.name}</a> (ip :
				${data.bip})
			</td>
			<td>작성일 : ${data.bdate}</td>
			<td>조회수 : ${data.readcnt}</td>
		</tr>

	</table>
	<%@ include file="../topbottom/cardbottom.jsp"%>
</body>
</html>