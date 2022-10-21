# Spring Project Parking Site
# [Spring]
지도 API 기반 주차장 정보 웹사이트 개발 프로젝트

## 강남 주차장 알리미 사이트 제작

## 주제 선정

코리아 IT 아카데미 웹앱개발 3,4 과정 수료 후 JSP , SPRING 기술을 기반으로 한 웹페이지 제작 팀프로젝트가 시작되었다. 조원들과 의논한 결과 다양한 API 및 JSON 데이터 서버 실시간 통신을 활용한 웹페이지 개발을 시도해보고자 강남 지역의 주차장 데이터를 기반으로 한 주차 정보 알림 사이트를 개발하게 되었다. 

## 역할 분배

메인 화면 구성 및 회원관리 기능 구현
- 이예림

지도 API 및 주차장 JSON 데이터 반영, 검색 기능 구현
- 박연수

자유게시판 및 후기게시판 구현
- 박혜정

## 프로젝트 목표

- JSP, SPRING 을 활용한 동적 웹페이지 개발
- DBMS 서버를 활용하여 지속적인 사이트 운영
- 다양한 API 활용 및 JSON 데이터 활용
- 데이터 베이스 기반 CRUD 이해 및 활용
- 회원가입, 로그인, 검색 기능이 가능한 웹페이지 구현

## 프로젝트 기획 및 구조

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/c7e31d08-0044-4a17-9b73-6c01ee684361/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f8d321a4-d6a7-410c-b24d-dd538e111581/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/88e301c2-67af-4dd1-93f8-0be881654514/Untitled.png)

## 개발 환경

### 사용 언어

### 데이터 관리

### 프레임워크

- HTML, CSS, JS
- jQuery
- JAVA
- ORACLE
- MyBatis

- Spring

### 개발툴

### 서버

### 활용 API

- Eclipse
- DBeaver
- Apache Tomcat 8.5
- NAVER Map API
- 서울 열린 데이터 광장 API
- NAVER Login API

## 코드 참고 및 프로젝트 최종 파일

[https://github.com/lyrWinterCat/SpringProject_Parking](https://github.com/lyrWinterCat/SpringProject_Parking)

## 1. 사이트 메인 화면 구현 - 이예림

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/6e370aaf-18a1-4325-9570-f3b1c64be560/Untitled.png)

### 강남 주차장 알리미 사이트 프론트엔드 제작

- 본 프로젝트는 백엔드 구현이 주 목적이므로 프론트 엔드는 프로젝트 주제에 맞는 템플릿을 선정하여 사용하였고, 목적에 맞게 편집하였다.
- 왼쪽 상단에는 사이트를 대표하는 아이콘을 제작하여 추가하였다
- 기획 단계에서 Search Bar 영역이었던 중앙 상단은 위치 변경으로 인해 빈 공간이 되었고, 사이트 광고 배너 공간으로 대체하였다.
- 지도 기반 사이트임을 나타내고자 오른쪽 상단 아이콘은 지도 아이콘을 추가하였다.
- 사이트 왼쪽 Nav Bar에는 사용자의 프로필 이미지, 닉네임과 사이트 이용 메뉴들을 배치하였다. 왼쪽 상단 아이콘 옆의 화살표 모양 버튼으로 사라지거나 나타날 수 있다.
- 회원 로그인 전에는 사이트 메인 프로필과 이름이 나타나지만, 로그인을 한 경우에는 로그인 한 회원의 프로필 사진과 닉네임이 표출된다.
- 로그인 전과 후를 session으로 구분하여 사이드 바의 메뉴 구성이 달라진다.

## 2. 사이트 회원 관리 기능 구현 - 이예림

- 회원 가입, 로그인, 로그인 정보 찾기, 회원정보 수정, 회원 탈퇴 기능 구현

### 사이트 회원가입 기능 구현

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/182ee6b7-57a2-4966-a065-fa060d8088df/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/cd8a4c98-9e2e-49c7-a06f-ec6733634e08/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/b61c3ea4-c60a-4248-8d44-3ba873a82746/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/8573c1bc-13a6-4877-a419-0f2823011da4/Untitled.png)

### 구체적인 기능

- 사이트 왼쪽 사이드 바에서 회원가입 클릭 시 회원가입 페이지로 이동 가능
- 왼쪽 사이드 바의 로그인 클릭 시 로그인 사이트에서 회원가입 페이지로 이동 가능
- 아이디, 비밀번호, 닉네임, 전화번호, 이메일, 프로필 사진을 등록할 수 있으며 각각의 경우에 대해 정규식으로 유효성 검사를 구현하였다. 올바르지 않은 형식이면 경고창이 뜬다.
- 아이디와 닉네임은 기존 회원과 중복이 불가능하다. AJAX로 기존 회원의 DB정보와 연동하여 사용이 가능한 경우와 불가능한 경우가 입력창의 결과에 따라 즉시 화면에 표기된다.
- 아이디와 닉네임 중 사용 불가라는 표시가 있다면 회원가입은 불가능하다.
- 이메일 인증 코드를 구현하여 Spring Email 전송 기능을 사용했다. 랜덤으로 인증번호를 생성하여 해당 인증번호를 올바르게 입력하지 않으면 가입이 불가능하다.
- 프로필 사진을 선택하여 넣을 수 있다. 선택한 사진은 바로 확인할 수 있다.

### [문제]

회원 가입 시 등록한 이미지 사진을 사용자가 바로 확인 할 수 있는 기능을 어떻게 구현해야 할까?

### [해결]

JavaScript와 JQuery를 활용하여 문제를 해결했다. 

change(function (e))를 구현하고 .attr() 메서드를 활용하여 FileReader로 읽어온 파일을 지정한 공간에 넣을 수 있었다.
해당 영역에서 등록된 파일은 Multipart/form-data로 처리하여 이미지가 업로드 된다.

---

아이디와 닉네임은 중복이 불가능하다. 
따라서 사용자가 중복 아이디와 닉네임을 입력했을 경우 해당 화면에서 바로 사용 불가가 표시되기 위해서 어떤 방식을 사용해야 할까?

JQuery의 Ajax 사용으로 문제를 해결했다.
강의 시간에서는 JavaScript를 통한 Ajax 활용을 다루었지만 보다 간편하게 Ajax를 다루는 방법을 익히고 싶어 JQuery 방법을 택하게 되었다. 
Controller의 ResponseBody와 JSP파일의 JQuery에서 $.ajax 문법을 통해 빠르게 데이터베이스 값과 사용자 입력 값을 비교할 수 있었고, 문제를 해결할 수 있었다.

---

이메일은 사용자가 아이디/비밀번호를 분실했을 시 인증을 위한 도구로 사용될 계획이다. 
따라서 그에 맞는 보안 절차를 위해 인증요소를 구현하고 싶은데 어떻게 해결해야 할까?

Spring의 JavaMailSender 기능을 사용하여 해결했다. 
Service클래스에서 MailSendService를 생성하고 난수 발생 메서드와 sendMail메서드를 구현하였다. 해당 클래스는 Controller에서 메일을 발송하고 ResponseBody로 메일 발송 성공 여부를 JSP로 전송한다.

### 일반 회원 로그인 화면과 네이버 로그인 화면

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f20a5f29-72eb-4063-a697-aafaa90554c1/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/69c296a8-7c22-4b28-962b-fd83a727f157/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/e4798443-ee89-4cc1-bc55-53ad50913b26/Untitled.png)

- 회원가입한 아이디와 비밀번호로 로그인이 성공한다면 사이트 왼쪽 사이드 바에 회원 프로필과 닉네임이 표출된다.
- 네이버 로그인 회원일 경우 네이버에서 프로필 사진과 닉네임 데이터를 받아와서  사이트에 표출한다.
- 네이버 로그인 회원일 경우 회원정보 확인하기 페이지에서 네이버 회원이라는 정보가 표기된다.
- 일반 회원일 경우 회원정보 확인하기에서 회원정보 수정하기 페이지로 이동이 가능하다.
- 로그인 시 자동 로그인을 체크한다면 로그아웃 버튼을 누르지 않는 이상 해당 사이트에 접속 할 때 로그인 상태가 유지된다.

### [문제]

로그인 시 사용자의 정보에서 닉네임과 프로필 사진을 어떻게 사이트 메인에서 유지할 수 있을까? 
또한 네이버 로그인 회원일 경우 어떻게 네이버 사이트에서 사용자의 닉네임과 프로필 사진을 받아오고, 받아온 정보를 사이트 메인에 띄울 수 있을까?

### [해결]

네이버 Developer사이트에서 네이버 로그인 API 사용 방법을 공부하였다. 
JavaScript로 네이버 토큰에 접근, CallBack Function으로 프로필 데이터, 닉네임 데이터를 불러왔다. 

---

자동 로그인 체크시 어떻게 로그인을 유지할 수 있을까?

해당 문제를 해결하기 위해 Session에 대해 공부하였다. 

---

네이버 회원과 일반 회원을 어떻게 구분할 수 있을까?

로그인 세션을 분리하였다. 
RequestMapping에 따라 Naver로그인 회원은 session.setAttribute(”login”,”naver”) 값을 주었고 일반 회원은 “login”에 “common”값을 주었다. 
사이트에서 네이버 회원과 일반 회원의 차이를 가장 잘 볼 수 있는 화면은 회원 정보 수정이다. 따라서 해당 페이지에서 session의 login정보에 따라 <c:if test="${login eq 'naver'}"> 조건을 통해 구분이 가능하도록 설정하였다.

### 회원 정보 찾기 기능

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/a75b3e55-f722-464a-93d0-27dc28d0bc08/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f10d1933-818c-4660-96cf-3937ef4f6901/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/8026708c-b145-492b-acde-d453f3d44551/Untitled.png)

- 로그인 정보를 잊어버린 회원을 위한 아이디 , 비밀번호 찾기 기능 구현
- 회원가입 시 입력했던 이름, 전화번호, 이메일 주소를 맞게 입력한다면 AJax로 DB와 데이터를 비교하여 바로 아이디를 확인할 수 있다.
- 아이디 찾기에서 찾은 아이디로 비밀번호 찾기에서 아이디와 이메일 주소를 맞게 입력한다면, 
해당 이메일 주소로 임시 비밀번호 메일이 발송되고, 회원의 비밀번호가 임시 비밀번호로 변경된다.

### 회원 정보 수정 기능 구현

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/1d103d55-3ec3-468d-a601-8b6d20cb912c/Untitled.png)

- 회원 정보 수정 시 아이디와 이름은 수정이 불가능하다.
- 닉네임은 수정할 수 있으며, 중복 닉네임은 설정이 불가능하다.
- 기존의 비밀번호가 일치해야 새 비밀번호로 바꿀 수 있으며 회원 정보 수정이 가능하다.
- 회원 정보 수정을 할 시에도 이메일 인증이 필요하다.

### 회원 탈퇴 기능 구현

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/6216e260-a29a-4380-8c55-7b54cffb2987/Untitled.png)

- 회원 탈퇴 시 비밀번호를 다시 한번 입력하여야 한다.
- 최종 탈퇴를 확인하는 Alert 창이 띄워진다
- 확인을 누를 경우 DB에서 해당 회원의 정보가 삭제된다.

## 4. 사이트 메인 기능 구현 - 박연수

### 강남 지역 주차장 위치 표시 및 검색 기능 구현

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/fe185a05-cec1-4ee0-abf7-57c2b02eb1f1/Untitled.png)

- 네이버 지도 API 에 강남지역 주차장 위치를 서울 열린데이터 광장 API를 활용하여 JSON 데이터를 기반으로 실시간 통신을 통해 마크로 찍어 표현했다.
- 해당 마크를 클릭하면 주차장 정보가 나온다. 주차장 정보 창의 X를 누르면 화면이 꺼지고, 다른 마크를 클릭한다면 해당 마크에 해당하는 주차장 정보가 표출된다.
- 지도 왼쪽 검색 구역에서 강남 지역의 주차장 주소를 검색하면 해당하는 주차장만 지도에 표기된다.

## 5. 사이트 커뮤니티 게시판 구현 - 박혜정

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/655548e0-9b5a-4186-bead-7a7886a2d95e/Untitled.png)

- 사이트의 자유게시판, 후기게시판 구현
- 각 게시판에는 로그인 한 회원만 글을 쓸 수 있다.
- 게시판 제목 또는 글 내용을 검색하여 글을 찾을 수 있다.
- 작성한 글이나 댓글을 수정, 삭제 할 수 있다.

## 프로젝트 후기

:)


테스트협업
이번 프로젝트를 하면서 가장 많이 쓴 의존주입은 필드주입.
그러나 추가로 공부를 하면서 느낀 것은 가장 안좋은 방식의 의존주입을 사용한 것.

추후 프로젝트를 수정할 기회가 있다면 해당 의존주입을 생성자 주입 방식으로 고칠 것

* 생성자 주입 방식을 선택하는 이유
    프레임워크에 의존하지 않고, 순수한 자바 언어의 특징을 잘 살리는 방법
    기본적으로 생성자 주입을 사용하고, 필수 값이 아닌 경우에는 수정자 주입 방식을 옵션으로 부여하면 된다.
    생성자 주입과 수정자 주입은 동시에 사용할 수 있음
    따라서 항상 생성자 주입을 선택하고, 옵션이 필요할 경우 수정자 주입을 선택. 되도록이면 필드 주입은 쓰지 않는 것이 옳다
