<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<script type="text/javascript">
$(function() {
	$("#dialogBlank").dialog({
		autoOpen : false, //자동으로 열리지않게
		modal : true, //모달대화상자
		resizable : false, //크기 조절 못하게

		buttons : {
			"확인" : function() {
				$(this).dialog("close");
			}
		}
	});
	
	$("#dialogName").dialog({
		autoOpen : false, //자동으로 열리지않게
		modal : true, //모달대화상자
		resizable : false, //크기 조절 못하게

		buttons : {
			"확인" : function() {
				$(this).dialog("close");
			}
		}
	});
	
	$("#dialogJumin").dialog({
		autoOpen : false, //자동으로 열리지않게
		modal : true, //모달대화상자
		resizable : false, //크기 조절 못하게

		buttons : {
			"확인" : function() {
				$(this).dialog("close");
			}
		}
	});
	
	$("#dialogEmail").dialog({
		autoOpen : false, //자동으로 열리지않게
		modal : true, //모달대화상자
		resizable : false, //크기 조절 못하게

		buttons : {
			"확인" : function() {
				$(this).dialog("close");
			}
		}
	});
	
	$("#dialogPhone").dialog({
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

window.onload = function(){
	document.getElementById("btnSignup").addEventListener("click", funcSignup, false);
	document.getElementById("btnId").onclick = idCheck;
	//document.getElementById("btnNewMember").addEventListener("click", funcNew, false);
	
}
function idCheck(){
	   if(signupForm.id.value === ""){
		   $("#dialogBlank").dialog("open");
	      signupForm.id.focus();
	   }else{
	      url = "idCheck?id=" + signupForm.id.value;
	      window.open(url,"get","width=300,height=150,left=150,top=150");
	   }
	}

function funcSignup(){
	var id = document.getElementById('id').value;
	var name = document.getElementById('irum').value;
	var pwd = document.getElementById('pwd').value;
	var jumin = document.getElementById('jumin').value;
	var email = document.getElementById('email').value;
	var phone = document.getElementById('phone').value;

	var nameCheck = /^[가-힣]{2,6}$/;
	var juminCheck = /^\d{7}$/;
	var emailCheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var phoneCheck = /^\d{2,3}\d{3,4}\d{4}$/;
	
	if(name === "" || id === "" || pwd === "" || jumin === "" || email === "" || phone === ""){
		$("#dialogBlank").dialog("open");
		signupForm.id.focus();
	}else if(!nameCheck.test(name)){
		$("#dialogName").dialog("open");
		signupForm.irum.focus();
	}else if(!juminCheck.test(jumin)){
		$("#dialogJumin").dialog("open");
		signupForm.jumin.focus();
	}else if(!emailCheck.test(email)){
		$("#dialogEmail").dialog("open");
		signupForm.email.focus();
	}else if(!phoneCheck.test(phone)){
		$("#dialogPhone").dialog("open");
		signupForm.phonenum.focus();
	}
	else{
		signupForm.action = "insertcardguest";
		signupForm.method="post";
		signupForm.submit();
	}
}

</script>
<title>Insert title here</title>
</head>
<body>
<%@ include file="../topbottom/cardtoptest.jsp" %>
	** 회원가입 창 **
	<p />
	<form action="insertcardguest" name="signupForm" method="post">
		아이디 : <input type="text" name="id" id="id"><input type="button" value="ID중복확인" id="btnId"> <br>
		비밀번호 : <input type="text" name="pwd" id="pwd"> <br>
	    이름 : <input type="text"	name="irum" id="irum"> <br> 
        주민번호 : <input type="text"	name="jumin" id="jumin"> <br> 
	    이메일 : <input type="text"	name="email" id="email"> <br> 
	    핸드폰번호 : <input type="text"	name="phonenum" id="phone"> <br> 
	    <input type="hidden" name="creditscore">
	         <br> 
	    <input type="button" value="등록" id="btnSignup" onclick="funcSignup()">
	</form>
	<div id="dialogBlank" title="경고">
		공란은 허용하지 않습니다.
	</div>
	<div id="dialogName" title="경고">
		이름을 올바른 형식으로 입력해 주십시오.
	</div>
	<div id="dialogJumin" title="경고">
		주민번호를 올바른 형식으로 입력해 주십시오.(앞 6자리와 뒷자리 하나)
	</div>
	<div id="dialogEmail" title="경고">
		이메일을 올바른 형식으로 입력해 주십시오.
	</div>
	<div id="dialogPhone" title="경고">
		전화번호를 올바른 형식으로 입력해 주십시오.
	</div>
<%@ include file="../topbottom/cardbottom.jsp" %>
</body>
</html>