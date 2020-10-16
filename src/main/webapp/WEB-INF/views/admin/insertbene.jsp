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
	var i = 0;
	var count = 1;

	function insRow() {
		i++;
		count++;

		oTbl = document.getElementById("addTable");
		var oRow = oTbl.insertRow();
		oRow.onmouseover = function() {
			oTbl.clickedRowIndex = this.rowIndex
		};

		var oCell = oRow.insertCell();
		var frmTag = "<input type='text' id = 'addText0' name='addText0'>";
		frmTag += "<input type=button value='삭제' onclick='removeRow()' style='cursor:hand'>";
		frmTag += "<input type='hidden' name='count' value='"+count+"'>";
		oCell.innerHTML = frmTag;
	}

	function removeRow() {
		oTbl.deleteRow(oTbl.clickedRowIndex);
		--count;
	}

	function benefitcheck() {

		var check = true;
		for (var j = 0; j < count; j++) {

			if ($("input[name=addText0]:eq(" + j + ")").val() == ""
					|| $("input[name=addText0]:eq(" + j + ")").val() == null) {
				$("#dialogBlank").dialog("open");
				check = false;
				break;
			}
		}
		if (check == true) {
			frm.submit();
		} else {
			return false;
		}
	}
</script>
	<h1>STEP 2</h1>
	혜택 추가
	<br>
	<form name="frm" method="post" action="insertFinish">

		<table>
			<tr>
				<td colspan="5"><input name="addButton" type="button"
					style="cursor: hand" onclick="insRow()" value="추가"></td>
			</tr>
			<tr>
				<td>
					<table id="addTable">
						<tr>
							<td><input type="text" id="addText0" name="addText0"></td>
							<td></td>
							<td></td>
						</tr>
					</table>
			</tr>
		</table>
		<table>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td><input type="button" id="subButton" value="확인"
					onclick="benefitcheck()"></td>
			</tr>
			<div id="dialogBlank" title="경고">공란을 모두 채워주십시오.</div>
		</table>
	</form>
	   <%@ include file="../board/adminbottom.jsp"%>
</body>
</html>