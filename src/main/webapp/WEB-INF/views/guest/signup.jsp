<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>



<title>PICKCL</title>
	
	
	
	
<meta charset="UTF-8">

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<script type="text/javascript">
$(function() {
	$("#dialogBlank").dialog({
		autoOpen : false, //자동으로 열리지않게
		modal : true, //모달대화상자
		resizable : false, //크기 조절 못하게

		buttons : {
			"확인" : function() {
				$(this).dialog("close");
			}
		}
	});
	
	$("#dialogName").dialog({
		autoOpen : false, //자동으로 열리지않게
		modal : true, //모달대화상자
		resizable : false, //크기 조절 못하게

		buttons : {
			"확인" : function() {
				$(this).dialog("close");
			}
		}
	});
	
	$("#dialogJumin").dialog({
		autoOpen : false, //자동으로 열리지않게
		modal : true, //모달대화상자
		resizable : false, //크기 조절 못하게

		buttons : {
			"확인" : function() {
				$(this).dialog("close");
			}
		}
	});
	
	$("#dialogEmail").dialog({
		autoOpen : false, //자동으로 열리지않게
		modal : true, //모달대화상자
		resizable : false, //크기 조절 못하게

		buttons : {
			"확인" : function() {
				$(this).dialog("close");
			}
		}
	});
	
	$("#dialogPhone").dialog({
		autoOpen : false, //자동으로 열리지않게
		modal : true, //모달대화상자
		resizable : false, //크기 조절 못하게

		buttons : {
			"확인" : function() {
				$(this).dialog("close");
			}
		}
	});
});

window.onload = function(){
	
	document.getElementById("btnSignup").addEventListener("click", funcSignup, false);
	document.getElementById("btnId").onclick = idCheck;
	//document.getElementById("btnNewMember").addEventListener("click", funcNew, false);
	
}
function idCheck(){
	   if(signupForm.id.value === ""){
	      alert("id를 입력하시오");
	      signupForm.id.focus();
	   }else{
	      url = "idCheck?id=" + signupForm.id.value;
	      window.open(url,"get","width=300,height=150,left=150,top=150");
	   }
	}
function check(){
	id=$('#id').val();
	$.ajax({
		url:'idCheck?id=' + id,
		type:'POST',
		dataType:'int',
		contentType: 'String',
		data:id,
		
		 success: function(data){
	         if(data == 0){
	         console.log("아이디 없음");
	         alert("사용하실 수 있는 아이디입니다.");
	         }else{
	         	console.log("아이디 있음");
	         	alert("중복된 아이디가 존재합니다.");
	         }
	    },
	    error: function (){        
	    	alert("에러에러");              
	    }
	  });

}



function funcSignup(){
	
	var id = document.getElementById('id').value;
	var name = document.getElementById('irum').value;
	var pwd = document.getElementById('pwd').value;
	var jumin = document.getElementById('jumin').value;
	var email = document.getElementById('email').value;
	var phone = document.getElementById('phone').value;

	var nameCheck = /^[가-힣]{2,6}$/;
	var juminCheck = /^\d{7}$/;
	var emailCheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var phoneCheck = /^\d{2,3}\d{3,4}\d{4}$/;
	
	if(name === "" || id === "" || pwd === "" || jumin === "" || email === "" || phone === ""){
		$("#dialogBlank").dialog("open");
		signupForm.id.focus();
	}else if(!nameCheck.test(name)){
		$("#dialogName").dialog("open");
		signupForm.irum.focus();
	}else if(!juminCheck.test(jumin)){
		$("#dialogJumin").dialog("open");
		signupForm.jumin.focus();
	}else if(!emailCheck.test(email)){
		$("#dialogEmail").dialog("open");
		signupForm.email.focus();
	}else if(!phoneCheck.test(phone)){
		$("#dialogPhone").dialog("open");
		signupForm.phonenum.focus();
	}
	else{
		signupForm.action = "insertcardguest";
		signupForm.method="post";
		signupForm.submit();
	}
}

</script>
<style type="text/css">
#btnId{
	width:80px;
    height:25px; 
    background-color: #57B846;
    color: white;
    font: 15px Montserrat-Bold;
    
}
</style>
	<meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/signup/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/signup/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/signup/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/signup/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/signup/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/signup/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/signup/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/signup/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<%@ include file="../topbottom/cardtoptest.jsp" %>
	<%@ include file="../topbottom/signuptest.jsp" %>
	<div class="limiter">
		<div id="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="${pageContext.request.contextPath}/resources/signup/images/pickcllogin.png" alt="IMG">
				</div>

				<form class="login100-form validate-form" action="insertcardguest" name="signupForm" method="post">
					<span class="login100-form-title">
						PICA 회원가입
					</span>

					<div class="wrap-input100 validate-input" data-validate = "아이디를 적어주세요">
						<input class="input100" type="text" name="id" id="id" placeholder="Id">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-address-card" aria-hidden="true"></i>
						</span>
					</div>
					<input type="button" class="idcheckbtn" id="btnId" value="IDcheck" style="w" > <br> <br>
							
					

					<div class="wrap-input100 validate-input" data-validate = "비밀번호를 적어주세요">
						<input class="input100" type="pwd" name="pwd" id="pwd" placeholder="password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "이름을 올바른 형식으로 적어주세요">
						<input class="input100" type="text" name="irum" id="irum" placeholder="irum">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-female" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "주민등록번호를 앞자리와 뒷자리 첫번째 숫자 형식으로 적어주세요">
						<input class="input100" type="text" name="jumin" id="jumin" placeholder="jumin">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-address-card-o" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "이메일을 올바른 형식으로 적어주세요">
						<input class="input100" type="text" name="email" id="email" placeholder="email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					

					<div class="wrap-input100 validate-input" data-validate = "핸드폰번호를 올바른 형식으로 적어주세요">
						<input class="input100" type="text" name="phonenum" id="phonenum" placeholder="phonenumber">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-mobile-phone" aria-hidden="true"></i>
						</span>
					</div>
					
					 <input type="hidden" name="creditscore">
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" value="등록" onclick="funcSignup()" id="btnSignup" >
							SignUp
						</button>
					</div>

		

					
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="${pageContext.request.contextPath}/resources/signup/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/signup/vendor/bootstrap/js/popper.js"></script>
	<script src="${pageContext.request.contextPath}/resources/signup/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/signup/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/signup/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/signup/js/main.js"></script>
<%@ include file="../topbottom/cardbottom.jsp" %>
</body>
</html>