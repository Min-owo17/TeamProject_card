<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Login V1</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
   href="${pageContext.request.contextPath}/resources/guk/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/guk/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/guk/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/guk/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/guk/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/guk/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/guk/css/util.css">
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/guk/css/main.css">
<!--===============================================================================================-->
</head>
<body>

   <div class="limiter">
      <div class="container-login100">
         <div class="wrap-login100">
            <div class="login100-pic js-tilt" data-tilt>
               <img
                  src="${pageContext.request.contextPath}/resources/guk/images/pickcllogin.png"
                  alt="IMG">
            </div>
            <form class="login100-form validate-form" action="adminlogin"
               method="post">
               <span class="login100-form-title"> 관리자 로그인 </span>
               
               <div class="wrap-input100 validate-input"
                  data-validate="Valid email is required: ex@abc.xyz">
                  <input class="input100" type="text" name="id" placeholder="Id">
                   <span class="symbol-input100">
                     <i class="fa fa-address-card" aria-hidden="true"></i>
                  </span>
               </div>

               <div class="wrap-input100 validate-input"
                  data-validate="Password is required">
                  <input class="input100" type="password" name="pwd"
                     placeholder="Password"> 
                  <span class="symbol-input100"> <i class="fa fa-lock"
                     aria-hidden="true"></i>
                  </span>
               </div>

               <div class="container-login100-form-btn">
                  <button class="login100-form-btn">Login</button>
               </div>
            </form>
         </div>
      </div>
   </div>
   <!--===============================================================================================-->
   <script
      src="${pageContext.request.contextPath}/resources/guk/vendor/jquery/jquery-3.2.1.min.js"></script>
   <!--===============================================================================================-->
   <script
      src="${pageContext.request.contextPath}/resources/guk/vendor/bootstrap/js/popper.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/guk/vendor/bootstrap/js/bootstrap.min.js"></script>
   <!--===============================================================================================-->
   <script
      src="${pageContext.request.contextPath}/resources/guk/vendor/select2/select2.min.js"></script>
   <!--===============================================================================================-->
   <script
      src="${pageContext.request.contextPath}/resources/guk/vendor/tilt/tilt.jquery.min.js"></script>
   <script>
      $('.js-tilt').tilt({
         scale : 1.1
      })
   </script>
   <!--===============================================================================================-->
   <script
      src="${pageContext.request.contextPath}/resources/guk/js/main.js"></script>
      <%@ include file="../board/adminbottom.jsp" %>
</body>
</html>