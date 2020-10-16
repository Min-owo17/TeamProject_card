<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   String memberid = (String) session.getAttribute("idKey"); //idKey 는 LoginController
//에서 submit(session) 에서 객체 생성된거를 불러옵니다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PICKCL</title>
<!--  
<link rel="stylesheet"
   href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
 -->
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

   function check() {
      var name = document.getElementById('irum').value;
      var jumin = document.getElementById('jumin').value;
      var email = document.getElementById('email').value;
      var phone = document.getElementById('phone').value;

      var nameCheck = /^[가-힣]{2,6}$/;
      var juminCheck = /^\d{7}$/;
      var emailCheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
      var phoneCheck = /^\d{2,3}\d{3,4}\d{4}$/;
      if (!nameCheck.test(name)) {
         alert("이름을 올바른 형식으로 입력해주세요");
         return false;
      } else if (!juminCheck.test(jumin)) {
    	   alert("주민번호를 올바른 형식으로 입력해주세요");
         frm.jumin.focus();
         return false;
      } else if (!emailCheck.test(email)) {
    	   alert("이메일을 올바른 형식으로 입력해주세요");
         frm.email.focus();
         return false;
      } else if (!phoneCheck.test(콜)) {
    	   alert("전화번호를 올바른 형식으로 입력해주세요");
         frm.phone.focus();
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
   <%@ include file="../topbottom/cardtoptest.jsp"%>
   <%@ include file="../topbottom/mypagetest.jsp" %>
   <form action="memupdate" method="post" name="frm">
      <input type="hidden" name="id" value="${dto.id}">

      <div class="col-md-9">
         <div class="card">
            <div class="card-body">
               <div class="row">
                  <div class="col-md-12">
                     <h4>정보 수정</h4>
                     <hr>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-12">

                     <div class="form-group row">
                        <label for="username" class="col-4 col-form-label">이름</label>
                        <div class="col-8">
                           <input type="text" id="irum" name="irum" size="15"
                              value="${dto.irum}">
                        </div>
                     </div>
                     <div class="form-group row">
                        <label for="name" class="col-4 col-form-label">주민 번호</label>
                        <div class="col-8">
                           <input type="text" id="jumin" name="jumin" size="25"
                              value="${dto.jumin }">
                        </div>
                     </div>
                     <div class="form-group row">
                        <label for="lastname" class="col-4 col-form-label">이메일</label>
                        <div class="col-8">
                           <input type="text" id="email" name="email" size="50"
                              value="${dto.email}">
                        </div>
                     </div>
                     <div class="form-group row">
                        <label for="text" class="col-4 col-form-label">전화번호</label>
                        <div class="col-8">
                           <input type="text" id="phone" name="phonenum" size="25"
                              value="${dto.phonenum }">
                        </div>
                     </div>
                     <div>
                        <tr>
                           <td colspan="2" align="center" height="30"><input
                              type="button" value="메  인" onClick="location.href='main'">&nbsp;
                              <input type="button" value="수 정" onclick="check()"></td>
                        </tr>
                     </div>
                  </div>

               </div>
            </div>
         </div>
      </div>

     
      <%@ include file="../topbottom/cardbottom.jsp"%>
   </form>
</body>
</html>