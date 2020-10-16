<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    String memid = (String)session.getAttribute("idKey");
    String ahref = "";
    String value="";
    if(memid == null){
    	ahref="<a href='memlogin' class='register_icon' ><i class='ti-arrow-right'></i>Login</a>";
    	value=" <a href='insertcardguest' class='register_icon' ><i class='ti-arrow-right'></i>회원가입</a>";
    }else{
    	ahref="<a href='logout' class='register_icon' ><i class='ti-arrow-right'></i>Logout</a>";
    	value="<a class='register_icon' href='meminfo?id="+memid+"&page=1'><i class='ti-arrow-right'></i> 마이페이지</a>";
    }
    %>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>BasketBall || Home</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/maintop2/img/favicon.png">
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
    <!--::header part start::-->
    <header class="header_area" >
        <div class="sub_header">
            <div class="container">
                <div class="row align-items-center">
                  <div class="col-md-4 col-xl-6">
                      <div id="logo">
                          <a href="main"><img src="${pageContext.request.contextPath}/resources/maintop2/img/pickclelogo.png" alt="" title="" /></a>
                      </div>
                  </div>
                  <div class="col-md-8 col-xl-6">
                      <div class="sub_header_social_icon float-right">
                       <%=ahref %>
                     	<%=value %>
                      </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main_menu">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg navbar-light">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav mr-auto">
                                	<li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                           	카드보기
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="cardlist?val=">전체</a>
                                            <a class="dropdown-item" href="cardlist?val=credit">신용카드</a>
                                            <a class="dropdown-item" href="cardlist?val=check">체크카드</a>
                                            <a class="dropdown-item" href="benefitselect">혜택별카드</a>
                                            
                                        </div>
                                    </li>
                                   <li class="nav-item">
                                        <a href="loanList" class="nav-link">대출보기</a>
                                    </li>
                                 
                                    <li class="nav-item">
                                        <a href="choosing" class="nav-link">내게 맞춤 카드</a>
                                    </li>
                                     <li class="nav-item">
                                        <a href="loanchoosing" class="nav-link">내게 맞춤 대출</a>
                                    </li>
                                    
                                    <li class="nav-item">
                                        <a href="list?page=1" class="nav-link">QnA</a>
                                    </li>
                                      <li class="nav-item">
                                        <a href="event?page=1" class="nav-link">Event</a>
                                    </li>
                                      <li class="nav-item">
                                        <a href="introduce" class="nav-link">INTRODUCE</a>
                                    </li>
                                  
                                </ul>
                                
                            </div>
                        </nav>
                        
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header part end-->

    

    

    
    

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



</body>