<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>강남 주차장 알리미</title>
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
<script src="https://kit.fontawesome.com/d9e2783f4c.js"
	crossorigin="anonymous"></script>

<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous">
</script>
<!-- alert 커스텀 -->
<script src="resources/assets/js/wow-alert.js"></script>
<!-- alert 커스텀 -->
<link rel="stylesheet" href="resources/assets/css/wow-alert.css">
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
			<div class="container-fluid" style="position: relative;">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth">
						<i class="lnr lnr-arrow-left-circle"></i>
					</button>
				</div>

				<div class="navbar-form navbar-left"
					style="position: absolute; margin: 0 0 0 300px;">
					<img src="resources/assets/img/banners.png" style="width: 90%;">
				</div>

				<div class="navbar-btn navbar-btn-right" style="margin-right: 10px;">
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
						<li><img
							src="${pageContext.request.contextPath}/resources/upload/${list[0].userPhotoName}"
							class="img-circle" alt="Avatar"
							style="width: 200px; height: 200px; margin-top: 30px; object-fit: cover;"><br>
							<span>${list[0].userNick}</span></li>
					</div>
					<li><a href="parking" class=""><i class="lnr lnr-home"></i>
							<span>메인화면</span></a></li>
					<li><a href="notice" class=""><i
							class="lnr lnr-alarm"></i> <span>공지사항</span></a></li>
					<li><a href="favorites" class=""><i
							class="fa-solid fa-square-parking"></i> <span>즐겨찾는 주차장</span></a></li>
					<li><a href="#subPages" data-toggle="collapse"
						class="collapsed"><i class="fa-solid fa-chalkboard-user"></i>
							<span>커뮤니티</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
						<div id="subPages" class="collapse ">
							<ul class="nav">
								<li><a href="list" class="">후기 게시판</a></li>
								<li><a href="b_list" class="">자유 게시판</a></li>
							</ul>
						</div></li>
					<li><a href="logout" class=""><i
							class="fa-solid fa-car"></i> <span>로그아웃</span></a></li>
					<li><a href="userInfo" class="active"><i
							class="fa-solid fa-car-rear"></i> <span>회원정보 조회</span></a></li>
					<li><a href="userDelete" class=""><i
							class="fa-solid fa-car-burst"></i> <span>회원 탈퇴</span></a></li>
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
					<h1>회원 정보 수정</h1>

					<form enctype="multipart/form-data">
						<div class="userInfo">
							<h4>아이디</h4>
							<input type="text" name="userId" value="${list[0].userId}"
								readonly style="background-color: #e2e2e2;">
						</div>

						<div class="userInfo">
							<h4>비밀번호</h4>
							<input type="password" id="userPwd" name="userPwd"
								placeholder="원래 비밀번호"><br> <input type="password"
								name="newPwd" placeholder="새 비밀번호">
						</div>

						<div class="userInfo">
							<h4>이름</h4>
							<input type="text" name="userName" value="${list[0].userName}"
								readonly style="background-color: #e2e2e2;">
						</div>

						<div class="userInfo_number">
							<h4>전화번호</h4>
							<input type="text" name="userPhone1" size="4"
								value="${list[0].userPhone1}"> <input type="text"
								name="userPhone2" size="4" value="${list[0].userPhone2}">
							<input type="text" name="userPhone3" size="4"
								value="${list[0].userPhone3}">
						</div>

						<div class="userInfo">
							<h4>닉네임</h4>
							<input type="text" name="userNick"
								placeholder="${list[0].userNick}"><br> <span
								id="nickCheck_text" style="font-size: 0.7em"></span>
						</div>

						<div class="userInfo">
							<h4>이메일</h4>
							<input type="text" name="userEmail" size="25" id="userEmail"
								value="${list[0].userEmail}"><br> <span
								id="emailSend_text" style="font-size: 0.7em"></span><br>
							<button type="button" id="mail-Check-Btn" class="updateBtn">인증메일
								보내기</button>
							<br>
							<div id="emailCheckBox" style="display: none;">
								<input type="text" id="checkEmail" placeholder="이메일 인증번호"
									size="25">
								<div id="ViewTimer"></div>
								<br>
								<button type="button" id="checkNum" class="updateBtn"
									onclick="checkEmailNum()">인증번호 확인</button>
							</div>
							<div id="checkNumResult"></div>
						</div>

						<div class="userInfo_photo">
							<h4>프로필 사진 수정</h4>
							<div id="userImg" align="center">
								<div class="files" style="width: 400px; height: 400px;">
									<label for="userPhoto" style="display: inline;"> <img
										id="userProfil" name="userProfil"
										src="${pageContext.request.contextPath}/resources/upload/${list[0].userPhotoName}"
										width="300px" height="300px" style="object-fit: scale-down;">
									</label> <br> <input id="userPhoto" name="userPhoto" type="file"
										style="display: none;"> <input type="button"
										class="updateBtn" onclick="cancelFile('userProfil')"
										value="첨부 삭제">
								</div>
							</div>
						</div>

						<div class="submit">
							<input type="button" value="수정 완료" onclick="send(this.form);"
								style="float: left;"> <input type="button" value="취소"
								onclick="location.href='userInfo'" style="float: right;">
						</div>
					</form>

				</div>
				<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Noto Sans KR", sans-serif;
}

a {
	text-decoration: none;
	color: black;
}

.login {
	width: 30%;
	height: 600px;
	background: white;
	border-radius: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

.userInfo {
	margin-top: 20px;
	width: 80%;
}

.userInfo_number {
	margin-top: 20px;
	width: 80%;
}

.userInfo_photo {
	margin-top: 50px;
	width: 80%;
}

.userInfo input {
	width: 30%;
	height: 50px;
	border-radius: 10px;
	margin-top: 10px;
	padding: 0px 20px;
	border: 1px solid lightgray;
	outline: none;
	text-align: center;
}

.userInfo_number input {
	width: 15%;
	height: 50px;
	border-radius: 10px;
	margin-top: 10px;
	padding: 0px 20px;
	border: 1px solid lightgray;
	outline: none;
	text-align: center;
}

.submit {
	margin: 20px;
	padding: 10px;
	width: 50%;
}

.submit input {
	width: 50%;
	height: 50px;
	border: 0;
	outline: none;
	border-radius: 40px;
	background: rgb(100, 100, 100);
	color: white;
	font-size: 1.2em;
	letter-spacing: 2px;
}

.updateBtn {
	width: 25%;
	height: 50px;
	border: 0;
	outline: none;
	border-radius: 40px;
	background: rgb(150, 150, 150);
	color: white;
	font-size: 1.2em;
	letter-spacing: 2px;
}
</style>
			</div>
		</div>
		<!-- 네이버 연동 회원가입 구현 -->
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


	<!-- END WRAPPER -->
	<style>
.image-box {
	border: 3px solid;
	width: 300px;
	height: 300px;
	overflow: hidden;
	margin: 10 auto;
}

.img-thumbnail {
	width: 100%;
	height: 100%;
	object-fit: cover;
}
</style>


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
	var imgCheck=false;
	$(".files").change(function(e){
		imgCheck=false;
		console.log(e.target.files);
		let file=e.target.files[0]; //해당 파일에 대한 정보가 담겨있음
		let img = $(this).find("img");
	
	//match : 일치 / 안일치	
		if(!file.type.match("image.*")){
			img.attr("src","resources/assets/img/no_img.jpg");
		}else {
			let reader = new FileReader();
			reader.onload = function(e){
				img.attr("src",e.target.result);
			}
			reader.readAsDataURL(file);
			imgCheck=true;
		}
	})
	
	//첨부파일 삭제
	function cancelFile(fileTagName){
		$("input[name='userPhoto']").val("");
		$("img#userProfil").attr("src","resources/assets/img/filePlus.png");
	}	
	
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
								nickCheck=false;
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
		
		

		
		let checkNum;		
		$('#mail-Check-Btn').click(function(){
			
			const email = $('#userEmail').val();
			console.log('이메일 주소 : '+email);
			
			$.ajax({
				type:'get',
				url:"userEmailSend?userEmail="+email,
				success:function(result){				
					if(result.status=='ok'){
						$("#emailSend_text").text("인증 이메일이 발송되었습니다.");
						$("#emailSend_text").css("color","blue");
						checkNum=result.checkNum;
					} else{
						$("#emailSend_text").text("인증 이메일이 발송되지 않았습니다.");
						$("#emailSend_text").css("color","red");
					}
					
				}
			
			})
			TimerStart();
			$("#emailCheckBox").css("display","inline");
		})
		
			
	var SetTime = 180;      // 최초 설정 시간(기본 : 초)
    function msg_time() {   // 1초씩 카운트      
        m = Math.floor(SetTime / 60) + "분 " + (SetTime % 60) + "초";        
        var msg = "남은 시간 : <font color='red'>" + m + "</font>";  
        document.all.ViewTimer.innerHTML = msg;     // div 영역에 보여줌                  
        SetTime--;                  // 1초씩 감소
        if (SetTime < 0) {          // 시간이 종료 되었으면..        
            clearInterval(tid);     // 타이머 해제
            alert("이메일 인증시간이 만료되었습니다.",{
				
				label:"확인",
			});
        } else if(is_check){
        	clearInterval(tid);
        }    
    }
    function TimerStart(){ tid=setInterval('msg_time()',1000) };    
    
    
    var emailCheck=false;
    function checkEmailNum(){
    	emailCheck=false;
    	if($('#checkEmail').val()==checkNum){
    		clearInterval(tid);
    		$("#emailCheckBox").css("display","none");
    		$("#checkNumResult").text("이메일 인증이 성공했습니다!");
    		$("#checkNumResult").css("color","blue");
    		emailCheck=true;    		
    		return;
    		
    	}else{
    		//alert("이건아니애요 : "+checkNum);
    		$("#checkNumResult").text("이메일 인증에 실패했습니다..");
    		$("#checkNumResult").css("color","red");
    		emailCheck=false;
    		return;
    	}
    }
    
    function send(f){
		// 유효성 검사			
		// 만약 위에서 입력한 f.userPwd.val 이 기존 list[0].userPwd와 같지 않는다면
		// 회원 수정 불가
		// 이걸 j쿼리문으로 비밀번호의 일치 불일치를 알려주면 더 좋지 않을까..?			
		
		
		if(!f.userPwd.value){
			alert("기존 비밀번호를 입력해주세요.",{
				
				label:"확인",
			});
			return;
		}		
		
		if(${list[0].userPwd}!=f.userPwd.value){
			alert("기존 비밀번호가 일치하지 않습니다. 기존의 비밀번호를 확인해 주세요.",{
				
				label:"확인",
			});
			return;
		}
		
		if(!f.newPwd.value){
			alert("새로 사용할 비밀번호를 입력해주세요.",{
				
				label:"확인",
			});
			return;
		}
		
		var loginRegex = /^[a-zA-Z0-9_]{4,20}$/;
		if(loginRegex.test(f.newPwd.value)==false){
			alert("4자 이상 20자 미만인 알파벳과 숫자로 새로운 비밀번호를 입력해주세요.",{
				
				label:"확인",
			});
			return;
		}
		
		if(!f.userNick.value){
			alert("닉네임을 입력해주세요.",{
				
				label:"확인",
			});
			return;
		}
		if(nickCheck==false){
			alert("사용할 수 없는 닉네임입니다.\n닉네임을 확인해주세요.",{
				
				label:"확인",
			});
			return;
		}
		
		if(!f.userEmail.value){
			alert("이메일을 입력해주세요.",{
				
				label:"확인",
			});
			return;
		}
		if(emailCheck==false){
			alert("이메일 인증을 해주세요.",{
				
				label:"확인",
			});
			return;
		}
		var userEmail = f.userEmail.value;
		var emailRegex = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		if(emailRegex.test(userEmail)==false){
			alert("이메일 형식이 올바르지 않습니다.\n다시한 번 확인해 주세요.",{
				
				label:"확인",
			});
			return;
		}	
		
		if(imgCheck==false){
			alert("새로운 프로필 사진을 넣어주세요.",{
				
				label:"확인",
			});
			return;
		}
		
		
		f.action="userUpdateOk";
		f.method="post";
		f.submit();			
					
	}    
  
    
	</script>


</body>

</html>