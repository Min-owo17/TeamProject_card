<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
  <title>PICKCL</title>
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>

<script type="text/javascript">




$(function() {
   $("#dialogBlank").dialog({
      autoOpen : false, //자동으로 열리지않게
      modal : true, //모달대화상자
      resizable : false, //크기 조절 못하게
      width : "430px",   // dialog 너비 지정

      buttons : {
         "확인" : function() {
            $(this).dialog("close");
         }
      }
   });
});
</script>

   <style type="text/css">
    #overlay {
    visibility: hidden;
    position: absolute;
    left: 0px;
    top: 0px;
    width:100%;
    height:100%;
    text-align:center;
    z-index: 1000;
 }
body {
  background: #0288D1;
}

.checkboxes-and-radios {
  margin: 80px auto 0;
  width: 280px;
  padding: 30px;
  background: #fafafa;

  input {
    display: none;
  }

  label {
    cursor: pointer;
    padding-right: 35px;
    position: relative;
    display: block;
    font-size: 18px;
    padding: 15px 0
  }

  input[type="checkbox"], input[type="radio"] {
    position: absolute; 
    visibility: hidden !important;
  }

  input[type="checkbox"] + label, input[type="radio"] + label {

    &:before,
    &:after {
      content: '';
      position: absolute;
      top: 50%;
      margin-top: -7.5px;
      box-sizing: border-box;
    }

    &:before {

      width: 30px;
      height: 15px;
      right: 0px;
      background: #fff;
      border: 1px solid #e4e3e1;
      border-radius: 15px;
    }

    &:after {
      width: 15px;
      height: 15px;
      right: 15px;
      background: #BDBDBD;
      border-radius: 50%;
      transition: all 200ms ease-out;
    }
  }

  input[type="checkbox"]:checked + label, input[type="radio"]:checked + label {

    &:after {
      right: 0px;
      background: #FF9800;
    }
  }
}
   </style>  
   <script type="text/javascript">
//체크박스를 한 개 이상 선택했는지 확인하는 함수
function checkboxtest(){
	var arrcount = frm.benefit.length;
	var check1 = false;
	for(var i=0;i<arrcount;i++){
		if(frm.benefit[i].checked == true){
			check1 = true;
			break;
		}
	}
	
	if(!check1){
		$("#dialogBlank").dialog("open");
		return false;
	}else{
		frm.submit();
	}
}
</script> 
  </head>
  <body>
  <%@ include file="../topbottom/cardtoptest.jsp" %>
   <%@ include file="../topbottom/loanchoosingtest.jsp" %>
   <% 
String memberid = (String) session.getAttribute("idKey");
if(memberid ==null){
	response.sendRedirect("memlogin");
}

%>
<script>
$(function(){
	$("#dialogInterest").dialog({
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
function overlay() {
    el = document.getElementById("overlay");
   el.style.visibility = (el.style.visibility == "visible") ? "hidden" : "visible";
 }
function check(){
	if(frm.max.value ===""){
		//$("#dialogInterest").dialog("open");
		overlay();
		
		frm.max.focus();
	}else{
		frm.submit();
	}
}
function updateTextInput(val) {
    document.getElementById('textInput').value=val; 
  }
</script>
 <section style="background-image:url('${pageContext.request.contextPath}/resources/choosingimg/loan.jpg');">
  <form action="loanchoose" method="post" name="frm"  >
<div class="checkboxes-and-radios" >
  <h1>이자율 입력 </h1> <br> <br>
  	<h6> 원하시는 이자율을 입력하세요 </h6> <br> <br>
  	 <input type="range" name="max" min="3" value ="3" max="15" onchange="updateTextInput(this.value)"> 
	<input type="text" id="textInput" value="" style="width:30px;" ><td>%</td> <br> <br> <br> <br>
	
	<h6>상환 기간을 골라주세요</h6> <br> <br> 
  <input type="radio" name="period" id="radio-1" value="%" checked="checked">
  <label for="radio-1">전체</label> <br> <br>
  <input type="radio" name="period" id="radio-2" value="6">
  <label for="radio-2">6개월</label> <br> <br>
  <input type="radio" name="period" id="radio-3" value="12" >
  <label for="radio-3">12개월</label>
  <br> <br>
 <input type="button"  class="btn btn-success" value="검색" onclick="check()">
 
</div>	
</form >
</section>
<div id="overlay">
<div>
<p>이자율을 입력해주세요</p>
</div>
</div>
  </body>
  <%@ include file="../topbottom/cardbottom.jsp" %>
</html>