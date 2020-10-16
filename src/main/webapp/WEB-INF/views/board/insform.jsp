<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link
   href="${pageContext.request.contextPath}/resources/css2/style2.css"
   rel="stylesheet">

<script type="text/javascript">
/*
   window.onload = function() {
      document.getElementById("write").addEventListener("click", funcWrite,
            false);
   }
   function funcWrite() {
      if (insform.name.value === "") {
         alert("이름 입력");
         insform.name.focus();
      } else if (insform.pwd.value === "") {
         alert("암호 입력");
         insform.pwd.focus();
      } else if (insform.email.value === "") {
         alert("이메일 입력");
         insform.email.focus();

      } else if (insform.title.value === "") {
         alert("제목 입력");
         insform.title.focus();
      } else if (insform.cont.value === "") {
         alert("내용 입력");
         insform.title.focus();
      } else
         insform.submit();
   }
   */
   function check() {
      var name = document.getElementById('name').value;
      var pass = document.getElementById('pwd').value;
      var mail = document.getElementById('mail').value;
      var title = document.getElementById('title').value;
      var cont = document.getElementById("cont").value;

      var nameCheck = /^[가-힣]{2,6}$/;
      var passCheck = "";
      var mailCheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
      var titleCheck = "";
      var contCheck = "";
      if (!nameCheck.test(name)) {
         alert("이름 입력");
         insform.name.focus();
      } else if (pass=="") {
         alert("암호 입력");
         insform.pass.focus();
      } else if (!mailCheck.test(mail)) {
         alert("이메일 입력");
         insform.mail.focus();
      } else if (title=="") {
         alert("제목 입력");
         insform.title.focus();
      } else if (cont=="") {
         alert("제목 입력");
         insform.title.focus();
      } else {
         if (confirm('작성하겠습니까?')) {
            insform.submit();
         } else
            return false;
      }
   }
</script>
</head>
<body>
   <%@ include file="../topbottom/cardtoptest.jsp"%>
   <%@ include file="../topbottom/qnatest.jsp"%>

   <section class="ftco-section bg-light">
      <div class="container">
         <div class="row">
            <div class="col-md-12 col-lg-8 mb-5">
               <form name="insform" action="insertboardguest" method="post"
                  class="p-5 bg-white">
                  <input type="hidden" name="id" value=<%=memid%>>


                  <%
                     if (memid != null) {
                  %>

                  <div class="row form-group">
                     <div class="col-md-12 mb-3 mb-md-0">
                        <label class="font-weight-bold" for="fullname">이름</label> <input
                           type="text" name="name" id="name" class="form-control"
                           value="${dto.irum }">
                     </div>
                  </div>

                  <div class="row form-group mb-5">
                     <div class="col-md-12 mb-3 mb-md-0">
                        <label class="font-weight-bold" for="fullname">암호</label> <input
                           type="text" id="pwd" name="pwd" class="form-control"
                           value="${dto.pwd }">
                     </div>
                  </div>
                  <div class="row form-group mb-5">
                     <div class="col-md-12 mb-3 mb-md-0">
                        <label class="font-weight-bold" for="fullname">메일</label> <input
                           type="text" id="mail" name="mail" class="form-control"
                           value="${dto.email }">
                     </div>
                  </div>
                  <%
                     } else {
                  %>
                  <div class="row form-group">
                     <div class="col-md-12 mb-3 mb-md-0">
                        <label class="font-weight-bold" for="fullname">이름</label> <input
                           type="text" id="name" name="name" class="form-control"
                           placeholder="이름 입력">
                     </div>
                  </div>

                  <div class="row form-group mb-5">
                     <div class="col-md-12 mb-3 mb-md-0">
                        <label class="font-weight-bold" for="fullname">암호</label> <input
                           type="text" id="pwd" name="pwd" class="form-control"
                           placeholder="암호 입력">
                     </div>
                  </div>
                  <div class="row form-group mb-5">
                     <div class="col-md-12 mb-3 mb-md-0">
                        <label class="font-weight-bold" for="fullname">메일</label> <input
                           type="text" id="mail" name="mail" class="form-control"
                           placeholder="이메일 입력">
                     </div>
                  </div>
                  <%
                     }
                  %>
                  <div class="row form-group mb-4">
                     <div class="col-md-12">
                        <h3>제목</h3>
                     </div>
                     <div class="col-md-12 mb-3 mb-md-0">
                        <input type="text" class="form-control" id="title" name="title"
                           placeholder="제목 입력하세요">

                     </div>
                  </div>

                  <div class="row form-group">
                     <div class="col-md-12">
                        <h3>내용</h3>
                     </div>
                     <div class="col-md-12 mb-3 mb-md-0">
                        <textarea name="cont" id="cont" class="form-control" id=""
                           cols="30" rows="5"></textarea>
                     </div>
                  </div>

                  <div class="row form-group">
                     <div class="col-md-12">
                        <input type="button" id="write" value="Post" onclick="check()"
                           class="btn btn-primary  py-2 px-5">
                     </div>
                  </div>


               </form>
            </div>

            <div class="col-lg-4">
               <%
                  if (memid != null) {
               %>
               <div class="p-4 mb-3 bg-white">
                  <h3 class="h5 text-black mb-3">Contact Info</h3>

                  <p class="mb-0 font-weight-bold">Phone</p>
                  <p class="mb-4">
                     <a href="#">${dto.phonenum }</a>
                  </p>

                  <p class="mb-0 font-weight-bold">Email Address</p>
                  <p class="mb-0">
                     <a href="#"><span class="__cf_email__"
                        data-cfemail="671e081215020a060e0b2703080a060e094904080a">${dto.email }</span></a>
                  </p>

               </div>
               <%
                  } else {
               %>
               <div class="p-4 mb-3 bg-white">
                  <h3 class="h5 text-black mb-3">Contact Info</h3>

                  <p class="mb-0 font-weight-bold">Phone</p>
                  <p class="mb-4">
                     <a href="#">로그인하십시오</a>
                  </p>

                  <p class="mb-0 font-weight-bold">Email Address</p>
                  <p class="mb-0">
                     <a href="#"><span class="__cf_email__"
                        data-cfemail="671e081215020a060e0b2703080a060e094904080a">로그인하십시오</span></a>
                  </p>
                  <%
                     }
                  %>
               </div>


            </div>
         </div>
      </div>
   </section>
   </form>
   <%@ include file="../topbottom/cardbottom.jsp"%>
</body>
</html>