<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" type="text/css" href="./resources/css/board.css">
<link rel="stylesheet"
   href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<script type="text/javascript">
   </script>
</head>
<body>
<%@ include file="../board/admintop.jsp" %>
<h2>* 글쓰기 *</h2>
<form action="reply" method="post">

<input type="hidden" name="pwd" value="${data.pwd}">
<input type="hidden" name="num" value="${data.num}">
<input type="hidden" name="page" value="${page}">
<input type="hidden" name="gnum" value="${data.gnum}">
<input type="hidden" name="onum" value="${data.onum}">
<input type="hidden" name="name" value="${data.name}">
<input type="hidden" name="password" value="${data.pwd}">
<input type="hidden" name="mail" value="${data.mail}">
<input type="hidden" name="nested" value="${data.nested}">
<input type="hidden" name="bip" value="<%=request.getRemoteAddr()%>">

<table border="1" style="width: 80%">
  <tr>
     <td>제목</td>
     <td><input type="text" name="title" value="[Re]:${data.title}"></td>
  </tr>
  <tr>
     <td>내용</td>
     <td>
        <textarea rows="5" cols="50" name="cont"></textarea>
     </td>
  </tr>
  <tr>
     <td colspan="2" style="text-align: center;">
        <input type="submit" value="작성">
        <input type="button" value="목록" onclick="location.href='list?page=${page}'">
     </td>
  </tr>
</table>
</form>
<%@ include file="../board/adminbottom.jsp" %>
</body>
</html>