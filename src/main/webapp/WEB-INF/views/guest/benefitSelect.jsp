<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
<title>PICKCL </title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/benefitselect/assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/benefitselect/css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">
       <%@ include file="../topbottom/cardtoptest.jsp" %>
       <%@ include file="../topbottom/benefitSelecttest.jsp" %>
     
        <!-- Portfolio Section-->
        <section class="page-section portfolio" id="portfolio">
            <div class="container">
                
                <!-- Portfolio Grid Items-->
                <div class="row">
                    <!-- Portfolio Item 1-->
             
                    <div class="col-md-6 col-lg-4 mb-5">
                    <a href="benefitcategory?category=cafe&page=1">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal1">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                           <img class="img-fluid" src="${pageContext.request.contextPath}/resources/benefitselect/assets/img/portfolio/cafe.jpg" alt="" />
                        </div>
                        </a>
                        <br>
                       <h3 class="page-section-heading text-center text-uppercase text-secondary mb-0">카페</h2>
                    </div>
                    
                    <!-- Portfolio Item 2-->
                      
                    <div class="col-md-6 col-lg-4 mb-5">
                     <a href="benefitcategory?category=traffic&page=1">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal2">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/benefitselect/assets/img/portfolio/bus.jpg" alt="" />
                        </div>
                        </a>
                         <br>
                       <h3 class="page-section-heading text-center text-uppercase text-secondary mb-0">교통</h2>
                    </div>
                     
                    <!-- Portfolio Item 3-->
                    <div class="col-md-6 col-lg-4 mb-5">
                    <a href="benefitcategory?category=culture&page=1">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal3">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/benefitselect/assets/img/portfolio/culture.jpg" alt="" />
                        </div>
                        </a>
                         <br>
                       <h3 class="page-section-heading text-center text-uppercase text-secondary mb-0">문화</h2>
                    </div>
                    <!-- Portfolio Item 4-->
                    <div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
                    <a href="benefitcategory?category=meal&page=1">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal4">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/benefitselect/assets/img/portfolio/conveniencestore.jpg" alt="" />
                        </div>
                    </a>
                    	 <br>
                       <h3 class="page-section-heading text-center text-uppercase text-secondary mb-0">편의점</h2>
                    </div>
                    <!-- Portfolio Item 5-->
                    <div class="col-md-6 col-lg-4 mb-5 mb-md-0">
                    <a href="benefitcategory?category=store&page=1">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal5">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/benefitselect/assets/img/portfolio/restaurants.jpg" alt="" />
                        </div>
                    </a>
                     <br>
                       <h3 class="page-section-heading text-center text-uppercase text-secondary mb-0">식사</h2>
                    </div>
                    <!-- Portfolio Item 6-->
                    <div class="col-md-6 col-lg-4">
                    <a href="benefitcategory?category=health&page=1">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal6">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/benefitselect/assets/img/portfolio/pharmacy1.jpg" alt="" />
                        </div>
                    </a>
                     <br>
                       <h3 class="page-section-heading text-center text-uppercase text-secondary mb-0">건강</h2>
                    </div>
                    <!-- Portfolio Item 7-->
                    <div class="col-md-6 col-lg-4">
                    <a href="benefitcategory?category=shopping&page=1">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal6">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/benefitselect/assets/img/portfolio/shopping.jpg" alt="" />
                        </div>
                     </a>
                      <br>
                       <h3 class="page-section-heading text-center text-uppercase text-secondary mb-0">쇼핑</h2>
                    </div>
                    <!-- Portfolio Item 8-->
                    <div class="col-md-6 col-lg-4">
                    <a href="benefitcategory?category=communication&page=1">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal6">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/benefitselect/assets/img/portfolio/phone.jpg" alt="" />
                        </div>
                    </a>
                     <br>
                       <h3 class="page-section-heading text-center text-uppercase text-secondary mb-0">통신</h2>
                    </div>
                </div>
            </div>
        </section>
        
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
        <script src="assets/mail/jqBootstrapValidation.js"></script>
        <script src="assets/mail/contact_me.js"></script>
        <!-- Core theme JS-->
        <script src="${pageContext.request.contextPath}/resources/benefitselect/js/scripts.js"></script>
     <%@ include file="../topbottom/cardbottom.jsp" %>
    </body>
</html>