<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>PICKCL ADMIN</title>

<!-- PLUGINS CSS STYLE -->
<link
   href="${pageContext.request.contextPath}/resources/plugins/jquery-ui/jquery-ui.min.css"
   rel="stylesheet">
<!-- Bootstrap -->
<link
   href="${pageContext.request.contextPath}/resources/plugins/bootstrap/dist/css/bootstrap.min.css"
   rel="stylesheet">
<!-- Font Awesome -->
<link
   href="${pageContext.request.contextPath}/resources/plugins/font-awesome/css/font-awesome.min.css"
   rel="stylesheet">
<!-- Owl Carousel -->
<link
   href="${pageContext.request.contextPath}/resources/plugins/slick-carousel/slick/slick.css"
   rel="stylesheet">
<link
   href="${pageContext.request.contextPath}/resources/plugins/slick-carousel/slick/slick-theme.css"
   rel="stylesheet">
<!-- Fancy Box -->
<link
   href="${pageContext.request.contextPath}/resources/plugins/fancybox/jquery.fancybox.pack.css"
   rel="stylesheet">
<link
   href="${pageContext.request.contextPath}/resources/plugins/jquery-nice-select/css/nice-select.css"
   rel="stylesheet">
<link
   href="${pageContext.request.contextPath}/resources/plugins/seiyria-bootstrap-slider/dist/css/bootstrap-slider.min.css"
   rel="stylesheet">
<!-- CUSTOM CSS -->
<link href="${pageContext.request.contextPath}/resources/css/style.css"
   rel="stylesheet">

<!-- FAVICON 
  <link href="img/favicon.png" rel="shortcut icon">
-->
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>
<body>

   <!--===============================
=            1.상위 메뉴바          =
================================-->
   <section>
      <div class="container">
         <div class="row">
            <div class="col-md-">
               <nav class="navbar navbar-expand-lg  navigation">
                     <div class="section-title">
                     <a href="adminmain"> <img
                        src="${pageContext.request.contextPath}/resources/guk/images/pickclelogo.png"
                        alt="">
                     </a>
                  </div>
                  <button class="navbar-toggler" type="button"
                     data-toggle="collapse" data-target="#navbarSupportedContent"
                     aria-controls="navbarSupportedContent" aria-expanded="false"
                     aria-label="Toggle navigation">
                     <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     <ul class="navbar-nav ml-auto main-nav ">
                        <li class="nav-item active">
                        <a class="nav-link" href="updatecard?page=1">카드관리</a>
                     </li>
                     <li class="nav-item active">
                        <a class="nav-link" href="updateloan?page=1">대출관리</a>
                     </li>
                        <li class="nav-item"><a class="nav-link"
                           href="guestList?page=1">회원관리</a></li>
                        <li class="nav-item active">
                           <form action="adminboardlist" method="post">
                              <a class="nav-link" href="adminboardlist?page=1">QnA</a>
                           </form>
                              <li class="nav-item"><a class="nav-link"
                           href="adminlogout">홈페이지</a></li>
                        <li class="nav-item active">
                        </li>

                     </ul>

                  </div>
               </nav>
            </div>
         </div>
      </div>
   </section>



   <!-- JAVASCRIPTS -->

   <script
      src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/plugins/jquery-ui/jquery-ui.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/plugins/tether/js/tether.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/plugins/raty/jquery.raty-fa.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/plugins/bootstrap/dist/js/popper.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/plugins/bootstrap/dist/js/bootstrap.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/plugins/seiyria-bootstrap-slider/dist/bootstrap-slider.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/plugins/slick-carousel/slick/slick.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/plugins/jquery-nice-select/js/jquery.nice-select.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/plugins/fancybox/jquery.fancybox.pack.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/plugins/smoothscroll/SmoothScroll.min.js"></script>
   <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
   <script
      src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>

</body>

</html>