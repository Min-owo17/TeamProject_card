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
   <%@ include file="../topbottom/choosingtoptest.jsp" %>
   <% 
String memberid = (String) session.getAttribute("idKey");
if(memberid ==null){
	response.sendRedirect("memlogin");
}

%>
 <section style="background-image:url('${pageContext.request.contextPath}/resources/choosingimg/background.jpg');">
  <form action="benelist" method="post" name="frm"  >
<div class="checkboxes-and-radios" >
  <h1>카드 종류 </h1>
  <input type="radio" name="type" id="radio-1" value="%" checked="checked">
  <label for="radio-1">전체</label> <br>
  <input type="radio" name="type" id="radio-2" value="신용">
  <label for="radio-2">신용카드</label> <br>
  <input type="radio" name="type" id="radio-3" value="체크" >
  <label for="radio-3">체크카드</label>
  <h1>카테고리</h1>
  <input type="checkbox" name="benefit"  value="전체" checked="checked">
  <label for="checkbox-1">전체</label> <br>
  <input type="checkbox" name="benefit"  value="교통" >
  <label for="checkbox-1">교통비</label> <br>
  <input type="checkbox" name="benefit"  value="주유" >
  <label for="checkbox-1">주유</label> <br>
  <input type="checkbox" name="benefit"  value="영화" >
  <label for="checkbox-1">영화</label> <br>
  <input type="checkbox" name="benefit"  value="편의점" >
  <label for="checkbox-1">편의점</label> <br>
  <input type="checkbox" name="benefit"  value="약국" >
  <label for="checkbox-1">약국</label> <br>
  <input type="checkbox" name="benefit"  value="카페">
  <label for="checkbox-2">카페</label> <br>
  <input type="checkbox" name="benefit"  value="통신">
  <label for="checkbox-3">통신</label> <br>
   <input type="checkbox" name="benefit"  value="서점">
  <label for="checkbox-2">서점</label> <br>
   <input type="checkbox" name="benefit"  value="인터넷쇼핑">
  <label for="checkbox-2">인터넷쇼핑</label> <br>
   <input type="checkbox" name="benefit"  value="패스트푸드">
  <label for="checkbox-2">패스트푸드</label> <br>
   <input type="checkbox" name="benefit"  value="패밀리">
  <label for="checkbox-2">패밀리레스토랑</label> <br>
 <input type="button"  class="btn btn-success" value="검색" onclick="javascript:checkboxtest()">
 
</div>	
</form >
</section>

  </body>
  <%@ include file="../topbottom/cardbottom.jsp" %>
</html>