<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="utf-8"%>
<html>
<head>
	<title>부평 야간 주차장 도우미</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="resources/assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="resources/assets/vendor/linearicons/style.css">
	<link rel="stylesheet" href="resources/assets/vendor/chartist/css/chartist-custom.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="resources/assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="resources/assets/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="resources/assets/img/favicon.png">
	<script src="https://kit.fontawesome.com/d9e2783f4c.js" crossorigin="anonymous"></script>
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand" style="padding: 15px 40px;">
				<a href="index.html"><img
					src="resources/assets/img/parkingIcon.png" alt="Klorofil Logo"
					class="img-responsive logo"></a>

			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth">
						<i class="lnr lnr-arrow-left-circle"></i>
					</button>
				</div>
				<form class="navbar-form navbar-left">
					<div class="input-group">
						<input type="text" value="" class="form-control"
							placeholder="검색할 내용을 입력해주세요" style="width: 400px;"> <span
							class="input-group-btn"><button type="button"
								class="btn btn-primary">Go</button></span>
					</div>
				</form>
				<div class="navbar-btn navbar-btn-right">
					<img src="resources/assets/img/parkingMap.png" alt="map Logo">
				</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<ul class="nav">
						<div style="text-align:center; font-size:30px;">
							<li><img src="resources/assets/img/user.png" class="img-circle" alt="Avatar" style="width : 90%; margin-top : 30px;"> <span>Admin</span></li>
						</div>
						<li><a href="parking" class="active"><i class="lnr lnr-home"></i> <span>메인화면</span></a></li>
						<li><a href="notifications.html" class=""><i class="lnr lnr-alarm"></i> <span>공지사항</span></a></li>
						<li><a href="charts.html" class=""><i class="fa-solid fa-square-parking"></i> <span>즐겨찾는 주차장</span></a></li>
						<li>
							<a href="#subPages" data-toggle="collapse" class="collapsed"><i class="fa-solid fa-chalkboard-user"></i> <span>커뮤니티</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse ">
								<ul class="nav">
									<li><a href="page-profile.html" class="">후기 게시판</a></li>
									<li><a href="page-login.html" class="">자유 게시판</a></li>
									<li><a href="page-lockscreen.html" class="">맛집 추천</a></li>
								</ul>
							</div>
						</li>
						<li><a href='userSignUp' class=""><i
                     class="fa-solid fa-car-on"></i> <span>회원가입</span></a></li>
               <li><a href="userLogin" class=""><i
                     class="fa-solid fa-car"></i> <span>로그인</span></a></li>
               <li><a href="userLogin" onclick="alert('로그인 후 이용해주세요')" class=""><i
                     class="fa-solid fa-car-rear"></i> <span>회원정보 변경</span></a></li>
               <li><a href="userLogin" onclick="alert('로그인 후 이용해주세요')" class=""><i
                     class="fa-solid fa-car-burst"></i> <span>회원 탈퇴</span></a></li>
               <li><a href="icons.html" class=""><i
                     class="fa-solid fa-car-side"></i> <span>임시자리</span></a></li>
            </ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
			<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
						
				<div align="center">
					<h1>회원가입</h1>
					<input type="button" value="네이버 아이디로 시작하기" onclick="location.href='userLogin'">
					
					<form>
					<div id="text-box" style="width:fit-content" align="left">
						<div class="login-text" style="margin:10px auto">아이디 
						<span id="idCheck_text" style="font-size:0.7em"></span>
						<br>
						<input type="text" name="userId" size="25">
						</div>						
						
						<div class="login-text" style="margin:10px auto">비밀번호<br>
						<input type="password" name="userPwd" size="25"></div>
						
						<div class="login-text" style="margin:10px auto">이름<br>
						<input type="text" name="userName" size="25"></div>
						
						<div class="login-text" style="margin:10px auto">전화번호 <br>
		 				<input type="text" name="userPhone1" size="4">
		 				<input type="text" name="userPhone2" size="4">
		 				<input type="text" name="userPhone3" size="4"></div>
		 				
		 				<div class="login-text" style="margin:10px auto">닉네임
						<span id="nickCheck_text" style="font-size:0.7em"></span><br>
						<input type="text" name="userNick" size="25"></div>
		 				
						<div class="login-text" style="margin:10px auto">이메일<br>
						<input type="text" name="userEmail" size="25">
						<button type="button" id="mail-Check-Btn">이메일 인증</button><br><br>
						<input type="text" name="checkEmail" placeholder="이메일 인증번호" size="25">
						<span id="emailCheck_text" style="font-size:0.7em"></span>
						</div>
						
						<br>						

					</div>
						::: 프로필 사진 선택 ::: <input type="file" name="userPhoto">
						
						<div id="userImg" align="center">
							<div class="image-box">
								<img class="image-thumbnail" src="resources/img/cat.jpg">
							</div>						
						<input type="button" value="프로필 사진 등록" onclick="">
						</div>
						<br>
		
						<input type="button" value="가입" onclick="send(this.form);">		
						<input type="button" value="취소" onclick="location.href='/sample'">		
					</form>
				</div>
		<!-- 네이버 연동 회원가입 구현 -->
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->		
		
		<footer>
			<div class="container-fluid">
				<p class="copyright">Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a></p>
			</div>
		</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="resources/assets/vendor/jquery/jquery.min.js"></script>
	<script src="resources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="resources/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="resources/assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="resources/assets/vendor/chartist/js/chartist.min.js"></script>
	<script src="resources/assets/scripts/klorofil-common.js"></script>
	<script>var contextPath="${pageContext.request.contextPath}"</script>
	
	<script>
		function send(f){
			// 유효성 검사	
			
			
			
			f.action="userSignOk";
			f.method="post";
			f.submit();
		}	
		
		
		//아이디 중복검사		
		let idcheck=false;
		
		function checkId(id){
			idcheck=false;
			if(id==""){
				$("#idCheck_text").text("");
				return;
			}
			$.ajax({
				url:"userCheckId?userId="+id,
						type:"get",
						dataType:"json",
						success:function(result){
							console.log("들어옴")
							if(result.status=='ok'){
								$("#idCheck_text").text("사용 가능");
								$("#idCheck_text").css("color","blue");
								idcheck=true;
							} else{
								$("#idCheck_text").text("사용 불가");
								$("#idCheck_text").css("color","red");
							}
						},
						error:function(){
						console.log("오류");
				}
			});
		}
		
		$("input[name='userId']").keyup(function(){
			checkId($(this).val());
		})
		
		//닉네임 중복검사
		let nickCheck=false;
		
		function checkNick(nick){
			nickCheck=false;
			if(nick==""){
				$("#nickCheck_text").text("");
				return;
			}
			$.ajax({
				url:"userCheckNick?userNick="+nick,
						type:"get",
						dataType:"json",
						success:function(result){
							console.log("들어옴")
							if(result.status=='ok'){
								$("#nickCheck_text").text("사용 가능");
								$("#nickCheck_text").css("color","blue");
								nickCheck=true;
							} else{
								$("#nickCheck_text").text("사용 불가");
								$("#nickCheck_text").css("color","red");
							}
						},
						error:function(){
						console.log("오류");
				}
			});
		}
		
		$("input[name='userNick']").keyup(function(){
			checkNick($(this).val());
		})
		
		// 이메일 인증
		$('#mal-Check-Btn').click(function(){
			const email = $('#userEmail');
			console.log('이메일 주소 : '+email);
			const checkInput = $('#emailCheck_text');
			
			$.ajax({
				type:'get',
				url:"userEmailSend?userEmail="+email,
				success:function(){
					
					
				}
			
			})
			
						
			
		})
		
		
	</script>

	<style>
	
		#login-text{
			margin:5px auto;
		}
	
		.image-box{
			border:3px solid;
			width: 300px;
			height: 300px;
			overflow:hidden;
			margin:10px auto;
		}
		.img-thumbnail{
			width:100%;
			height:100%;
			object-fit:cover;
		}
	</style>
</body>

</html>