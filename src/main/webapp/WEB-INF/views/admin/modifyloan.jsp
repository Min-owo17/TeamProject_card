<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PICKCL ADMIN</title>
</head>
<body>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
	<script>
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
	$("#compare").dialog({
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

function nullValCheck(){
	if(frm.loanname.value==""){
		$("#dialogBlank").dialog("open");
		frm.loanname.focus();
	}else if(frm.loancompany.value==""){
		$("#dialogBlank").dialog("open");
		frm.loancompany.focus();
	}else if(frm.min.value==""){
		$("#dialogBlank").dialog("open");
		frm.min.focus();
	}else if(frm.max.value==""){
		$("#dialogBlank").dialog("open");
		frm.max.focus();
	}else if(frm.max.value<frm.min.value){
		$("#compare").dialog("open");
		frm.max.focus();
	}else{
		if(confirm("정말 수정하시겠습니까?")){
			frm.submit();
		}else
			return false;
	
	}
}
</script>
<%@ include file="../board/admintop.jsp"%>
	<form action="updateloaninfo" id="frm" name="frm" method="post">
		<table>
			<tr>
				<td><input type="hidden" name="loanno" id="loanno"
					value="${dto.loanno  }"> <input type="hidden" name="page"
					value="1"> 대출상품명</td>
				<td><input type="text" name="loanname" id="loanname"
					value="${dto.loanname }">
			</tr>
			<tr>
				<td>회사명</td>
				<td><input type="text" name="loancompany" id="loancompany"
					value="${dto.loancompany }"></td>
			</tr>
			<tr>
				<td>최저금리</td>
				<td><input type="number" name="min" id="min"
					value="${dto.min }"></td>
			</tr>
			<tr>
				<td>최고금리</td>
				<td><input type="number" name="max" id="max"
					value="${dto.max }"></td>
			</tr>
			
			<tr>
				<td><input type="button" value="수정완료" onclick="nullValCheck()">
				</td>
			</tr>
		</table>
	</form>
	<div id="dialogBlank" title="경고">공란을 모두 채워주십시오.</div>
	<div id="compare" title="경고">최저금리가 최고금리보다 큽니다.</div>
	<%@ include file="../board/adminbottom.jsp"%>
</body>
</html>