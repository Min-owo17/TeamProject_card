<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PICKCL ADMIN</title>
<script type="text/javascript">
function del(){
	if(confirm('정말로 삭제하시겠습니까?')){
		location.href = "guestDelete?id=${dto.id}&page=${page}";
	}else
		return false;
}
</script>
</head>
<body>
   <%@ include file="../board/admintop.jsp"%>
아이디 : ${dto.id }<br>
비밀번호 : ******<br>
이름 : ${dto.irum }<br>
이메일 : ${dto.email }<br>
전화번호 : ${dto.phonenum }<br>
신용등급 : ${dto.creditscore }<br>
<br>


<br>
<input type="button" value="정보수정" onclick="location.href='guestEdit?id=${dto.id }&page=${page }'">
<input type="button" value="삭제" onclick="del()">
<input type="button" value="관리자 페이지" onclick="location.href='adminmain'">
   <%@ include file="../board/adminbottom.jsp"%>
</body>
</html>