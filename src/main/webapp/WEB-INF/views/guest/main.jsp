<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>PICKCL</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maintop2/css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maintop2/css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maintop2/css/owl.carousel.min.css">
    <!-- themify CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maintop2/css/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maintop2/css/flaticon.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maintop2/css/magnific-popup.css">
    <!-- swiper CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maintop2/css/swiper.min.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maintop2/css/style.css">
</head>

<body>
  <%@ include file="../topbottom/cardtoptest.jsp" %> 

    <!-- banner part start-->
    <section class="banner_part" style="background-image: url('${pageContext.request.contextPath}/resources/maintop2/img/PICKCLmain.jpg');">
        <div class="container">
            <div class="row align-content-center">
                <div class="col-lg-7 col-xl-5">
                    <div class="banner_text">
                        <h1><span>PICKCL</span><br> 
                               <span style="color: white"> Card&Loan </span></h1>
                                <br>
                       
                        <a href="cardlist?val=" class="btn_1">카드 바로가기 <span class="ti-angle-right"></span> </a> <br>
                        <a href="loanList" class="btn_1">대출 바로가기 <span class="ti-angle-right"></span> </a> <br>
                        <a href="adminlogin" class="btn_1">관리자 바로가기 <span class="ti-angle-right"></span> </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- banner part start-->

    

    <!-- jquery plugins here-->
    <!-- jquery -->
    <script src="${pageContext.request.contextPath}/resources/maintop2/js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
    <script src="${pageContext.request.contextPath}/resources/maintop2/js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="${pageContext.request.contextPath}/resources/maintop2/js/bootstrap.min.js"></script>
    <!-- aos js -->
    <script src="${pageContext.request.contextPath}/resources/maintop2/js/aos.js"></script>
    <!-- easing js -->
    <script src="${pageContext.request.contextPath}/resources/maintop2/js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="${pageContext.request.contextPath}/resources/maintop2/js/swiper.min.js"></script>
    <!-- swiper js -->
    <script src="${pageContext.request.contextPath}/resources/maintop2/js/masonry.pkgd.js"></script>
    <!-- particles js -->
    <script src="${pageContext.request.contextPath}/resources/maintop2/js/owl.carousel.min.js"></script>
    <!-- carousel js -->
    <script src="${pageContext.request.contextPath}/resources/maintop2/js/swiper.min.js"></script>
    <!-- swiper js -->
    <script src="${pageContext.request.contextPath}/resources/maintop2/js/swiper_custom.js"></script>
    <!-- custom js -->
    <script src="${pageContext.request.contextPath}/resources/maintop2/js/custom.js"></script>


<%@ include file="../topbottom/cardbottom.jsp" %>
</body>

</html>