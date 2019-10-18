perfume
=========
자신의 원하는 향기를 선택해서 자신만의 향수를 만들 수 있는 사이트

# 1. 프로젝트 소개

## 1.1. 주제선정동기
사람을 만날 때 향기는 좋은 첫인상을 좌우하는데 아주 큰 힘을 가지고 있습니다.
기존에 있는 향수를 사용하기 보단 자신이 원하는 향을 조합하여 사용해보고 싶다는 생각을 하였습니다.
세상에 하나뿐인 향수를 만들어서 누군가에게 특별한 선물도 하고,
자기 자신만의 고유한 향기가 있었으면 하는 마음에 홈페이지를 제작하고자 하였습니다.

## 1.2. 특징
  * 원하는 향을 선택하고 조합하여 자신만의 고유 향기를 가질 수 있게 도와준다.
  * 세상에 하나뿐인 특별한 향수
  * 직접 제작한 향수의 리뷰
  * 자신을 표현하는 마이페이지
  * 드래그 앤 드롭 기능
  
## 1.3. 개발환경
![perfume_os](https://user-images.githubusercontent.com/51186886/66729140-60e19100-ee84-11e9-942b-b3a08bdb4b8d.PNG)

***

# 2. 설계 사양서

## 2.1. ERD

### 2.1.1. 논리모드
![perfume-logic](https://user-images.githubusercontent.com/51186886/66729211-e7966e00-ee84-11e9-97ce-21dbf998e6c7.PNG)

### 2.1.2. 물리모드
![perfume-physics](https://user-images.githubusercontent.com/51186886/66729281-55db3080-ee85-11e9-8174-514ebc80f18f.PNG)

## 2.2. 네이밍 구조

### 2.2.1. 퍼블리싱 (퍼블리싱 적힌 곳은 직접 퍼블리싱)
 *jsp
![perfume-jsp](https://user-images.githubusercontent.com/51186886/66731490-9c835780-ee92-11e9-88fc-4941ac46d636.PNG)

 *css
![perfume-css](https://user-images.githubusercontent.com/51186886/66733433-84afd180-ee9a-11e9-80b9-26f60f4b45cf.PNG)

 *js
![perfume-js](https://user-images.githubusercontent.com/51186886/66733436-87aac200-ee9a-11e9-9215-20455833f98a.PNG)

### 2.2.2. 퍼블리싱 코드
[jsp](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/webapp/WEB-INF/views) / 
[css](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/webapp/css) / 
[JavaScript&Jquery](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/webapp/js)

### 2.2.3. 개발 (개발 적힌 곳은 직접 개발)
![perfume-src](https://user-images.githubusercontent.com/51186886/66731129-a7d58380-ee90-11e9-945e-4b37de956276.PNG)
![perfume-src2](https://user-images.githubusercontent.com/51186886/66733441-8a0d1c00-ee9a-11e9-8ee9-fef2bb2a9dbe.PNG)

### 2.2.4. 개발 코드
[SRC](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/java/kr/ac/kopo/perfume) / 
[Controller](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/java/kr/ac/kopo/perfume/controller) / 
[Service](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/java/kr/ac/kopo/perfume/service) / 
[Dao](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/java/kr/ac/kopo/perfume/dao) / 
[Model](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/java/kr/ac/kopo/perfume/model) / 
[util](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/java/kr/ac/kopo/perfume/util) / 
[interceptor](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/java/kr/ac/kopo/perfume/interceptor)

### 2.2.5. MAPPER (개발 적힌 곳은 직접 개발)
![perfume-mapper](https://user-images.githubusercontent.com/51186886/66731970-000e8480-ee95-11e9-8754-51a3ebba27b3.PNG)

### 2.2.6. MAPPER 코드
[Mybatis](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/resources/mybatis)

## 2.3. 테이블 구조
![perfume-table](https://user-images.githubusercontent.com/51186886/66731303-a6588b00-ee91-11e9-971a-9ae72b34f1c8.PNG)

***

# 3. 내 활동

## 3.1. 회원가입

### 3.1.1. 로그인 페이지
![perfume-login](https://user-images.githubusercontent.com/51186886/66737011-c42feb00-eea5-11e9-8aa3-644b0767338f.PNG)
  * 로그인 페이지 퍼블리싱
  * 퍼블리싱 코드 : [로그인.jsp](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/WEB-INF/views/login.jsp) / [로그인.css](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/css/member.css)

### 3.1.2. 약관동의 페이지
![perfume-terms](https://user-images.githubusercontent.com/51186886/66737049-dca00580-eea5-11e9-8908-7267acd17840.PNG)
  * 약관동의 페이지 퍼블리싱
  * 표준약관을 참조하여 만듬
  
  
![perfume-agree](https://user-images.githubusercontent.com/51186886/66737051-df025f80-eea5-11e9-9522-2f0793e41147.PNG)
  * 약관동의 시 모두 동의해야 넘어갈 수 있도록 JavaScript를 활용한 유효성 검사
  * 퍼블리싱 및 개발 코드 : [약관동의.jsp](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/WEB-INF/views/terms.jsp) / [약관동의.css](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/css/member.css)

### 3.1.3. 회원가입 정보 입력 페이지
![perfume-info](https://user-images.githubusercontent.com/51186886/66737053-e0cc2300-eea5-11e9-8cf4-154c84d38d2f.PNG)
  * 회원가입 정보 입력 페이지 퍼블리싱
  * 정규식을 사용해서 아이디 영문+숫자 조합, 비정상 이메일을 확인
  * 빈칸이나 비밀번호 확인이 일치하지 않을시에 회원가입이 되지 않도록 Jquery를 활용한 유효성 검사
  
  
![perfume-over](https://user-images.githubusercontent.com/51186886/66737057-e295e680-eea5-11e9-9945-e5376f78e3fc.PNG)
  * Ajax를 활용해서 아이디 중복확인
  * 퍼블리싱 코드 : [회원가입.jsp](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/WEB-INF/views/information.jsp) / [회원가입.css](
https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/css/member.css) / [회원가입.js](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/js/login.js)
  * 개발 코드 : [회원가입.Controller](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/java/kr/ac/kopo/perfume/controller/RootController.java) / [회원가입.Dao](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/java/kr/ac/kopo/perfume/dao/UserDaoImpl.java) / [회원가입.Model](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/java/kr/ac/kopo/perfume/model/Member.java ) / [회원가입.Mapper](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/resources/mybatis/member.xml)

## 3.2. 리뷰페이지

### 3.2.1. 리뷰작성 페이지
![perfume-write](https://user-images.githubusercontent.com/51186886/66824223-d3389b00-ef82-11e9-955e-78a09a25cc56.PNG)
  * 리뷰작성 페이지 퍼블리싱
  * 자신이 로그인한 아이디, 자신이 선택한 향수의 재료, 자신이 선택한 향수병이 보임
  * 유효성 검사를 통해 향수이름 이나 내용이 작성되지 않았으면 작성되지 않도록 함
  * 작성하기를 누르면 자신이 작성한 글과 만든 향수가 DB에 저장됨
  * 퍼블리싱 코드 : [리뷰작성.jsp](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/WEB-INF/views/write.jsp) / [리뷰.css](
https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/css/subway.css) / [리뷰.js](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/js/sub.js)

  
### 3.2.2. 리뷰게시판
![perfume-review](https://user-images.githubusercontent.com/51186886/66824222-d3389b00-ef82-11e9-8390-19cc2c60e84d.PNG)
  * 리뷰를 작성한 작성자의 ID와 작성자가 만든 향수가 보임
  * 페이징을 하여 게시글이 6개씩 보이고 자신이 보는 페이지를 강조
  * 퍼블리싱 코드 : [리뷰게시판.jsp](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/WEB-INF/views/review.jsp)


### 3.2.3. 리뷰글 보는 페이지
![perfume-viewpage](https://user-images.githubusercontent.com/51186886/66826265-109f2780-ef87-11e9-9548-785dacf31386.PNG)
  * 리뷰글 보는 페이지 퍼블리싱
  * 작성자가 작성한 내용이 보임
  * JSTL의 sessionscope를 이용해서 자신이 쓴 글만 수정, 삭제가 됨
  * 퍼블리싱 코드 : [View.jsp](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/WEB-INF/views/view.jsp) / [View.css](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/css/subway.css) / [View.js](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/js/sub.js)

### 3.2.4. 리뷰 관련 코드
  * 개발 코드 : [리뷰.Controller](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/java/kr/ac/kopo/perfume/controller/ReviewController.java) / [리뷰.Service](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/java/kr/ac/kopo/perfume/service/ReviewServiceImpl.java) / [리뷰.Dao](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/java/kr/ac/kopo/perfume/dao/ReviewDaoImpl.java) / [리뷰.Model](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/java/kr/ac/kopo/perfume/model/Review.java) / [리뷰.Mapper](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/resources/mybatis/review.xml)/ [리뷰페이징 코드](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/java/kr/ac/kopo/perfume/util/Pager.java)
  

## 3.3. 마이페이지
![perfume-mypage](https://user-images.githubusercontent.com/51186886/66826835-5b6d6f00-ef88-11e9-85c0-0d87b8b721d6.PNG)
  * 마이페이지 퍼블리싱
  * 자신의 ID, 자신이 만든 향수의 개수와 작성한 리뷰 수를 볼 수 있음
  * 자신이 만든 향수들을 볼 수 있음
  * 리뷰 작성하기를 누르면 작성페이지로 감
  * 페이징을 해서 만든 향수가 3개씩 보이고 현재 페이지가 강조됨
  * 퍼블리싱 코드 : [마이페이지.jsp](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/WEB-INF/views/mypage.jsp) / [마이페이지.css](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/css/member.css)
  * 개발 코드 : [마이페이지.Controller](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/java/kr/ac/kopo/perfume/controller/MypageController.java) / [마이페이지.Service](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/java/kr/ac/kopo/perfume/service/MypageServiceImpl.java) / [마이페이지.Dao](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/java/kr/ac/kopo/perfume/dao/MypageDaoImpl.java) / [마이페이지.Model](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/java/kr/ac/kopo/perfume/model/Mypage.java) / [마이페이지 페이징 코드](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/java/kr/ac/kopo/perfume/util/Pager2.java) / [마이페이지.Mapper](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/resources/mybatis/mypage.xml)
  
## 3.4. 향수제작 페이지

### 3.4.1. 향수제작 페이지 1번
![perfume-make1](https://user-images.githubusercontent.com/51186886/66827591-fdda2200-ef89-11e9-904d-3105c1c33649.PNG)
  * 향수제작 페이지 1번 퍼블리싱
  
  
![perfume-tab](https://user-images.githubusercontent.com/51186886/66827583-fd418b80-ef89-11e9-9192-42295d322dd0.PNG)
  * Jquery를 사용해서 탭메뉴 기능을 만들고 향수를 카테고리별로 나눔
  
  
![perfume-man1](https://user-images.githubusercontent.com/51186886/66827587-fdda2200-ef89-11e9-8710-22866d35a648.PNG)
  * 남성페이지 퍼블리싱
  
### 3.4.2. 향수제작 페이지 2번
![perfume-make2](https://user-images.githubusercontent.com/51186886/66827585-fdda2200-ef89-11e9-8ff7-080b2d0239ae.PNG)
  * 향수제작 페이지 2번 퍼블리싱
  
  
![perfume-man2](https://user-images.githubusercontent.com/51186886/66827590-fdda2200-ef89-11e9-9344-9eef0921a23e.PNG)
  * 남성페이지 퍼블리싱
  
### 3.4.3. 향수제작 관련 코드
  * 퍼블리싱 코드 : [여자.jsp](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/WEB-INF/views/woman.jsp) / [여자.css](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/css/woman.css) / [여자.js](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/js/woman.js) / [남자.jsp](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/WEB-INF/views/man.jsp) / [남자.css](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/css/man.css) / [남자.js](https://github.com/pro1km/Perfume/blob/master/Perfume/src/main/webapp/js/man.js)

***
