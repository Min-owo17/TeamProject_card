<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

    

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>게시판</title>

<link rel="stylesheet" type="text/css" href="./resources/css/board.css">

<link href="${pageContext.request.contextPath}/resources/css2/style2.css"

	  rel="stylesheet">

 

</head>

<body>
<script>
function delcheck(no){
	   if(confirm("정말 삭제하시겠습니까?")){
	      location.href="deleteadmin?num=" + no + "&page=1"
	      return true;
	   }else{
	      false;
	   }
	}
</script>
<%@ include file="../board/admintop.jsp" %>

<h2>Question </h2>

<table style="width: 80%">

  <tr>

  	<td>비밀번호 : ${data.pwd}</td>

  	<td style="text-align: right;">

  	<a href="reply?num=${data.num}&page=${page}" class="btn btn-primary py-2">

  			답글작성

  		</a>

  		<a href="#" onclick="delcheck(${data.num})" class="btn btn-primary py-2">

  			삭제하기

  		</a>

  		<a href="adminboardlist?page=${page}" class="btn btn-primary py-2">

  			목록으로

  		</a>

  	</td>

  </tr>

</table>

 

<table border="1" style="width: 80%">

  <tr>

  	<td>

  		작성자 : <a href="mailto:${data.mail}">${data.name}</a>

  		(ip : ${data.bip})

  	</td>

  	<td>작성일 : ${data.bdate}</td>

  	<td>조회수 : ${data.readcnt}</td>

  </tr>

  <tr>

  	<td>제목 : </td>

  	<td colspan="2">${data.title}</td>

  </tr>

  <tr>

  	<td colspan="3">

  		<textarea rows="5" cols="50" readonly="readonly">${data.cont}</textarea>

  	</td>

  </tr>

</table>

<%@ include file="../board/adminbottom.jsp" %>

</body>

</html>