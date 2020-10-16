<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>게시판</title>
<link
   href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
   rel="stylesheet" id="bootstrap-css">
<script
   src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
   src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
:root { -
   -teal-color: purple;
   -purple-color: #9E41CC;
}

body {
   background-color: beige;
   color: #faebd7;
}

ul {
   padding: 0;
   list-style: none;
}

.topics-table {
   margin-top: 1rem;
   padding: 8px;
   border: solid;
   border-radius: 10px;
}

.topics-table a {
   border: solid;
   color: green;
   font-size: 15px;
}

ul.header-titles, li.topics-body, li.topics-body ul {
   overflow: hidden;
}

ul.header-titles {
   font-family: "Times New Roman", Times, serif;
}

li.topics-body ul {
   background-color: beige;
}

li.topics-header, ul[class^='topic-item-'] {
   padding: 15px;
}

ul[class^='topic-item-'] {
   border-top: 1px solid pink;
}

.header-titles li, ul[class^='topic-item-'] li {
   font-size: 15px;
   width: 25%;
   float: left;
}

.badge {
   font-weight: bold;
}
</style>

</head>
<body>
   <%@ include file="../topbottom/cardtoptest.jsp"%>
   <%@ include file="../topbottom/qnatest.jsp"%>
   
   <div class="container" align="left">

      <c:forEach var="i" begin="1" end="${pageSu }">
         <c:if test="${i == page }">
            <b>페이지: ${i }</b>
         </c:if>
         <c:if test="${i != page }">
            <a href="list?page=${i}"> ${i}</a>
         </c:if>

      </c:forEach>

      <div class="row">
         <div class="col-12">
            <table>
               <tr>
                  <td>[<a href="list?page=1">최근목록</a>]&nbsp;
                  </td>
               </tr>
            </table>


            <ul class="topics-table">
               <li class="topics-header">
                  <ul class="header-titles">
                     <li>제목</li>
                     <li>번호</li>
                     <li>작성자</li>
                     <li>작성일</li>
                  </ul>
               </li>
               <c:forEach var="b" items="${datas}">
                  <!-- 댓글 들여쓰기 준비-->
                  <c:set var="tab" value="" />
                  <c:forEach var="n" begin="1" end="${b.nested}">
                     <c:set var="tab" value="${tab}&nbsp;&nbsp;" />
                  </c:forEach>
                  <li class="topics-body">
                     <ul class="topic-item-1">
                        <li>${tab}${tab}<a class="badge "
                           href="detail?num=${b.num}&page=${page}&id=<%=memid%>">${b.title}</a>
                        </li>
                        <li>${b.num}</li>
                        <li>${b.name}</li>
                        <li><td>${b.bdate}
                        <td>
                              <p class="bbp-topic-meta">
                                 <span class="bbp-topic-freshness-author"> <a
                                    class="bbp-author-name badge badge-info" rel="nofollow">
                                       조회수: ${b.readcnt}</a>
                                 </span>
                              </p></li>
                     </ul>

                  </li>
               </c:forEach>

            </ul>
            <br> <br>

            <c:forEach var="i" begin="1" end="${pageSu }">
               <c:if test="${i == page }">
                  <b>페이지: ${i }</b>
               </c:if>
               <c:if test="${i != page }">
                  <a href="list?page=${i}"> ${i}</a>
               </c:if>
            </c:forEach>

            <br> <br>
         </div>
      </div>
   </div>

   <%@ include file="../topbottom/cardbottom.jsp"%>
</body>

</html>