<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script type="text/javascript">
$(function() {
	$("#dialogCardName").dialog({
		autoOpen : false, //자동으로 열리지않게
		modal : true, //모달대화상자
		resizable : false, //크기 조절 못하게

		buttons : {
			"확인" : function() {
				$(this).dialog("close");
			}
		}
	});
	
	$("#dialogCompanyName").dialog({
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
	document.getElementById("subButton").addEventListener("click", insertCheck, false);
}
function insertCheck(){
	var cardname = document.getElementById('cardname').value;
	var companyname = document.getElementById('companyname').value;
	
	if(cardname===""){
		$("#dialogCardName").dialog("open");
		regCard.cardname.focus();
	}else if(regCard.companyname.value===""){
		$("#dialogCompanyName").dialog("open");
		regCard.companyname.focus();
	}else if(regCard.image.value===""){
		alert("이미지를 선택하세요");
		regCard.image.focus();
	}else if(regCard.url.value===""){
		alert("url을 입력하세요");
		regCard.url.focus();
	}else{
		regCard.submit();
	}
}
</script>
<h1>STEP 1</h1>
<form action="insertbene" name="regCard" method="post">
<input type="hidden" name="cardno" id="cardno">
<table>
<tr>
<td>카드명</td><td><input type="text" name="cardname" id="cardname"></td>
</tr>
<tr>
<td>카드회사</td><td><input type="text" name="companyname" id="companyname"></td>
</tr>
<tr>
<td>이미지</td><td>
	<div id="image_container" style="width: 10%;"></div>
				<input type="file" id="image" accept="image/*" name="image"
					size="10" onchange="setThumbnail(event)">
				<script>
					function setThumbnail(event) {
						var reader = new FileReader();
						reader.onload = function(event) {
							var old = document.getElementById("replace");
							var img = document.createElement("img");
							img.setAttribute("src", event.target.result);
							img.setAttribute("id", "replace");
							img.setAttribute("name", "image");
							img.setAttribute("width", "100");
							if (old == null)
								document.querySelector("div#image_container").appendChild(img);
							else
								document.querySelector("div#image_container").replaceChild(img, old);

						};
						reader.readAsDataURL(event.target.files[0]);
					}
				</script></td>
</tr>
<tr>
<td>카드 구분</td>
<td>
<select name="partcard">
<option value="신용" checked = "checked">신용카드</option>
<option value="체크">체크카드</option>

</select>
</td>
</tr>
<tr>
<td>url</td><td><input type="text" name="url"></td>

</tr>
</table>
<input type="button" value="-->" id="subButton">

</form>
<div id="dialogCardName" title="경고">
	카드명을 올바른 형식으로 입력해 주십시오.
</div>
<div id="dialogCompanyName" title="경고">
	회사명을 올바른 형식으로 입력해 주십시오.
</div>
</body>
</html>