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


</head>
<body>
   <%@ include file="../topbottom/cardtoptest.jsp"%>
   <%@ include file="../topbottom/qnatest.jsp" %>
   <section class="ftco-section bg-light">
      <div class="container">
         <div class="row">
            <div class="col-md-12 col-lg-8 mb-5">
               <form action="update" method="post">
                  <input type="hidden" name="num" value="${data.num}"> <input
                     type="hidden" name="page" value="${page}">



                  <div class="row form-group">
                     <div class="col-md-12 mb-3 mb-md-0">
                        <label class="font-weight-bold" for="fullname">이름</label> <input
                           type="text" name="name" class="form-control"
                           readonly="readonly" value="${data.name }">
                     </div>
                  </div>

                  <div class="row form-group mb-5">
                     <div class="col-md-12 mb-3 mb-md-0">
                        <label class="font-weight-bold" for="fullname">암호</label> <input
                           type="text" name="pwd" class="form-control" placeholder="암호 입력"
                           value=${dto.pwd }>
                     </div>
                  </div>
                  <div class="row form-group mb-5">
                     <div class="col-md-12 mb-3 mb-md-0">
                        <label class="font-weight-bold" for="fullname">메일</label> <input
                           type="text" id="mail" name="mail" class="form-control"
                           value="${data.mail }">
                     </div>
                  </div>

                  <div class="row form-group mb-4">
                     <div class="col-md-12">
                        <h3>제목</h3>
                     </div>
                     <div class="col-md-12 mb-3 mb-md-0">
                        <input type="text" class="form-control" name="title"
                           value="${data.title }">

                     </div>
                  </div>

                  <div class="row form-group">
                     <div class="col-md-12">
                        <h3>내용</h3>
                     </div>
                     <div class="col-md-12 mb-3 mb-md-0">
                        <textarea name="cont" class="form-control" id="" cols="30"
                           rows="5">${data.cont}</textarea>
                     </div>
                  </div>

                  <div class="row form-group">
                     <div class="col-md-12">
                        <input type="submit" value="Update"
                           class="btn btn-primary  py-2 px-5">
                     </div>
                  </div>


               </form>
            </div>

            <div class="col-lg-4">
               <div class="p-4 mb-3 bg-white">
                  <h3 class="h5 text-black mb-3">More Info</h3>
                  <p>우리 웹사이트에 대해 더 궁굼하신점 있으시면 로그인 하고 FAQ 문의 해주세요! 감사합니다.</p>
                  <p>
                     <a href="#" class="btn btn-primary  py-2 px-4">Learn More</a>
                  </p>
               </div>
            </div>
         </div>
      </div>
   </section>
   </form>
   <%@ include file="../topbottom/cardbottom.jsp"%>
</body>
</html>