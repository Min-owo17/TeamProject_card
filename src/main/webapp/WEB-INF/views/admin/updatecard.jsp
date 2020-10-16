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
<script>
function delcheck(no){
	   if(confirm("정말 삭제하시겠습니까?")){
	      location.href="deletecard?no=" + no;
	      return true;
	   }else{
	      false;
	   }
	}
</script>
   <%@ include file="../board/admintop.jsp"%>
   <input type="submit" value="카드 추가하기"
      onclick="location.href='insertcard'">
   <form action="searchcardadmin" method="post">
      <select name="searchVal">
         <!-- 카드명과 은행명으로 검색이 가능함. -->
         <option value="cardname">카드명</option>
         <option value="companyname">카드사</option>
      </select> 
      <input type="text" name="name"> <input type="submit"
         value="검색">
   </form>

   <div class="col-md-12">
      <div class="card">
         <div class="header">
            <h4 class="title">카드정보</h4>
            <p class="category"></p>
         </div>
         <div class="content table-responsive table-full-width">
            <table class="table table-hover table-striped">
               <thead>
                  <th>카드 번호</th>
                  <th>카드명</th>
                  <th>카드사</th>
               </thead>
               <tbody>
                  <c:forEach items="${dto}" var="l">

                     <tr>
                        <td>${l.cardno }</td>
                        <td>${l.cardname }</td>
                        <td>${l.companyname }</td>
                        <td align="center"><a href="modifycard?no=${l.cardno }">수정</a></td>
                        <td align="center"><a href="#" onclick ="delcheck(${l.cardno })"> 삭제</a></td>
                  </c:forEach>
                  <!-- paging -->
                  <tr style="text-align: center;">
                     <td colspan="5"><c:forEach var="i" begin="1"
                           end="${pageSu }">
                           <c:if test="${i == page }">
                              <b>${i }</b>
                           </c:if>
                           <c:if test="${i != page }">
                              <a href="updatecard?page=${i}">${i}</a>
                           </c:if>
                        </c:forEach></td>
                  </tr>
               </tbody>
            </table>
         </div>
      </div>
   </div>
   <%@ include file="../board/adminbottom.jsp"%>
</body>
</html>