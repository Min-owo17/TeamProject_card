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
<script>
function check(){
	if(frm.loanname.value==""){
		alert("대출상품명을 입력해주세요");
		frm.loanname.focues();
	}else if(frm.loancompany.value==""){
		alert("회사명을 입력해주세요");
		frm.loancompany.focues();
	}else if(frm.min.value==""){
		alert("최저금리를 입력해주세요");
		frm.min.focues();
	}else if(frm.max.value==""){
		alert("최고금리를 입력해주세요");
		frm.max.focues();
	}else if(frm.url.value==""){
		alert("url을 입력해주세요");
		frm.url.focues();
	}else if(frm.min.value > frm.max.value){
		alert("최저 금리가 최고 금리보다 큽니다");	
	}else{
		frm.submit();
	}
}
</script>
<input type="hidden" name="loanno">
<form action="insloanfinish" name="frm" method="post">
<table>
<tr>
<td>대출 상품명</td><td><input type="text" name="loanname" id="loanname"></td>
</tr>
<tr>
<td>회사명</td><td><input type="text" name="loancompany" id="loancompany"></td>
</tr>
<tr>
<td>최저금리</td><td><input type="number" name="min" id="min"></td>
</tr>
<tr>
<td>최고금리</td><td><input type="number" name="max" id="max"></td>
</tr>
<tr>
<td>기간</td>
<td>
<select name="period">
<option value="6개월">6개월</option>
<option value="12개월">12개월</option>

</select>
</td>
</tr>
<tr>
<td>url</td>
<td><input type="text" name="url" id="url"></td>
</tr>
</table>
<input type="button" value="추가하기" onclick="check()">
</form>
<%@ include file="../board/adminbottom.jsp"%>
</body>
</html>