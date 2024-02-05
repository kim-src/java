<!-- Update Date -->
#### <p align="right">Date : February 5, 2024</p>

<!-- Title -->
# 🚀 Book Rental Service Web (ver. 0.3)
> - Web Development Project
> - Spring MVC Framework
> - 개발 환경 : Spring Tool Suite 3
> - 개발 언어 : Java, HTML, CSS

<br/>

<!-- Contents -->
### 🔔 도서 대여 고객 관리 프로그램
> - Web Development Project

<br/>

### 🎯 구현된 웹 페이지 모습
### A. 홈 페이지 : index.jsp 
<p align="center"><img src="https://github.com/Kim-src/Book-Rental-Service/assets/150884526/b02a3c66-e68f-42d0-a5f9-a328e87e07c2" width="500px"></p>

### B. 고객등록 페이지 : register.jsp
<p align="center"><img src="https://github.com/Kim-src/Book-Rental-Service/assets/150884526/018e1d30-bfa5-4864-82bf-a01a9b799233" width="500px"></p>

### C. 고객목록 조회 페이지 : list.jsp
<p align="center"><img src="https://github.com/Kim-src/Book-Rental-Service/assets/150884526/9f9d8a5d-9dd3-4b20-9555-040405eafe5c" width="500px"></p>

### D. 고객대여목록 조회 페이지 : rentallist.jsp
<p align="center"><img src="https://github.com/Kim-src/Book-Rental-Service/assets/150884526/d08b7414-e2ef-44c9-8ed5-93018b30897c" width="500px"></p>

### E. 고객대여금액 조회 페이지 : rentalamount.jsp
<p align="center"><img src="https://github.com/Kim-src/Book-Rental-Service/assets/150884526/79211948-f3ba-4944-8d42-261e5c85e29a" width="500px"></p>

<br/>

### 📌 프로젝트 수행을 위한 프로그램
> - Java Development Kit 11
> - Spring Tool Suite 3.9.17
> - Tomcat 9.0.52
> - MySQL 8.0.33

<br/>

### 📌 프로그램 구현을 위해 필요한 DataBase
#### 🎯 Member_tbl : 고객 정보 관리 DB 구성
> - cust_no : 고객의 일련번호 / ```int``` / ```Primary Key```
> - cust_name : 고객의 이름 / ```varchar(20)```
> - phone : 고객의 전화번호 / ```varchar(20)```
> - join_date : 고객의 가입일자 / ```datetime``` / ```now()```
> - cust_email : 고객의 이메일 / ```varchar(50)```
> - grade : 고객의 등급 / ```varchar(20)```
#### 🎯 Rent_tbl : 고객 정보 및 도서 대여 정보 관리
> - cust_no : 고객의 일련번호 / ```int```
> - rent_no : 도서의 대여번호 / ```int``` / ```Primary Key```
> - book_code : 도서의 일련번호 / ```varchar(20)```
> - rent_price : 도서의 대여금액 / ```int```
> - rent_date : 도서의 대여일자 / ```datetime``` / ```now()```

<br/>

### 📌 프로그램이 구현된 웹 페이지
#### 🎯 Home
> - 도서 대여 관련 페이지 및 UI 구성
> - "고객 등록" 버튼
> - "고객 목록 조회/수정" 버튼
> - "고객 대여 리스트" 버튼
> - "고객 대여 금액 조회" 버튼
> - "홈으로" 버튼
#### 🎯 "고객 등록" 페이지
> - 관리자가 고객의 정보를 생성할 수 있는 페이지
> - 고객번호 : 시스템이 부여한 고객의 일련번호
> - 고객이름 : 고객의 이름
> - 전화번호 : 고객의 전화번호
> - 이메일 : 고객의 이메일
> - 고객등급 : 총 대여금액에 따른 고객의 등급
#### 🎯 "고객 목록 조회" 페이지
> - 고객 등록 정보 및 가입일자를 조회할 수 있는 페이지
> - 고객별 고객번호에 따라 각 "고객 목록 수정" 페이지를 링크로 연결
#### 🎯 "고객 정보 수정" 페이지
> - 고객번호를 제외한 모든 항목에 대한 수정 가능
#### 🎯 "고객 대여 리스트" 페이지
> - 도서 대여 정보를 조회할 수 있는 페이지
> - 고객번호, 대여번호, 도서코드, 대여금액, 대여일자 등 조회 가능
#### 🎯 "고객 대여 금액 조회" 페이지
> - 도서 대여 이력이 있는 고객의 총 도서 대여 금액 조회 가능
> - 고객별 총 도서 대여 금액에 따라 고객 등급 구분

<br/>

### 🎁 References
> - [고용노동부 K-Digital 프로젝트 안내문](https://github.com/Kim-src/Book-Rental-Service/blob/main/2.%20Java%26Spring_Direction.pdf)
> - [ChatGPT : 웹 페이지의 전반적인 코드 설계](https://chat.openai.com/)
> - [CodeJava.net : Spring MVC framework와 MySQL DB 연동하는 방법](https://www.codejava.net/frameworks/spring/spring-mvc-spring-data-jpa-hibernate-crud-example#List)
> - [FastCampus 남궁성 강사님의 GitHub](https://github.com/castello)
> - [FastCampus 박매일 강사님의 GitHub](https://github.com/bitcocom)

<br/>

***

<br/>
<br/>
<br/>
