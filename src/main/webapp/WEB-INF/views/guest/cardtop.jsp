<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String memid = (String)session.getAttribute("idKey");
    String ahref = "";
    String value="";
    if(memid == null){
    	ahref="<a class='nav-link login-button' href='memlogin'>Login</a>";
    	value="<a class='nav-link add-button' href='insertcardguest'><i class='fa fa-plus-circle'></i> 회원가입</a>";
    }else{
    	ahref="<a class='nav-link login-button' href='logout'>Logout</a>";
    	value="<a class='nav-link add-button' href='meminfo?id="+memid+"&page=1'><i class='fa fa-plus-circle'></i> 마이페이지</a>";
    }
    %>
<!DOCTYPE html>
<html lang="en">
<head>

  <!-- SITE TITTLE -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>PICKCL</title>
  
  <!-- PLUGINS CSS STYLE -->
  <link href="${pageContext.request.contextPath}/resources/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
  <!-- Bootstrap -->
  <link href="${pageContext.request.contextPath}/resources/plugins/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome -->
  <link href="${pageContext.request.contextPath}/resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <!-- Owl Carousel -->
  <link href="${pageContext.request.contextPath}/resources/plugins/slick-carousel/slick/slick.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/plugins/slick-carousel/slick/slick-theme.css" rel="stylesheet">
  <!-- Fancy Box -->
  <link href="${pageContext.request.contextPath}/resources/plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/plugins/jquery-nice-select/css/nice-select.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/plugins/seiyria-bootstrap-slider/dist/css/bootstrap-slider.min.css" rel="stylesheet">
  <!-- CUSTOM CSS -->
  <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">

  <!-- FAVICON -->
  <link href="img/favicon.png" rel="shortcut icon">

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<body class="body-wrapper">

<!--===============================
=            1.상위 메뉴바          =
================================-->
<section>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-expand-lg  navigation">
					<a class="navbar-brand" href="main">
						<img src="${pageContext.request.contextPath}/resources/images/cardmainlogo1.png" alt="">
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ml-auto main-nav ">
								<li class="nav-item dropdown dropdown-slide">
								<a class="nav-link dropdown-toggle" href="cardlist?val= " data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									카드보기 <span><i class="fa fa-angle-down"></i></span>
								</a>
								<!-- Dropdown list -->
								<div class="dropdown-menu dropdown-menu-right">
									<a class="dropdown-item" href="cardlist?val= ">전체</a>
									<a class="dropdown-item" href="cardlist?val=credit">신용카드</a>
									<a class="dropdown-item" href="cardlist?val=check">체크카드</a>
								</div>
							</li>
							<li class="nav-item active">
								<a class="nav-link" href="benefitselect">혜택별</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="choosing">내게 맞춤 카드</a>
							</li>
								<li class="nav-item active">
								<a class="nav-link" href="list?page=1">QnA</a>
							</li>
							
						</ul>
<!--===============================
=            2.로그인 회원가입          =
================================-->
						<ul class="navbar-nav ml-auto mt-10">
							<li class="nav-item">
							<%=ahref %>
								
							</li>
							<li class="nav-item">
							<%=value %>
								
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
</section>



  <!-- JAVASCRIPTS -->
  
  <script src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/plugins/jquery-ui/jquery-ui.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/plugins/tether/js/tether.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/plugins/raty/jquery.raty-fa.js"></script>
  <script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/dist/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/dist/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/plugins/seiyria-bootstrap-slider/dist/bootstrap-slider.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/plugins/slick-carousel/slick/slick.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/plugins/jquery-nice-select/js/jquery.nice-select.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/plugins/fancybox/jquery.fancybox.pack.js"></script>
  <script src="${pageContext.request.contextPath}/resources/plugins/smoothscroll/SmoothScroll.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
  <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>

</body>

</html>