<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
<style type="text/css">
.searchbar-submit{
	background-color: #28A745;
	color: white;
}
</style>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>PICKCL</title>
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/maintop2/img/favicon.png">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/maintop2/css/bootstrap.min.css">
<!-- animate CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/maintop2/css/animate.css">
<!-- owl carousel CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/maintop2/css/owl.carousel.min.css">
<!-- themify CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/maintop2/css/themify-icons.css">
<!-- flaticon CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/maintop2/css/flaticon.css">
<!-- font awesome CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/maintop2/css/magnific-popup.css">
<!-- swiper CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/maintop2/css/swiper.min.css">
<!-- style CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/maintop2/css/style.css">
</head>
<body>
	<%@ include file="../topbottom/cardtoptest.jsp"%>
	<%@ include file="../topbottom/cardlisttest.jsp"%>
<%
int i=1;
%>
	<!-- player info part start-->
	<section class="team_member section_padding padding_less_40">
		<div class="container">

			<form class="searchbar" action="cardsearch" method="post">
				<input type="search" placeholder="카드 이름 검색" name="cardname"
					class="searchbar-input" onkeyup="buttonUp();" required> <input
					type="submit" class="searchbar-submit" value="검색"  > <br>
				<br>
			</form>
		
			<div class="row">
				<c:forEach var="c" items="${datas}">
					<div class="col-sm-6 col-lg-3">
						<div class="single_team_member single-home-blog">
							<div class="card">
								<a href="cardread?num=${c.cardno}" class="btn btn-success">상세보기</a>
								<img
									src="${pageContext.request.contextPath}/resources/image/${c.image}"
									class="card-img-top" alt="blog">
								<div class="card-body">
									<div class="tean_content">

										<a href="#" class="blog_item_date">
											<h3><%=i++ %></h3>
										</a>

										<h5 class="card-title">${c.cardname }</h5>

										<p>${c.companyname }</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>

	</section>
	<!-- about part start-->

	<!-- jquery plugins here-->
	<!-- jquery -->
	<script
		src="${pageContext.request.contextPath}/resources/maintop2/js/jquery-1.12.1.min.js"></script>
	<!-- popper js -->
	<script
		src="${pageContext.request.contextPath}/resources/maintop2/js/popper.min.js"></script>
	<!-- bootstrap js -->
	<script
		src="${pageContext.request.contextPath}/resources/maintop2/js/bootstrap.min.js"></script>
	<!-- aos js -->
	<script
		src="${pageContext.request.contextPath}/resources/maintop2/js/aos.js"></script>
	<!-- easing js -->
	<script
		src="${pageContext.request.contextPath}/resources/maintop2/js/jquery.magnific-popup.js"></script>
	<!-- swiper js -->
	<script
		src="${pageContext.request.contextPath}/resources/maintop2/js/swiper.min.js"></script>
	<!-- swiper js -->
	<script
		src="${pageContext.request.contextPath}/resources/maintop2/js/masonry.pkgd.js"></script>
	<!-- particles js -->
	<script
		src="${pageContext.request.contextPath}/resources/maintop2/js/owl.carousel.min.js"></script>
	<!-- carousel js -->
	<script
		src="${pageContext.request.contextPath}/resources/maintop2/js/swiper.min.js"></script>
	<!-- custom js -->
	<script
		src="${pageContext.request.contextPath}/resources/maintop2/js/custom.js"></script>


	<%@ include file="../topbottom/cardbottom.jsp"%>
</body>
</html>