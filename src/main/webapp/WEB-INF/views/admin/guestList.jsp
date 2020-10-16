<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PICKCL ADMIN</title>
</head>
<body>
   <%@ include file="../board/admintop.jsp"%>
   <form action="guestsearch" method="post">
      <select name="option">
         <option value="id">아이디</option>
         <option value="name">이름</option>
      </select> <input type="text" name="word"> <input type="submit" value="검색">
   </form>


   <div class="col-md-12">
      <div class="card">
         <div class="header">
            <h4 class="title">회원정보</h4>
            <p class="category"></p>
         </div>
         <div class="content table-responsive table-full-width">
            <table class="table table-hover table-striped">
               <thead>
                  <th>아이디</th>
                  <th>이름</th>
                  <th>이메일</th>
               </thead>
               <tbody>
                  <c:forEach items="${list}" var="c">

                     <tr>
                        <td><a href="guestInfo?id=${c.id}">${c.id}</a></td>
                        <td>${c.irum}</td>
                        <td>${c.email}</td>
                     </tr>

                  </c:forEach>

                  <table>
                     <!-- paging -->
                     <tr style="text-align: center;">
                        <td colspan="5"><c:forEach var="i" begin="1"
                              end="${pageSu }">
                              <c:if test="${i == page }">
                                 <b>${i }</b>
                              </c:if>
                              <c:if test="${i != page }">
                                 <a href="guestList?page=${i}">${i}</a>
                              </c:if>
                           </c:forEach></td>
                     </tr>
                  </table>
               </tbody>
            </table>
         </div>
      </div>
   </div>



   <%@ include file="../board/adminbottom.jsp"%>
</body>
</html>