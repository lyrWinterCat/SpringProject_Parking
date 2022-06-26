<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="utf-8"%>
<html>
<head>
	<title> 부엉이 주차장 </title>
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
						<li><a href="parking" onclick="alert('로그아웃 되었습니다.')" class=""><i class="fa-solid fa-car"></i> <span>로그아웃</span></a></li>
						<li><a href="userUpdate" class=""><i class="fa-solid fa-car-rear"></i> <span>회원정보 변경</span></a></li>
						<li><a href="userDelete" class=""><i class="fa-solid fa-car-burst"></i> <span>회원 탈퇴</span></a></li>
						<li><a href="parking" class=""><i class="fa-solid fa-car-side"></i> <span>임시자리</span></a></li>
						<li><a href="parking" class=""><i class="fa-solid fa-car-side"></i> <span>임시자리</span></a></li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<!-- OVERVIEW -->
					<div class="panel panel-headline">
						<div class="panel-heading">
							<h3 class="panel-title">주차장 / 커뮤니티 임시공간</h3>
							<p class="panel-subtitle">Period: 2022.06.22</p>
						</div>

					</div>
					<!-- END OVERVIEW -->					
				</div>
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
</body>

</html>