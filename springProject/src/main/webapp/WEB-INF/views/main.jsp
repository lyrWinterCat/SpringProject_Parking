<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="utf-8"%>
<html>
<head>
<title>주차장 찾기 템플릿</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
   content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->
<link rel="stylesheet"
   href="resources/assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
   href="resources/assets/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
   href="resources/assets/vendor/linearicons/style.css">
<link rel="stylesheet"
   href="resources/assets/vendor/chartist/css/chartist-custom.css">
<!-- MAIN CSS -->
<link rel="stylesheet" href="resources/assets/css/main.css">
<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
<link rel="stylesheet" href="resources/assets/css/demo.css">
<!-- GOOGLE FONTS -->
<link
   href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700"
   rel="stylesheet">
<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"
   href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
   href="resources/assets/img/favicon.png">

<!-- 네이버 지도 api 연동(키) -->
<script type="text/javascript"
   src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=xt6b9q2l1i">
   
</script>
<!-- 제이쿼리 cdn -->
<script src="https://code.jquery.com/jquery-3.6.0.js"
   integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
   crossorigin="anonymous">   
</script>
<script src="https://kit.fontawesome.com/d9e2783f4c.js"
   crossorigin="anonymous"></script>
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
            <div class="navbar-form navbar-left"
               style="padding: 0px; margin-left: 10px;">
               <img src="resources/assets/img/banner1.png"
                  style="margin-right: 5px;"> <img
                  src="resources/assets/img/banner2.png">
            </div>
            <!-- <form class="navbar-form navbar-left">
               <div class="input-group">
                  <p>광고 배너 들어갈 공간</p>
               </div>
            </form> -->
            <div class="navbar-btn navbar-btn-right" style="margin-right: 20px;">
               <img src="resources/assets/img/parkingMap.png" alt="map Logo">
            </div>
         </div>
      </nav>
      <!-- END NAVBAR -->
      <!-- LEFT SIDEBAR -->
      <div id="sidebar-nav" class="sidebar">
         <div class="sidebar-scroll">
            <ul class="nav">
               <div style="text-align: center; font-size: 30px;">
                  <li><img src="resources/assets/img/user.png"
                     class="img-circle" alt="Avatar"
                     style="width: 90%; margin-top: 30px;"> <span>Admin</span></li>
               </div>
               <li><a href="parking" class="active"><i
                     class="lnr lnr-home"></i> <span>메인화면</span></a></li>
               <li><a href="notifications.html" class=""><i
                     class="lnr lnr-alarm"></i> <span>공지사항</span></a></li>
               <li><a href="parking" onclick="alert('로그인 후 이용해주세요')" class=""><i
                     class="fa-solid fa-square-parking"></i> <span>즐겨찾는 주차장</span></a></li>
               <li><a href="#subPages" data-toggle="collapse"
                  class="collapsed"><i class="fa-solid fa-chalkboard-user"></i>
                     <span>커뮤니티</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                  <div id="subPages" class="collapse ">
                     <ul class="nav">
                        <li><a href="page-profile.html" class="">후기 게시판</a></li>
                        <li><a href="page-login.html" class="">자유 게시판</a></li>
                        <li><a href="page-lockscreen.html" class="">맛집 추천</a></li>
                     </ul>
                  </div></li>
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
      <!-- 지도 표시화면 -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">

				<div style="width: 100%; height: 800px;">

					<div class="left"
						style="width: 25%; height: 100%; float: left; box-sizing: border-box; overflow-y: scroll;">


						<div class="input-group"
							style="margin-top: 10px; margin-left: 5px; margin-right: 5px;">
							<input type="text" value="" class="form-control"
								placeholder="검색할 주차장 주소를 입력해주세요" style="width: 100%;"> <span
								class="input-group-btn"><button type="button"
									class="btn btn-primary">검색</button></span>
						</div>

						<br>

						<c:forEach var="vo" items="${list}">
							<div style="margin-left: 5px;">
								<p>
								<h4 style="color: #3c87d0; font-weight: bold">
									<img src="resources/img/parkingN.png" width="22" height="22"
										style="margin-bottom: 5px;"> &nbsp;${vo.parkingName}
								</h4>
								</p>
								<p style="color: #333;">
									<img src="resources/img/addr.png" width="20" height="20"
										style="margin-bottom: 3px;"> &nbsp;${vo.parkingAddr}
								</p>
								<p style="color: #333;">
									<img src="resources/img/parkings.png" width="20" height="20"
										style="margin-bottom: 3px;"> &nbsp;주차 구역 : 총
									${vo.parkingCount}개
								</p>
								<p style="color: #333;">
									<img src="resources/img/tel.png" width="20" height="20">&nbsp;
									${vo.parkingTel}
								</p>
								<hr>
							</div>
						</c:forEach>
					</div>

					<div id="map"
						style="width: 75%; height: 100%; float: right; box-sizing: border-box; background: #ece6cc;"></div>
				</div>
			</div>
		</div>
		<!-- END MAIN CONTENT -->
	</div>
	<!-- END MAIN -->

	<footer>
		<div class="container-fluid">
			<p class="copyright">
				Shared by <i class="fa fa-love"></i><a
					href="https://bootstrapthemes.co">BootstrapThemes</a>
			</p>
		</div>
	</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="resources/assets/vendor/jquery/jquery.min.js"></script>
	<script src="resources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="resources/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script
		src="resources/assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="resources/assets/vendor/chartist/js/chartist.min.js"></script>
	<script src="resources/assets/scripts/klorofil-common.js"></script>
	<script>
		
	</script>
</body>
<!-- 네이버 지도 api 연동 및 마커 설정 -->
<script type="text/javascript">
	$(function() {

		initMap();

	});

	function initMap() {

		var markers = new Array(); // 마커 정보를 담는 배열
		var infoWindows = new Array(); // 정보창을 담는 배열

		//네이버 지도
		var map = new naver.maps.Map('map', {
			center : new naver.maps.LatLng(37.498095, 127.027610),
			zoom : 14
		});

		//이런식
		console.log("로그 : " + "${size};");
		var size = Number("${size}");
		console.log(Number("${size}"));
		console.log("${list[0].getParkingAddr()};");

		//마커
		//반복문을 활용하여 리스트 개수만큼 마커 표시
		<c:forEach var="vo" items="${list }">
		var marker = new naver.maps.Marker(
				{
					map : map,
					title : "${vo.getParkingName()}",
					position : new naver.maps.LatLng("${vo.getParkingLat()}",
							"${vo.getParkingLon()}"),
					icon : {
						content : 
							'<img src="<c:url value="/resources/img/marker.png"/>" alt="" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; max-width: none; max-height: none; -webkit-user-select: none; position: absolute; width: 32px; height: 32px; left: 0px; top: 0px;">',
							size : new naver.maps.Size(32, 32),
						anchor : new naver.maps.Point(16, 32)
					}
				});

		/* 정보창 */
		//나중에 주소를 디비 이름으로 바꿔주기
		var infoWindow = new naver.maps.InfoWindow(
				{
					content : '<div style="width:380px;padding:20px; background:#fff;">' +
						'<center><b style="color:#3c87d0;"><img src="resources/img/parkingN.png" width="20" height="20" style="margin-bottom: 5px;">' +
						'&nbsp; ${vo.getParkingName()}</b></center><hr style="background-color: #222222;"/>' + 
						'<p style="color:#111;"><b><img src="resources/img/addr.png" width="20" height="20" style="margin-bottom: 3px;">&nbsp;${vo.parkingAddr}</b></p> '+ 
						'<table border="1" align="center" style="color:#333; width:100%;"><tr><th style="height:30px; font-size:15px;"><center><img src="resources/img/parkings.png" width="18" height="18" style="margin-bottom: 3px;">&nbsp;주차 구역</th></tr></center> <tr><td style="text-align:center; background:#999; height:50px; font-weight: bold; color: #ffffff; font-size:18px;">${vo.parkingCount}</td></tr><table><br>' + 
						'<div style="overflow-y: scroll; width:100%; height: 150px;">' +
						'<p style="color:#333;"><b><img src="resources/img/charge.png" width="20" height="20">&nbsp; 요금 정보(시간)</b></p>' +
						'<p style="color:#333;">기본 요금 : ${vo.parkingBaseCharge}원/${vo.parkingBaseTime}분</p>' + 
						'<p style="color:#333;">추가 요금 : ${vo.parkingPlusCharge}원/${vo.parkingPlusTime}분</p>' +
						'<p style="color:#333;">토요일 요금 : ${vo.parkingSatPay} / 공휴일 요금 : ${vo.parkingHolidayPay}</p>' +
						'<p style="color:#333;">월 정기권 : ${vo.parkingMonthlyPass}원</p><hr>' +
						'<p style="color:#333;"><b><img src="resources/img/open.png" width="20" height="20">&nbsp; 운영 시간</b></p>' +
						'<p style="color:#333;">평일 운영시간 : ${vo.parkingStartTimeWeekday} ~ ${vo.parkingEndTimeWeekday}</p>' +
						'<p style="color:#333;">주말 운영시간 : ${vo.parkingStartTimeWeekend} ~ ${vo.parkingEndTimeWeekend}</p>' +
						'<p style="color:#333;">공휴일 운영시간 : ${vo.parkingStartTimeHoliday} ~ ${vo.parkingEndTimeHoliday}</p><hr>' +
						'<p style="color:#333;"><img src="resources/img/tel.png" width="20" height="20">&nbsp; ${vo.parkingTel}</p>' +
						'</div>',
					borderWidth: 1,
					borderColor: "#ddd",
					backgroundColor: "#f0f8f8",
					anchorSize: new naver.maps.Size(30, 30)
				}); // 클릭했을 때 띄워줄 정보 입력

		markers.push(marker); // 생성한 마커를 담는다.
		infoWindows.push(infoWindow); // 생성한 정보창을 담는다.

		</c:forEach>

		function getClickHandler(seq) {

			return function(e) { // 마커를 클릭하는 부분
				var marker = markers[seq], // 클릭한 마커의 시퀀스로 찾는다.
				infoWindow = infoWindows[seq]; // 클릭한 마커의 시퀀스로 찾는다

				if (infoWindow.getMap()) {
					infoWindow.close();
				} else {
					infoWindow.open(map, marker); // 표출
				}
			}
		}

		for (var i = 0, k = markers.length; i < k; i++) {
			naver.maps.Event.addListener(markers[i], 'click',
					getClickHandler(i)); // 클릭한 마커 핸들러
		}
	}
</script>
</html>