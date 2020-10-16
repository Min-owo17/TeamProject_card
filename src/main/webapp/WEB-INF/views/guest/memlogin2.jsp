<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<script type="text/javascript">
$(function() {
	$("#dialogId").dialog({
		title : "경고",
		autoOpen : false, //자동으로 열리지않게
		modal : true, //모달대화상자
		resizable : false, //크기 조절 못하게

		buttons : {
			"확인" : function() {
				$(this).dialog("close");
			}
		}
	});
	
	$("#dialogPwd").dialog({
		title : "경고",
		autoOpen : false, //자동으로 열리지않게
		modal : true, //모달대화상자
		resizable : false, //크기 조절 못하게

		buttons : {
			"확인" : function() {
				$(this).dialog("close");
			}
		}
	});
});

function check(){
	var id = document.getElementById('id').value;
	var pwd = document.getElementById('pwd').value;
	
	if(id === ""){
		$("#dialogId").dialog("open");
		signupForm.id.focus();
	}else if(pwd === ""){
		$("#dialogPwd").dialog("open");
		signupForm.irum.focus();
	}else{
		//signupForm.action = "memlogin";
		//signupForm.method="post";
		signupForm.submit();
	}
}
</script>
</head>
<body>
   <%@ include file="../topbottom/cardtoptest.jsp" %>
* 로그인 *<br>
<form action="memlogin" method="post" name="signupForm">
아 이 디 : <input type="text" name="id" id="id"><br>
비밀번호 : <input type="password" name="pwd" id="pwd"><br>
<br>
<input type="button" value="로그인" onclick="check()">
</form>
<div id="dialogId">
	아이디를 입력해주십시오
</div>
<div id="dialogPwd">
	비밀번호를 입력해주십시오
</div>
   <%@ include file="../topbottom/cardbottom.jsp" %>
</body>
</html>