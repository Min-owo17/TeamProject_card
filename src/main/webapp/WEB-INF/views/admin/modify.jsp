<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
});

	var oTbl;

	var count = 1;
	//유효성 검사
	function nullValCheck() {
		var check = true;
		for (var j = 0; j < count; j++) {

			if ($("input[name=beneArr]:eq(" + j + ")").val() == ""
					|| $("input[name=beneArr]:eq(" + j + ")").val() == null) {
				$("#dialogBlank").dialog("open");
				check = false;
				break;
			}
		}
		if (check == true) {
			if (frm.cardname.value == "")
				$("#dialogBlank").dialog("open");
			else if (frm.companyname.value == "")
				$("#dialogBlank").dialog("open");
			else {
				if(confirm("정말 수정하시겠습니까?")){
					frm.submit();
				}else
					return false;
			}
		} else {
			return false;
		}

	}
	//행 추가
	function insRow() {
		oTbl = document.getElementById("addTable");
		var rowno = document.getElementById("addTable").rows.length;
		//alert(rowno);
		oRow = oTbl.insertRow(rowno);
		oRow.onmouseover = function() {
			oTbl.clickedRowIndex = this.rowIndex
		};

		var oCell = oRow.insertCell();
		var frmTag = "<input type='text' id = 'beneArr' name='beneArr'>";
		frmTag += "<input type=button value='삭제' onclick='removeRow()' style='cursor:hand'>";
		oCell.innerHTML = frmTag;
	}
	//tr 삭제하기 위해 인덱스 찾기
	function upTo(el, tagName) {
		tagName = tagName.toLowerCase();

		while (el && el.parentNode) {
			el = el.parentNode;
			if (el.tagName && el.tagName.toLowerCase() == tagName) {
				return el;
			}
		}
		return null;
	}
	//행 삭제
	function removeRow(el) {
		var row = upTo(el, 'tr')
		if (row)
			row.parentNode.removeChild(row);

	}
</script>
</head>
<body>
   <%@ include file="../board/admintop.jsp"%>
	<link rel="stylesheet"
		href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>

	<form action="updatecardinfo" id="frm" name="frm" method="post">
		<table>
			<tr>
				<td><input type="hidden" name="cardno" id="cardno"
					value="${dto.cardno  }"> <input type="hidden" name="page"
					value="1"> 카드명</td>
				<td><input type="text" name="cardname" id="cardname"
					value="${dto.cardname }">
			</tr>
			<tr>
				<td>카드사</td>
				<td><input type="text" name="companyname" id="companname"
					value="${dto.companyname }"></td>
			</tr>
			<tr>
				<td>이미지</td>
				<td><img
					src="${pageContext.request.contextPath}/resources/image/${dto.image}"
					width="100"></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<div id="image_container" style="width: 10%;"></div> <input
					type="file" id="image" accept="image/*" name="image" size="10"
					onchange="setThumbnail(event)"> <script>
						function setThumbnail(event) {
							var reader = new FileReader();
							reader.onload = function(event) {
								var old = document.getElementById("replace");
								var img = document.createElement("img");
								img.setAttribute("src", event.target.result);
								img.setAttribute("id", "replace")
								img.setAttribute("width", "100");
								if (old == null)
									document.querySelector(
											"div#image_container").appendChild(
											img);
								else
									document.querySelector(
											"div#image_container")
											.replaceChild(img, old);

							};
							reader.readAsDataURL(event.target.files[0]);
						}
					</script>
				</td>
			</tr>
			<tr>
				<td>혜택리스트 &nbsp;<input name="addButton" type="button"
					style="cursor: hand" onclick="insRow()" value="추가"></td>
				<td>

					<table id="addTable">
						<c:forEach var="b" items="${bene}">
							<tr>
								<td><input type="text" id="beneArr" name="beneArr"
									value="${b.benefit}"> <input type="button" value='삭제'
									onclick='removeRow(this)' style='cursor: hand'> <input
									type="hidden" value="${b.benefitno }"> <input
									type="hidden" value="${b.cardno }"> <br></td>
							</tr>
						</c:forEach>
					</table>
				</td>
			</tr>

			<tr>
				<td><input type="button" value="수정완료" onclick="nullValCheck()">
				</td>
			</tr>
		</table>
	</form>
	<div id="dialogBlank" title="경고">공란을 모두 채워주십시오.</div>
	   <%@ include file="../board/adminbottom.jsp"%>
</body>
</html>