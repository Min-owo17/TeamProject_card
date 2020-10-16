<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>id 중복</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script src="../js/script.js"></script>
</head>
<body style="text-align: center; margin-top: 30px;">

<b>${id } : </b>
<c:choose>
   <c:when test="${!result }">
   이미 사용 중인 id입니다.<p/>
   <a href="#" onclick="opener.document.signupForm.id.focus(); window.close();">닫기</a>
   </c:when>
   <c:otherwise>
   사용 가능 합니다.<p/>
   <a href="#" onclick="opener.document.signupForm.pwd.focus(); window.close();">닫기</a>
   </c:otherwise>
</c:choose>   
</body>
</html>