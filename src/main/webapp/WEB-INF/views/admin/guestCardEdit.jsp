<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PICKCL ADMIN</title>
</head>
<body>
   <%@ include file="../board/admintop.jsp"%>
카드신청상태 수정<br>
<form action="cardRegisterEdit?registerno=${dto.registerno }&id=${id}" method="post">
${dto.cardname}<br>
<input type="radio" name="cardstatus" value="신청중" checked="checked" /> 신청중
<input type="radio" name="cardstatus" value="신청됨"/> 신청됨
<input type="radio" name="cardstatus" value="반려됨"/> 반려됨
<br>
<input type="submit" value="수정하기">
<input type="button" value="취소" onclick="location.href='guestList'">
</form>
   <%@ include file="../board/adminbottom.jsp"%>
</body>
</html>