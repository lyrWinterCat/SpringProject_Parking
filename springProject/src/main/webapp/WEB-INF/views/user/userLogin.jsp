<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="utf-8"%>
<html>
<head>
	<title> 주차장 찾기 템플릿</title>
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
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper"> 
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="index.html"><img src="resources/assets/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
				
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
				<form class="navbar-form navbar-left">
					<div class="input-group">
						<input type="text" value="" class="form-control" placeholder="검색할 내용을 입력해주세요" style="width:300px;">
						<span class="input-group-btn"><button type="button" class="btn btn-primary">Go</button></span>
					</div>
				</form>
				<div class="navbar-btn navbar-btn-right">
					<p>임시구역</p>
				</div>

			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<div style="text-align:center; font-size:30px;">
							<li><img src="resources/assets/img/user.png" class="img-circle" alt="Avatar" style="width : 90%; margin-top : 10px;"> <span>Admin</span></li>
						</div>
						<li><a href="parking" class="active"><i class="lnr lnr-home"></i> <span>메인화면</span></a></li>
						<li><a href="notifications.html" class=""><i class="lnr lnr-alarm"></i> <span>공지사항</span></a></li>
						<li><a href="charts.html" class=""><i class="lnr lnr-chart-bars"></i> <span>즐겨찾는 주차장</span></a></li>
						<li>
							<a href="#subPages" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>커뮤니티</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse ">
								<ul class="nav">
									<li><a href="page-profile.html" class="">후기 게시판</a></li>
									<li><a href="page-login.html" class="">자유 게시판</a></li>
									<li><a href="page-lockscreen.html" class="">맛집 추천</a></li>
								</ul>
							</div>
						</li>
						<li><a href="userLogin" class=""><i class="lnr lnr-code"></i> <span>로그인</span></a></li>
						<li><a href="userUpdate" class=""><i class="lnr lnr-cog"></i> <span>회원정보 변경</span></a></li>
						<li><a href="icons.html" class=""><i class="lnr lnr-linearicons"></i> <span>임시자리</span></a></li>
						<li><a href='userSignUp' class=""><i class="lnr lnr-dice"></i> <span>회원가입</span></a></li>
						<li><a href="userDelete" class=""><i class="lnr lnr-text-format"></i> <span>회원 탈퇴</span></a></li>
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
					<h3>로그인 페이지</h3>
				<div id="text-box" style="width:fit-content" align="left">
					<form action="loginOk" method="post">
						아이디<br>
						<input type="text" name="id"><br>
						비밀번호<br>
						<input type="password" name="pw"><br>
						<input type="checkbox" value="autologin">자동으로 로그인하기
						<input type="submit" value="로그인">
					</form>
				</div>
				<input type="button" name="naverLogin" value="네이버 아이디로 로그인" onclick="location.href='naverLogin'">
				<input type="button" name="findIdPwd" value="아이디/비밀번호 찾기" onclick="">
	
	<!-- 네이버 연동 로그인 구현 -->
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
	<script>
	</script>
	<style>
		.image-box{
			border:3px solid;
			width: 300px;
			height: 300px;
			overflow:hidden;
			margin:0 auto;
		}
		.img-thumbnail{
			width:100%;
			height:100%;
			object-fit:cover;
		}
	</style>
</body>

</html>