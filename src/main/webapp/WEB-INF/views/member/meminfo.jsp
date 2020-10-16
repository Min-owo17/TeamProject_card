<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   String memberid = (String) session.getAttribute("idKey"); //idKey 는 LoginController
//에서 submit(session) 에서 객체 생성된거를 불러옵니다.
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
   href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
   rel="stylesheet" id="bootstrap-css">
<script
   src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
   src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<body>
   <%@ include file="../topbottom/cardtoptest.jsp"%>
   <%@ include file="../topbottom/mypagetest.jsp"%>
   <form action="meminfo" method="post">
   <section>
      <div class="container">
         <div class="row">

            <div class="col-md-9">
               <div class="card">
                  <div class="card-body">
                     <div class="row">
                        <div class="col-md-12">
                           <h4>내정보</h4>
                           <hr>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-md-12">

                           <tr>
                              <td colspan="2"><h2>${dto.irum}</h2> <a
                                 href="getBoard?id=<%=memberid%>">내 게시글</a></td>
                           </tr>
                           <br> <br>
                           <div class="form-group row">
                              <label for="username" class="col-4 col-form-label">아이디</label>
                              <div class="col-8">
                                 <td>${dto.id}</td>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="username" class="col-4 col-form-label">이름</label>
                              <div class="col-8">
                                 <td>${dto.irum}</td>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="name" class="col-4 col-form-label">주민등록 번호</label>
                              <div class="col-8">
                                 <td>${dto.jumin}*****</td>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="lastname" class="col-4 col-form-label">이메일</label>
                              <div class="col-8">
                                 <td>${dto.email}</td>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="text" class="col-4 col-form-label">전화번호</label>
                              <div class="col-8">
                                 <td>${dto.phonenum}</td>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="select" class="col-4 col-form-label">내 계정 계급</label>
                              <div class="col-8">
                                 <select id="select" name="select" class="custom-select">
                                    <option value="Member" selected>Member</option>
                                 </select>
                              </div>
                           </div>



                           <div>
                              
                              <tr>
                                 <td colspan="2" align="center" height="30"><input
                                    type="button" value="메  인"
                                    onClick="location.href='main'">&nbsp; <input
                                    type="button" value="수정"
                                    onClick="location.href='memupdate?id=<%=memberid%>'">&nbsp;
                                    



                                 
                              </tr>
                           </div>

   

                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </form>
   </section>
   <%@ include file="../topbottom/cardbottom.jsp"%>
</body>
</html>