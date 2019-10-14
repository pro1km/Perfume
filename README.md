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

## 2.2. 네이밍 

***

# 3. 내 활동

## 3.1. 회원가입
  * 로그인 페이지, 약관동의 페이지, 정보 입력 페이지 퍼블리싱
  * 약관동의 시 모두 동의해야 넘어갈 수 있도록 JavaScript를 활용한 유효성 검사
  * Ajax를 활용해서 아이디 중복확인
  * 정규식을 사용해서 아이디 영문+숫자 조합, 비정상 이메일을 확인
  * 빈칸이나 비밀번호 확인이 일치하지 않을시에 회원가입이 되지 않도록 Jquery를 활용한 유효성 검사

## 3.2. 리뷰페이지
  * 리뷰작성 페이지 퍼블리싱
  * CRUD를 응용 리뷰작성, 리뷰보기, 수정, 삭제가 되도록 만듬 (자신의 ID, 자신이 선택한 향수, 향수병이 보임)
  * JSTL의 sessionscope를 이용해서 자신이 쓴 글만 수정,삭제가 되도록 만듬
  * 리뷰게시판은 리뷰의 작성자의 ID 와 작성자가 쓴 향수이름, 작성자가 선택한 향수병이 보임
  * 페이징을 해서 게시글이 6개씩 보이고 현재 페이지가 강조됨

## 3.3. 마이페이지
  * 마이페이지 퍼블리싱
  * 자신의 ID, 자신이 만든 향수의 개수와 작성한 리뷰 수를 볼 수 있음
  * 자신이 만든 향수들을 볼 수 있음
  * 페이징을 해서 만든 향수가 3개씩 보이고 현재 페이지가 강조됨
  
***
  
# 3. 코드

## 3.1. 개발 코드
[Controller](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/java/kr/ac/kopo/perfume/controller) / 
[Service](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/java/kr/ac/kopo/perfume/service) / 
[Dao](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/java/kr/ac/kopo/perfume/dao) / 
[Model](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/java/kr/ac/kopo/perfume/model) / 
[util](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/java/kr/ac/kopo/perfume/util) / 
[interceptor](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/java/kr/ac/kopo/perfume/interceptor)

## 3.2. Mapper 코드
[Mybatis](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/resources/mybatis)

## 3.3. 퍼블리싱 코드
[jsp](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/webapp/WEB-INF/views) / 
[css](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/webapp/css) / 
[JavaScript&Jquery](https://github.com/pro1km/Perfume/tree/master/Perfume/src/main/webapp/js)
