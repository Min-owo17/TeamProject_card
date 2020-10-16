<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PICKCL ADMIN</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<script type="text/javascript">
	$(function() {
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
		
		$("#dialogPwd").dialog({
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
		
		$("#dialogCredit").dialog({
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

	function check() {
		var name = document.getElementById('irum').value;
		var pwd = document.getElementById('pwd').value;
		var jumin = document.getElementById('jumin').value;
		var email = document.getElementById('email').value;
		var phone = document.getElementById('phone').value;
		var credit = document.getElementById('credit').value;

		var nameCheck = /^[가-힣]{2,6}$/;
		var juminCheck = /^\d{7}$/;
		var emailCheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		var phoneCheck = /^\d{2,3}\d{3,4}\d{4}$/;
		var creditCheck = /^\d{1}$/;
		if (!nameCheck.test(name)) {
			$("#dialogName").dialog("open");
			frm.irum.focus();
			return false;
		} else if (pwd === "") {
			$("#dialogJumin").dialog("open");
			frm.pwd.focus();
			return false;
		} else if (!juminCheck.test(jumin)) {
			$("#dialogJumin").dialog("open");
			frm.jumin.focus();
			return false;
		} else if (!emailCheck.test(email)) {
			$("#dialogEmail").dialog("open");
			frm.email.focus();
			return false;
		} else if (!phoneCheck.test(phone)) {
			$("#dialogPhone").dialog("open");
			frm.phone.focus();
			return false;
		} else if (!creditCheck.test(credit)) {
			$("#dialogCredit").dialog("open");
			frm.jumin.focus();
			return false;
		} else {
			if (confirm('정말로 수정하시겠습니까?')) {
				frm.submit();
			} else
				return false;
		}
	}
</script>
</head>
<body>
   <%@ include file="../board/admintop.jsp"%>
	<form action="guestEdit?id=${dto.id }&page=${page}" method="post" name="frm">
		아이디 : ${dto.id }<br>
		비밀번호 : <input type="text" name="pwd" value="${dto.pwd }" id="pwd"><br>
		이름 : <input type="text" name="irum" value="${dto.irum }" id="irum"><br>
		주민등록번호 : <input type="text" name="jumin" value="${dto.jumin }" id="jumin"><br>
		이메일 : <input type="text" name="email" value="${dto.email }" id="email"><br>
		전화번호 : <input type="text" name="phonenum" value="${dto.phonenum }" id="phone"><br>
		신용등급 : <input type="text" name="creditscore" value="${dto.creditscore }" id="credit"><br> <br>
		<input type="button" value="수정하기" onclick="check()">
		<input type="button" value="취소하기" onclick="location.href='guestInfo?id=${dto.id}&page=${page}'">
	</form>
	<div id="dialogName" title="경고">이름을 올바른 형식으로 입력해 주십시오.</div>
	<div id="dialogPwd" title="경고">공란을 허용하지 않습니다.</div>
	<div id="dialogJumin" title="경고">주민번호를 올바른 형식으로 입력해 주십시오.(앞 6자리와 뒷자리 하나)</div>
	<div id="dialogEmail" title="경고">이메일을 올바른 형식으로 입력해 주십시오.</div>
	<div id="dialogPhone" title="경고">전화번호를 올바른 형식으로 입력해 주십시오.</div>
	<div id="dialogCredit" title="경고">신용등급을 올바른 형식으로 입력해 주십시오.</div>
   <%@ include file="../board/adminbottom.jsp"%>
</body>
</html>