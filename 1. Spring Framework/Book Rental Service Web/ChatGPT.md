✅ STS3 웹 개발 시작
🚀 DATE : January 19, 2024

🔔 Query 1

STS3에서 "BookRentalService"라는 이름의 Spring Legacy Project를 막 생성한 상황입니다.

메인 페이지를 제작하려고 하고 <header>, <nav>, <section>, <footer> 태그를 적용한 웹 페이지를 브라우저에 호출하려고 합니다.
참고로 저는 HTTP, CSS, BootStrap을 사용해본 경험이 없습니다.
그래서 STS3 에서만 작업하고 싶습니다.

각 태그에 해당되는 문장은 아래와 같습니다.

<header>
도서 고객 및 대여 관리 프로그램 ver 1.0

<nav>
column1=고객등록
column2=고객목록조회/수정
column3=고객대여리스트
column4=고객대여금액조회
column5=홈으로

<section>
도서 고객 및 대여관리 프로그램
프로그램 작성순서
1. 고객정보 테이블을 생성 한다.
2. 대여정보 테이블을 생성 한다.
3. 고객정보, 대여정보 테이블에 제시된 데이터를 생성한다.
4. 고객정보 입력 화면 프로그램을 작성한다.
5. 고객정보 조회 프로그램을 작성한다.
6. 고객대여리스트를 조회하는 프로그램을 작성한다.
7. 고객별 대여금액을 조회하는 프로그램을 작성한다.

<footer>
나도 할 수 있는 Java & Spring 웹 개발 종합반(김창성)

관련된 코드를 알려주시면 감사하겠습니다.



<br/>


✅ STS3 웹 개발 시작
🚀 DATE : January 20, 2024

🔔 Query 2

답변 주셔서 감사합니다.
저는 STS3 사용 경험이 거의 없습니다.

webapp에는 resources 폴더와 WEB-INF 폴더가 있는데 둘 중 어느 폴더에 제공해주신 index.jsp 파일을 생성하면 되는 것인가요?

🔔 Query 3

답변 주셔서 감사합니다.
Bootstrp은 무엇이며 JSP는 무엇입니까?

🔔 Query 3

답변 주셔서 감사합니다.
그렇다면 Bootstrp과 JSP는 어떤 관계입니까?

🔔 Query 4

답변 주셔서 감사합니다.
STS3에서 새로운 Spring Legacy Project를 생성하였습니다.
그리고 views 폴더에 index.jsp를 생성하였습니다.
그리고 external web browser인 Chrome은 실행시켰습니다.
그리고 Tomcat 9.0.85로 Spring Legacy Project를 실행하였습니다.
결과적으로, 호출된 웹 페이지의 URL은 http://localhost:8090/book/ 입니다.
그런데 HTTP 상태가 404입니다.

404 코드의 에러를 해결하고 웹 페이지를 볼 수 있는 방법은 무엇일까요?

🔔 Query 4

답변 주셔서 감사합니다.
URL 매핑이 문제인 것 같습니다.
@RequestMapping을 어떻게 설정해야 될지 조금 더 상세하게 말씀해주실 수 있나요?

🔔 Query 5

답변 주셔서 감사합니다.

프로젝트명은 BookRentalService 입니다.
그리고 Spring Legacy Project 생성시 입력한 top-level package는 com.fastcampus.book입니다.
그래서 호출된 웹 페이지의 URL이 http://localhost:8090/book/ 인 것 같습니다.
한편, 말씀해주신 코드 내용이 입력된 main.java 코드를 BookRentalService → src/main/java → com.fastcampus.book 안에 새로운 java 파일을 생성하여 적용하면 될까요?
com.fastcampus.book 안에는 HomeController.java 파일이 이미 있습니다.


🔔 Query 6

답변 주셔서 감사합니다.

@HomeController.java 파일 내에는 아래와 같은 코드가 입력되어 있습니다.

package com.fastcampus.book;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
}

위 코드를 `http://localhost:8090/BookRentalService/home` 경로로 호출할 수 있도록 수정해주실 수 있나요?

🔔 Query 7

답변 주셔서 감사합니다.

위 코드대로 Home Controller.java 파일을 수정하였습니다.
그리고 Spring Legacy Project를 실행하였습니다.
그런데 다시 404 코드가 호출되었습니다.

정상적으로 웹 페이지를 호출할 수 있도록 추가해야 될 파일이나 코드가 있을까요?

🔔 Query 8

답변 주셔서 감사합니다.

첫 번째, 나는 새로운 Spring Legacy Project를 생성하였었습니다.
두 번째, 현재 HomeController.java에 작성된 코드는 아래와 같습니다.


``` Java

package com.fastcampus.book;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
    
    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
    
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String home(Locale locale, Model model) {
        logger.info("Welcome home! The client locale is {}.", locale);
        
        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
        
        String formattedDate = dateFormat.format(date);
        
        model.addAttribute("serverTime", formattedDate );
        
        return "home";
    }
    
}

```

세 번째, 현재 Home.jsp에 작성된 내용은 아래와 같습니다.

``` Java

ff<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:set var="loginOutLink" value="${sessionScope.id==null ? '/login/login' : '/login/logout'}"/>
<c:set var="loginOut" value="${sessionScope.id==null ? 'Login' : 'Logout'}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>fastcampus</title>
    <link rel="stylesheet" href="<c:url value='/css/menu.css'/>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>    
</head>
<body>
<div id="menu">
	<ul>
	    <li id="logo">fastcampus</li>
	    <li><a href="<c:url value='/'/>">Home</a></li>
	    <li><a href="<c:url value='/board/list'/>">Board</a></li>
	    <li><a href="<c:url value='${loginOutLink}'/>">${loginOut}</a></li>    
	    <li><a href="<c:url value='/register/add'/>">Sign in</a></li>
	    <li><a href=""><i class="fas fa-search small"></i></a></li>
	</ul> 
</div>
<div style="text-align:center">
	<h1>This is HOME</h1>
	<h1>This is HOME</h1>
	<h1>This is HOME</h1>
</div>

```

네 번째, 현재 index.jsp에 작성된 내용은 아래와 같습니다.

``` Java

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>도서 고객 및 대여 관리 프로그램 ver 1.0</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            padding: 20px;
        }
        header, nav, section, footer {
            margin: 10px;
            padding: 10px;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>
    <header>
        <h1>도서 고객 및 대여 관리 프로그램 ver 1.0</h1>
    </header>
    
    <nav>
        <ul class="nav">
            <li class="nav-item">고객등록</li>
            <li class="nav-item">고객목록조회/수정</li>
            <li class="nav-item">고객대여리스트</li>
            <li class="nav-item">고객대여금액조회</li>
            <li class="nav-item">홈으로</li>
        </ul>
    </nav>
    
    <section>
        <h2>도서 고객 및 대여관리 프로그램</h2>
        <p>프로그램 작성순서</p>
        <ol>
            <li>고객정보 테이블을 생성한다.</li>
            <li>대여정보 테이블을 생성한다.</li>
            <li>고객정보, 대여정보 테이블에 제시된 데이터를 생성한다.</li>
            <li>고객정보 입력 화면 프로그램을 작성한다.</li>
            <li>고객정보 조회 프로그램을 작성한다.</li>
            <li>고객대여리스트를 조회하는 프로그램을 작성한다.</li>
            <li>고객별 대여금액을 조회하는 프로그램을 작성한다.</li>
        </ol>
    </section>
    
    <footer>
        <p>나도 할 수 있는 Java & Spring 웹 개발 종합반(김창성)</p>
    </footer>

    <!-- Bootstrap JS 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

```

제 상태는 위에 말씀드린 네 가지의 상황입니다.
그리고 이 상태로 BookRentalService 프로젝트를 Run on Server하면 아래와 같은 오류가 발생됩니다.
"HTTP 상태 404 - 찾을 수 없음"
그리고 이 오류의 URL 주소는 "http://localhost:8090/book/"입니다.

저는 index.jsp에 작성된 웹 페이지 내용을 정상적으로 보고 싶습니다.
이를 위해 수정하거나 삭제해야 되는 코드는 무엇인가요?

🔔 Query 9

오류를 해결해주셔서 감사합니다.
컨트롤러 설정 확인 내용 대로 코드를 수정하였더니 정상적으로 실행되었습니다.

웹 개발을 계속 진행하겠습니다.

아래 코드 내용을 수정하고 싶습니다.
``` java
    <nav>
        <ul class="nav">
            <li class="nav-item">고객등록</li>
            <li class="nav-item">고객목록조회/수정</li>
            <li class="nav-item">고객대여리스트</li>
            <li class="nav-item">고객대여금액조회</li>
            <li class="nav-item">홈으로</li>
        </ul>
    </nav>
```

1. 위 코드의 <li class> 태그에 해당되는 내용을 각각의 블록으로 만들고 싶습니다.
2. 그리고 각각의 블로그를 클릭하여 해당 글자의 페이지로 이동하고 싶습니다.

관련된 코드를 알려주실 수 있나요?

🔔 Query 10

href는 무슨 뜻인가요?

🔔 Query 11

<a> 앵커 태그는 무엇인가요?

🔔 Query 12

아래 태그의 내용을 적당한 간격으로 벌리고 싶은데 방법이 있을까요?

``` java
    <nav>
	    <ul class="nav">
	        <li class="nav-item"><a href="<c:url value='/customer/Register'/>">고객등록</a></li>
	        <li class="nav-item"><a href="<c:url value='/customer/list'/>">고객목록조회/수정</a></li>
	        <li class="nav-item"><a href="<c:url value='/customer/RentalList'/>">고객대여리스트</a></li>
	        <li class="nav-item"><a href="<c:url value='/customer/RentalAmount'/>">고객대여금액조회</a></li>
	        <li class="nav-item"><a href="<c:url value='/'/>">홈으로</a></li>
	    </ul>
	</nav>
```

🔔 Query 12

아래 css 코드는 어느 파일에 입력해야 됩니까?
그리고 파일의 위치는 어느 곳으로 설정해야 됩니까?

``` css
.nav-item {
    margin-right: 10px; /* 원하는 간격 설정 */
}
```

🔔 Query 13

html 태그 중 ul과 li의 의미는 무엇인가요?

🔔 Query 14

'src/main/webapp/resources/css' 경로에 styles.css와 같은 이름으로 CSS 파일을 잘 생성했는데 스타일이 적용되지 않습니다.

이유가 있을까요?

적용한 css 파일 코드는 아래와 같습니다.
``` css
/* styles.css */
.nav-item {
    margin-right: 10px; /* 원하는 간격 설정 */
}

```

🔔 Query 15

그렇다면 아래 html 코드 중 어느곳에 css 파일 경로를 입력해야 될까요?

``` html
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>도서 고객 및 대여 관리 프로그램 ver 1.0</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            padding: 20px;
        }
        header, nav, section, footer {
            margin: 10px;
            padding: 10px;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>
    <header>
        <h3 align="center">도서 고객 및 대여 관리 프로그램 ver 1.0</h3>
    </header>
    
    <nav align="center">
	    <ul class="nav">
	        <li class="nav-item"><a href="<c:url value='/customer/Register'/>">고객등록</a></li>
	        <li class="nav-item"><a href="<c:url value='/customer/list'/>">고객목록조회/수정</a></li>
	        <li class="nav-item"><a href="<c:url value='/customer/RentalList'/>">고객대여리스트</a></li>
	        <li class="nav-item"><a href="<c:url value='/customer/RentalAmount'/>">고객대여금액조회</a></li>
	        <li class="nav-item"><a href="<c:url value='/'/>">홈으로</a></li>
	    </ul>
	</nav>
    
    <section>
        <h4 align="center">도서 고객 및 대여관리 프로그램</h4>
        <br/>
        <p>프로그램 작성순서</p>
        <ol>
            <li>고객정보 테이블을 생성한다.</li>
            <li>대여정보 테이블을 생성한다.</li>
            <li>고객정보, 대여정보 테이블에 제시된 데이터를 생성한다.</li>
            <li>고객정보 입력 화면 프로그램을 작성한다.</li>
            <li>고객정보 조회 프로그램을 작성한다.</li>
            <li>고객대여리스트를 조회하는 프로그램을 작성한다.</li>
            <li>고객별 대여금액을 조회하는 프로그램을 작성한다.</li>
        </ol>
    </section>
    
    <footer>
        <p align="center">나도 할 수 있는 Java & Spring 웹 개발 종합반(김창성)</p>
    </footer>

    <!-- Bootstrap JS 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

```

🔔 Query 16

F12로 브라우저 개발자 도구를 확인해봤는데 css란은 없고 html 코드만 적용된 것 같습니다.
css도 적용하려면 어떻게 해야 되나요?

🔔 Query 17

'src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml' 파일에 아래 코드를 추가했습니다.
그런데 'mvc:resources' 부분에 빨간 밑줄이 그어졌습니다.
이유가 무엇인가요?

``` xml
<mvc:resources mapping="/resources/**" location="/resources/" />
```

🔔 Query 18

WebMvcConfig.java 파일의 코드를 아래와 같이 작성하였는데 이번에는 WebMvcConfig에 빨간 밑줄이 그어져 있습니다.

이를 해결할 수 있는 방법이 있을까요? 

🔔 Query 19

오류의 내용은 아래와 같습니다.
무슨 뜻인가요?
```
The type WebMvcConfig must implement the inherited abstract method WebMvcConfigurer.configureMessageConverters(List<HttpMessageConverter<?>>)
```

🔔 Query 20

@Override를 import해주는 방법을 알려주실 수 있나요?

🔔 Query 21

아래 경로가 맞는지 확인할 수 있는 방법이 있을까요?
경로에 styles.css 파일이 분명 있는데 적용이 안되는 것 같아서요.
<link rel="stylesheet" href="<c:url value='src/main/webapp/resources/css/styles.css'/>">

🔔 Query 22

아래처럼 Home.jsp에 html 코드를 작성하였습니다.
아래 이미 작성되어 있는 코드들로 출력된 글자들의 간격을 늘리고 싶은데 방법이 있을까요?

```
<li class="nav-item"><a href="<c:url value='/customer/Register'/>">고객등록</a></li>
<li class="nav-item"><a href="<c:url value='/customer/list'/>">고객목록조회/수정</a></li>
<li class="nav-item"><a href="<c:url value='/customer/RentalList'/>">고객대여리스트</a></li>
<li class="nav-item"><a href="<c:url value='/customer/RentalAmount'/>">고객대여금액조회</a></li>
<li class="nav-item"><a href="<c:url value='/'/>">홈으로</a></li>
```

🔔 Query 23
아래 css 코드를 src/main/resources/css/styles.css에 입력해도 적용이 안되는데 이유가 무엇일까요?
개발 환경은 STS3 입니다.

```css
/* styles.css */
.nav-item {
    margin-right: 10px; /* 원하는 간격 설정 */
}
```

🔔 Query 24
아래 html과 css 코드가 정상적으로 작동되지 않는 상황입니다.
잘 작성되었는지 확인해주실 수 있나요?

```html
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>도서 고객 및 대여 관리 프로그램 ver 1.0</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/styles.css">
        
    <style>
        body {
            padding: 20px;
        }
        header, nav, section, footer {
            margin: 10px;
            padding: 10px;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>
    <header>
        <h3 align="center">도서 고객 및 대여 관리 프로그램 ver 1.0</h3>
    </header>
    
    <nav align="center">
	    <ul class="nav">
	        <li class="nav-item" style="margin-right: 10px;"><a href="<c:url value='/customer/Register'/>">고객등록</a></li>
	        <li class="nav-item" style="margin-right: 10px;"><a href="<c:url value='/customer/list'/>">고객목록조회/수정</a></li>
	        <li class="nav-item" style="margin-right: 10px;"><a href="<c:url value='/customer/RentalList'/>">고객대여리스트</a></li>
	        <li class="nav-item" style="margin-right: 10px;"><a href="<c:url value='/customer/RentalAmount'/>">고객대여금액조회</a></li>
	        <li class="nav-item" style="margin-right: 10px;"><a href="<c:url value='/'/>">홈으로</a></li>
	    </ul>
	</nav>
    
    <section>
        <h4 align="center">도서 고객 및 대여관리 프로그램</h4>
        <br/>
        <p>프로그램 작성순서</p>
        <ol>
            <li>고객정보 테이블을 생성한다.</li>
            <li>대여정보 테이블을 생성한다.</li>
            <li>고객정보, 대여정보 테이블에 제시된 데이터를 생성한다.</li>
            <li>고객정보 입력 화면 프로그램을 작성한다.</li>
            <li>고객정보 조회 프로그램을 작성한다.</li>
            <li>고객대여리스트를 조회하는 프로그램을 작성한다.</li>
            <li>고객별 대여금액을 조회하는 프로그램을 작성한다.</li>
        </ol>
    </section>
    
    <footer>
        <p align="center">나도 할 수 있는 Java & Spring 웹 개발 종합반(김창성)</p>
    </footer>

    <!-- Bootstrap JS 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
```

```css
@charset "EUC-KR";

/* styles.css */
.nav-item {
    margin-right: 50px; /* 원하는 간격 설정 */
}
```

🔔 Query 25
중앙 정렬했다는 css 코드도 알려주세요.

🔔 Query 26
text-align: center; 이 부분을 특정 nav-item에만 적용할 수도 있나요?

🔔 Query 27
아래 코드를 작성하였는데 왜 가운데 정렬이 되지 않을까요?
글자 간격은 잘 적용되었습니다.

```
        .nav-item {
	        text-align: center;
		    display: inline-block;
		    margin-right: 70px; /* 원하는 간격 설정 */
		}
```

🔔 Query 28
특정 .nav-item에만 가운데 정렬을 적용하려면 해당 클래스에 대한 추가 스타일을 정의하고 싶습니다.
어떻게 해야 될까요?

🔔 Query 29
아래 html에서 nav-item에 있는 글자들을 페이지의 가운데로 이동시키고 싶습니다.
어떻게 해야 될까요?

```html
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>도서 고객 및 대여 관리 프로그램 ver 1.0</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/styles.css">
        
    <style>
        body {
            padding: 20px;
        }
        header, nav, section, footer {
            margin: 10px;
            padding: 10px;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>
    <header>
        <h3 align="center">도서 고객 및 대여 관리 프로그램 ver 1.0</h3>
    </header>
    
    <nav align="center">
	    <ul class="nav">
	        <li class="nav-item" style="margin-right: 10px;"><a href="<c:url value='/customer/Register'/>">고객등록</a></li>
	        <li class="nav-item" style="margin-right: 10px;"><a href="<c:url value='/customer/list'/>">고객목록조회/수정</a></li>
	        <li class="nav-item" style="margin-right: 10px;"><a href="<c:url value='/customer/RentalList'/>">고객대여리스트</a></li>
	        <li class="nav-item" style="margin-right: 10px;"><a href="<c:url value='/customer/RentalAmount'/>">고객대여금액조회</a></li>
	        <li class="nav-item" style="margin-right: 10px;"><a href="<c:url value='/'/>">홈으로</a></li>
	    </ul>
	</nav>
    
    <section>
        <h4 align="center">도서 고객 및 대여관리 프로그램</h4>
        <br/>
        <p>프로그램 작성순서</p>
        <ol>
            <li>고객정보 테이블을 생성한다.</li>
            <li>대여정보 테이블을 생성한다.</li>
            <li>고객정보, 대여정보 테이블에 제시된 데이터를 생성한다.</li>
            <li>고객정보 입력 화면 프로그램을 작성한다.</li>
            <li>고객정보 조회 프로그램을 작성한다.</li>
            <li>고객대여리스트를 조회하는 프로그램을 작성한다.</li>
            <li>고객별 대여금액을 조회하는 프로그램을 작성한다.</li>
        </ol>
    </section>
    
    <footer>
        <p align="center">나도 할 수 있는 Java & Spring 웹 개발 종합반(김창성)</p>
    </footer>

    <!-- Bootstrap JS 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
```

🔔 Query 30
확인하였는데 글자들이 페이지의 가운데로 오지 않습니다.
다른 방법이 있을까요?

🔔 Query 31
'고객등록'인 'register.jsp' 페이지를 제작하려고 합니다.
아래 index.jsp 코드의 <header>, <nav>, <footer>는 그대로 유지하고 <section>만 변경하려고 합니다.
register.jsp 제작에 필요한 html 코드 등을 알려주세요.

```index.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>도서 고객 및 대여 관리 프로그램 ver 1.0</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        
    <style>
        body {
            padding: 20px;
        }
        header, nav, section, footer {
            margin: 10px;
            padding: 10px;
            border: 1px solid #ccc;
        }
        .nav-item {
		    display: inline-block;
		    text-align: center;
		    margin-right: 100px; /* 원하는 간격 설정 */
		}
		h3 {
		    text-align: center;
		}
		h4 {
		    text-align: center;
		}
		footer {
			text-align: center;
		}
    </style>
</head>
<body>
    <header>
        <h3>도서 고객 및 대여 관리 프로그램 ver 1.0</h3>
    </header>
    
    <nav>
	    <ul class="nav">
	        <li class="nav-item"><a href="<c:url value='/customer/register'/>">고객등록</a></li>
	        <li class="nav-item"><a href="<c:url value='/customer/list'/>">고객목록조회/수정</a></li>
	        <li class="nav-item"><a href="<c:url value='/customer/rentallist'/>">고객대여리스트</a></li>
	        <li class="nav-item"><a href="<c:url value='/customer/rentalamount'/>">고객대여금액조회</a></li>
	        <li class="nav-item"><a href="<c:url value='/'/>">홈으로</a></li>
	    </ul>
	</nav>
    
    <section>
        <h4>도서 고객 및 대여관리 프로그램</h4>
        <br/>
        <p>프로그램 작성순서</p>
        <ol>
            <li>고객정보 테이블을 생성한다.</li>
            <li>대여정보 테이블을 생성한다.</li>
            <li>고객정보, 대여정보 테이블에 제시된 데이터를 생성한다.</li>
            <li>고객정보 입력 화면 프로그램을 작성한다.</li>
            <li>고객정보 조회 프로그램을 작성한다.</li>
            <li>고객대여리스트를 조회하는 프로그램을 작성한다.</li>
            <li>고객별 대여금액을 조회하는 프로그램을 작성한다.</li>
        </ol>
    </section>
    
    <footer>
        <p>나도 할 수 있는 Java & Spring 웹 개발 종합반(김창성)</p>
    </footer>

    <!-- Bootstrap JS 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
```

<nav>의 내용은 아래와 같으며 숫자는 행을 구분하는 단위입니다.
1. "고객 등록 화면"
2. "고객번호 : ____________________"
3. "고객이름 : ____________________"
4. "전화번호 : ____________________"
5. "이메일 : ____________________"
6. "고객등급(P,G,S) : ____________________"
7. [등록] / [취소]

다음은 <nav>의 기능입니다.
'고객번호'는 MySQL에서 생성된 'Member_tbl'에 저장된 마지막 번호에서 자동(auto_increment)으로 추가됩니다.
그러므로 '고객번호'는 임의로 수정할 수 없으며 그 마지막 번호에서 정수 1이 추가됩니다.
'고객이름'은 직접 입력할 수 있고 수정할 수 있어야 됩니다.
'전화번호'는 직접 입력할 수 있고 수정할 수 있어야 됩니다.
'이메일'은 직접 입력할 수 있고 수정할 수 있어야 됩니다.
'고객등급'은 직접 입력할 수 있고 수정할 수 있어야 됩니다.
'등록' 버튼을 클릭하면 MySQL에서 생성된 'Member_tbl' DB의 마지막 행 아래로 '고객이름', '전화번호', '이메일', '고객등급'이 추가되어야 됩니다.
'등록' 버튼 클릭으로 인해 추가된 행의 '고객번호'는 기존에 있던 int 자료형의 '고객번호'에서 1이 추가된 int 값입니다.
'취소'를 클릭하면 index.jsp(홈페이지)로 돌아옵니다.

마지막으로,
모든 <nav> 기능에 유효성을 체크할 수 있는 JavaScript, jQuery 기능을 알려주시고 통과인지 통과가 아닌지 알려주세요.

🔔 Query 32
<nav>로 생성된 버튼을 눌러도 '고객등록' 페이지로 이동되지를 않고 404 코드가 호출됩니다.
'고객등록' 버튼을 클릭하면 'src/main/webapp/WEB-INF/views/register.jsp'로 제작된 웹 페이지로 이동될 수 있는 코드를 알려주세요.

    <nav>
        <ul class="nav">
            <li class="nav-item"><a href="<c:url value='/customer/register'/>">고객등록</a></li>
            <li class="nav-item"><a href="<c:url value='/customer/list'/>">고객목록조회/수정</a></li>
            <li class="nav-item"><a href="<c:url value='/customer/rentallist'/>">고객대여리스트</a></li>
            <li class="nav-item"><a href="<c:url value='/customer/rentalamount'/>">고객대여금액조회</a></li>
            <li class="nav-item"><a href="<c:url value='/'/>">홈으로</a></li>
        </ul>
    </nav>

🔔 Query 33
@GetMapping을 import 할 수 있는 코드를 알려주실 수 있나요?

🔔 Query 34
index.jsp에 있는 '고객등록' 버튼을 클릭하면 'http://localhost:8090/book/register'로 이동하게 되는 코드와 코드가 들어가야 될 위치를 알려주세요.
그리고 register.jsp에 있는 '고객등록' 버튼을 클릭하면 'http://localhost:8090/book/register'로 이동하게 되는 코드와 코드가 들어가야 될 위치를 알려주세요.

🔔 Query 35
'고객목록조회/수정'인 'list.jsp' 페이지를 제작하려고 합니다.
아래 index.jsp 코드의 <header>, <nav>, <footer>는 그대로 유지하고 <section>만 변경하려고 합니다.
list.jsp 제작에 필요한 html 코드 등을 알려주세요.

```index.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>도서 고객 및 대여 관리 프로그램 ver 1.0</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        
    <style>
        body {
            padding: 20px;
        }
        header, nav, section, footer {
            margin: 10px;
            padding: 10px;
            border: 1px solid #ccc;
        }
        .nav-item {
		    display: inline-block;
		    text-align: center;
		    margin-right: 100px; /* 원하는 간격 설정 */
		}
		h3 {
		    text-align: center;
		}
		h4 {
		    text-align: center;
		}
		footer {
			text-align: center;
		}
    </style>
</head>
<body>
    <header>
        <h3>도서 고객 및 대여 관리 프로그램 ver 1.0</h3>
    </header>
    
    <nav>
	    <ul class="nav">
	        <li class="nav-item"><a href="<c:url value='/customer/register'/>">고객등록</a></li>
	        <li class="nav-item"><a href="<c:url value='/customer/list'/>">고객목록조회/수정</a></li>
	        <li class="nav-item"><a href="<c:url value='/customer/rentallist'/>">고객대여리스트</a></li>
	        <li class="nav-item"><a href="<c:url value='/customer/rentalamount'/>">고객대여금액조회</a></li>
	        <li class="nav-item"><a href="<c:url value='/'/>">홈으로</a></li>
	    </ul>
	</nav>
    
    <section>
        <h4>도서 고객 및 대여관리 프로그램</h4>
        <br/>
        <p>프로그램 작성순서</p>
        <ol>
            <li>고객정보 테이블을 생성한다.</li>
            <li>대여정보 테이블을 생성한다.</li>
            <li>고객정보, 대여정보 테이블에 제시된 데이터를 생성한다.</li>
            <li>고객정보 입력 화면 프로그램을 작성한다.</li>
            <li>고객정보 조회 프로그램을 작성한다.</li>
            <li>고객대여리스트를 조회하는 프로그램을 작성한다.</li>
            <li>고객별 대여금액을 조회하는 프로그램을 작성한다.</li>
        </ol>
    </section>
    
    <footer>
        <p>나도 할 수 있는 Java & Spring 웹 개발 종합반(김창성)</p>
    </footer>

    <!-- Bootstrap JS 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
```

변경하려는 <section>의 내용은 아래와 같으며 숫자는 행을 구분하는 단위입니다.
1. 고객목록조회/수정
2. MySQL로 작성된 포트 3306의 데이터(연결하는 코드)

<section>의 내용 중 'MySQL로 작성된 포트 3306의 데이터(연결하는 코드)'는 글자가 아닙니다.
실제로 MySQL에서 작성된 표를 어떻게 STS3로 가져올 수 있나요?

🔔 Query 36
실제 MySQL로 제작된 표를 어떻게 STS로 가져올 수 있나요?

🔔 Query 37
application.properties는 STS3의 어느 위치에 파일을 생성해야 되나요?

🔔 Query 38
application.properties의 확장자는 무엇인가요?

🔔 Query 39
application.properties을 STS3에서 생성할 때 Select a Wizard에서 어느 File을 선택해야 되나요?
예를들어 .java는 Java Files이며 .html은 Html Files를 선택하면 됩니다.

🔔 Query 40
(다시 질문)
위 답변 중 '단계 1: MySQL 드라이버 다운로드 및 설치', '단계 2: 데이터베이스 연결 설정'은 잘 수행하였습니다.

그런데 '단계 3: 쿼리 실행'부터는 내게 어려운 작업입니다.

쿼리 실행을 위해 데이터를 가져오는 Java 코드를 어느 프로그램, 어느 파일, 어느 위치에 작성해야 되는지 상세하게 알려주세요.

그리고 '단계 4: 데이터 출력' 단계를 아주 상세하게 설명해주세요.

작업 환경은 STS 3.9.17, MySQL 8.0.33입니다.

🔔 Query 41
'단계 3: 쿼리 실행' 단계를 수행중입니다.
Service.java 파일을 src/main/java의 com.fastcampus.book 패키지에 생성하였습니다.
그리고 알려주신 코드를 그대로 작성하였습니다.

그런데 아래 행에 오류를 뜻하는 빨간 밑줄이 그어졌습니다.
1. import org.springframework.jdbc.core.JdbcTemplate;
2. public class YourQueryService {
3. private final JdbcTemplate jdbcTemplate;
4. public YourQueryService(JdbcTemplate jdbcTemplate) {
5. this.jdbcTemplate = jdbcTemplate;
6. return jdbcTemplate.queryForList(sql);

빨간 밑줄은 아래 단어에 그어져있습니다.
1. org.springframework.jdbc
2. YourQueryService
3. JdbcTemplate
4. JdbcTemplate
5. this.jdbcTemplate
6. jdbcTemplate

이 빨간 밑줄을 정상적인 상태로 변경하는 방법은 무엇입니까?

숫자는 편의상 작성하였으며 단순히 행을 구분하기 위해 작성하였습니다.

🔔 Query 42
아래 Service 클래스 코드에서 제가 실제로 작성해야 되는 코드는 무엇인가요?
'YourQueryService'는 'MemberInformation'으로 수정하였습니다.

```java
package com.fastcampus.book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class MemberInformation {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public MemberInformation(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<Map<String, Object>> executeYourQuery() {
        String sql = "SELECT * FROM Member_tbl"; // 적절한 쿼리로 변경

        return jdbcTemplate.queryForList(sql);
    }
}
```

🔔 Query 43
아래 코드에서 'jdbcTemplate' 단어가 입력된 곳은 왜 모두 오류를 의미하는 빨간색 밑줄이 그어진 것인가요?
``` java
package com.fastcampus.book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class MemberInformation {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public MemberInformation(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<Map<String, Object>> executeYourQuery() {
        String sql = "SELECT * FROM Member_tbl"; // 적절한 쿼리로 변경

        return jdbcTemplate.queryForList(sql);
    }
}
```

🔔 Query 44
Maven 의존성과 관련된 pom.xml은 STS3의 어느 위치에 파일이 생성되어야 되나요?

🔔 Query 45
제가 궁금한 위치는 src/main/webapp/resources 등과 같은 경로입니다.

🔔 Query 46
mysql-connector-java 파일을 획득하는 방법은 무엇인가요?

🔔 Query 47
MySQL에 접속하는 DB connection 코드를 아래와 같이 작성하였습니다.

``` java
package database;

ava.sql.Connection;
ava.sql.DriverManager;
ava.sql.ResultSet;
ava.sql.Statement;

public class DBConnection {

	private Connection con;
	private Statement st;
	private ResultSet rs;
	
	public DBConnection() {
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tutorial", "root", "0000");
		}
		catch(Exception e)
		{
			System.out.println("데이터베이스 연결 오류 : " + e.getMessage());
		}
	}
	
}

```

그런데 아래 코드 등의 Connection, Statement, ResultSet에 오류를 의미하는 빨간색 밑줄이 그어졌습니다.
이유가 무엇입니까?

``` java
package database;

ava.sql.Connection;
ava.sql.DriverManager;
ava.sql.ResultSet;
ava.sql.Statement;

public class DBConnection {

	private Connection con;
	private Statement st;
	private ResultSet rs;
```

🔔 Query 48
MySQL 5.7 Command Line Client를 실행시키는 방법은 무엇입니까?

🔔 Query 49
cmd 창에 'mysql -u [사용자명] -p' 문구를 입력하니까 "'mysql'은 내부 또는 외부 명령 배치 파일이 아닙니다"라는 문구가 뜨고 아무것도 진행되지 않습니다.
이를 해결하는 방법은 무엇입니까? 

🔔 Query 50
cmd 창에 mysql 관련 코드를 입력하였더니 1046 에러가 발생하였습니다.
이를 정상 가동시키는 방법은 무엇입니까?

``` cmd
mysql> create table admin(
    -> adminID varchar(20),
    -> adminPassword varchar(20));
ERROR 1046 (3D000): No database selected
mysql>
```

🔔 Query 51
저는 MySQL로 제작한 표를 STS3의 jsp 파일에 삽입시키고 웹 페이지에서 볼 수 있게 하고 싶습니다.
그것을 위해 아래와 같은 코드를 작성하였습니다.
코드의 전체 내용은 1번 Spring과 같습니다.

``` 1번 Spring
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>도서 고객 및 대여 관리 프로그램 ver 1.0</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        
    <style>
        body {
            padding: 20px;
        }
        header, nav, section, footer {
            margin: 10px;
            padding: 10px;
            border: 1px solid #ccc;
        }
        .nav-item {
            display: inline-block;
            text-align: center;
            margin-right: 100px; /* 원하는 간격 설정 */
        }
        h3 {
            text-align: center;
        }
        h4 {
            text-align: center;
        }
        footer {
            text-align: center;
        }
    </style>
</head>
<body>
    <header>
        <h3>도서 고객 및 대여 관리 프로그램 ver 1.0</h3>
    </header>
    
    <nav>
        <ul class="nav">
            <li class="nav-item"><a href="http://localhost:8090/book/register">고객등록</a></li>
	        <li class="nav-item"><a href="http://localhost:8090/book/list">고객목록조회/수정</a></li>
	        <li class="nav-item"><a href="<c:url value='/book/rentallist'/>">고객대여리스트</a></li>
	        <li class="nav-item"><a href="<c:url value='/book/rentalamount'/>">고객대여금액조회</a></li>
	        <li class="nav-item"><a href="http://localhost:8090/book/index">홈으로</a></li>
        </ul>
    </nav>
    
    <section>
        <h4>고객 목록 조회 및 수정</h4>
        <br/>
        <!-- 여기에 MySQL에서 읽어온 데이터를 출력하는 코드를 추가할 수 있습니다. -->
        <!-- 예를 들면, Java 코드로 데이터를 읽어와서 테이블 형태로 출력하는 부분입니다. -->
        <table class="table">
            <thead>
                <tr>
                    <th>고객번호</th>
                    <th>고객이름</th>
                    <th>전화번호</th>
                    <th>이메일</th>
                    <th>고객등급</th>
                    <!-- 추가적인 필드들 -->
                </tr>
            </thead>
            <tbody>
                <!-- 여기에 Java 코드로 데이터를 반복문을 사용하여 테이블 행으로 출력하는 부분입니다. -->
                <!-- 예를 들면, Spring MVC의 컨트롤러를 통해 가져온 리스트를 반복하여 출력하는 부분입니다. -->
                <c:forEach var="customer" items="${customerList}">
                    <tr>
                        <td>${customer.customerId}</td>
                        <td>${customer.customerName}</td>
                        <td>${customer.phoneNumber}</td>
                        <td>${customer.email}</td>
                        <td>${customer.customerGrade}</td>
                        <!-- 추가적인 필드들 -->
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </section>
    
    <footer>
        <p>나도 할 수 있는 Java & Spring 웹 개발 종합반(김창성)</p>
    </footer>

    <!-- Bootstrap JS 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

```

그리고 수정되어야 될 코드 내용은 2번 Spring과 같습니다.

``` 2번 Spring
    <section>
        <h4>고객 목록 조회 및 수정</h4>
        <br/>
        <!-- 여기에 MySQL에서 읽어온 데이터를 출력하는 코드를 추가할 수 있습니다. -->
        <!-- 예를 들면, Java 코드로 데이터를 읽어와서 테이블 형태로 출력하는 부분입니다. -->
        <table class="table">
            <thead>
                <tr>
                    <th>고객번호</th>
                    <th>고객이름</th>
                    <th>전화번호</th>
                    <th>이메일</th>
                    <th>고객등급</th>
                    <!-- 추가적인 필드들 -->
                </tr>
            </thead>
            <tbody>
                <!-- 여기에 Java 코드로 데이터를 반복문을 사용하여 테이블 행으로 출력하는 부분입니다. -->
                <!-- 예를 들면, Spring MVC의 컨트롤러를 통해 가져온 리스트를 반복하여 출력하는 부분입니다. -->
                <c:forEach var="customer" items="${customerList}">
                    <tr>
                        <td>${customer.customerId}</td>
                        <td>${customer.customerName}</td>
                        <td>${customer.phoneNumber}</td>
                        <td>${customer.email}</td>
                        <td>${customer.customerGrade}</td>
                        <!-- 추가적인 필드들 -->
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </section>
```

1번 Spring 코드를 실행했을 때 웹 페이지는 정상적으로 구현 됩니다.
주소는 "http://localhost:8090/book/list"와 같습니다.

그런데 2번 Spring의 내용을 채우지 못했기 때문에 고객 정보를 표시하는 표가 보이지 않습니다.

따라서 저는 MySQL에서 이미 작성한 표를 "http://localhost:8090/book/list"의 2번 Spring 부분에 삽입시키고 싶습니다.

방법을 알려주실 수 있나요?

🔔 Query 52
저는 STS 3를 처음 사용해보는 사람입니다.
그러므로 방금 안내된 모든 과정을 차근차근 가장 상세하게 알려주세요.
예를들면 STS 프로그램의 어떤 경로에 어떤 파일에 어떤 코드를 작성해야 되는지 까지요.

🔔 Query 53
알려주신 내용대로 STS에 코드를 작성하였더니 웹 페이지는 잘 구현됐습니다.
하지만 "http://localhost:8090/book/list"에서 표의 내용을 확인할 수는 없습니다.
그래서 실제로 제가 입력해야되는 내용을 수정중에 있습니다.
그런데 혹시 아래 코드 내용에서도 제가 실제로 수정해야 되는 내용이 있을까요?

``` Spring
<tbody>
            <c:forEach var="customer" items="${customerList}">
                <tr>
                    <td>${customer.customerId}</td>
                    <td>${customer.customerName}</td>
                    <td>${customer.phoneNumber}</td>
                    <td>${customer.email}</td>
                    <td>${customer.customerGrade}</td>
                    <!-- 추가적인 필드들 -->
                </tr>
            </c:forEach>
        </tbody>
```

실제로 생성한 MySQL 표는 아래와 같습니다.

``` SQL
-- Member_tbl 생성
CREATE TABLE Member_tbl(
	cust_no INT NOT NULL,
	cust_name VARCHAR(20),
	phone VARCHAR(20),
	join_date DATETIME,
	cust_email VARCHAR(50),
	grade VARCHAR(20),
	PRIMARY KEY(cust_no)
);
```

그리고 생성된 MySQL 표에 입력한 데이터(instance)는 아래와 같습니다.

``` SQL
-- Member_tbl 인스턴스 삽입
INSERT INTO Member_tbl(cust_no, cust_name, phone, join_date, cust_email, grade)
	VALUES(100001, "박매일", "010-1111-1111", now(), "bit01@naver.com", "P"),
		  (100002, "이믿음", "010-1111-1112", now(), "bit02@naver.com", "G"),
		  (100003, "박축복", "010-1111-1113", now(), "bit03@naver.com", "S"),
		  (100004, "나소원", "010-1111-1114", now(), "bit04@naver.com", "P"),
		  (100005, "김행복", "010-1111-1115", now(), "bit05@naver.com", "G");
```

🔔 Query 54
<c:forEach>는 무엇을 의미하나요?
STS3에서 Unknown tag라고 표시됩니다.

🔔 Query 55
아직 "http://localhost:8090/book/list"에서는 MySQL에서 생성한 Member_tbl이 보이지 않습니다.
아래 코드들을 확인해주시고 무엇을 수정해야되는지 알려주세요.
현재 STS3, MySQL, Chrome 사용중입니다.

1. MySQL 8.0.33의 database, table 생성 코드
``` SQL
-- DB 생성
CREATE DATABASE BookRentalService;
USE BookRentalService;

-- Member_tbl 생성
CREATE TABLE Member_tbl(
	cust_no INT NOT NULL,
	cust_name VARCHAR(20),
	phone VARCHAR(20),
	join_date DATETIME,
	cust_email VARCHAR(50),
	grade VARCHAR(20),
	PRIMARY KEY(cust_no)
);

-- Rent_tbl 생성
CREATE TABLE Rent_tbl(
	cust_no INT NOT NULL,
	rent_no INT NOT NULL,
	book_code VARCHAR(20),
	rent_price INT,
	rent_date DATETIME,
	PRIMARY KEY(rent_no)
);

-- Member_tbl 인스턴스 삽입
INSERT INTO Member_tbl(cust_no, cust_name, phone, join_date, cust_email, grade)
	VALUES(100001, "박매일", "010-1111-1111", now(), "bit01@naver.com", "P"),
		  (100002, "이믿음", "010-1111-1112", now(), "bit02@naver.com", "G"),
		  (100003, "박축복", "010-1111-1113", now(), "bit03@naver.com", "S"),
		  (100004, "나소원", "010-1111-1114", now(), "bit04@naver.com", "P"),
		  (100005, "김행복", "010-1111-1115", now(), "bit05@naver.com", "G");

-- Rent_tbl 인스턴스 삽입
INSERT INTO Rent_tbl(cust_no, rent_no, book_code, rent_price, rent_date)
	VALUES(100001, 20230001, "A001", 2300, now()),
		  (100001, 20230002, "A002", 1300, now()),
		  (100001, 20230003, "A003", 2100, now()),
		  (100002, 20230004, "A004", 1600, now()),
		  (100002, 20230005, "A005", 1800, now()),
		  (100003, 20230006, "A006", 1500, now()),
		  (100004, 20230007, "A007", 2000, now()),
		  (100004, 20230008, "A008", 2300, now()),
		  (100004, 20230009, "A009", 1500, now()),
		  (100004, 20230010, "A010", 2300, now());
          
SELECT * FROM Member_tbl;
SELECT * FROM Rent_tbl;

SELECT version();
```

2. STS3의 HomeController.java (Spring Legacy Project의 초기 Controller)
``` Spring
package com.fastcampus.book;

import java.text.DateFormat;

import java.util.Date;
import java.util.Locale;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@RequestMapping(value = "/index")
    public String home() {
        return "index";
    }
    
    @RequestMapping("/register")
    public String showRegisterPage() {
    	return "register";
	}
    
    @RequestMapping("/list")
    public String showListPage() {
    	return "list";
	}
    
}
```

3. MemberController.java
``` Spring
package database;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
public class MemberController {

    @Autowired
    private MemberInformation MemberInformation;

    @RequestMapping("/list")
    public String listMember(Model model) {
        List<Map<String, Object>> customerList = MemberInformation.executeMember();
        model.addAttribute("customerList", customerList);
        return "list"; // list.jsp로 이동
    }
}

```

4. MemberInformation.java
``` Spring
package database;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class MemberInformation {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public MemberInformation(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
    // executeYourQuery에서 executeMember로 변경
    public List<Map<String, Object>> executeMember() {
        String sql = "SELECT * FROM Member_tbl"; // your_table_name은 실제 데이터베이스 테이블 이름으로 변경
        return jdbcTemplate.queryForList(sql);
    }
}

```

5. application.properties
``` Spring
spring.datasource.url=jdbc:mysql://localhost:3306/bookrentalservice
spring.datasource.username=root
spring.datasource.password=0000
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver

```

6. list.jsp
``` Spring
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>도서 고객 및 대여 관리 프로그램 ver 1.0</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        
    <style>
        body {
            padding: 20px;
        }
        header, nav, section, footer {
            margin: 10px;
            padding: 10px;
            border: 1px solid #ccc;
        }
        .nav-item {
            display: inline-block;
            text-align: center;
            margin-right: 100px; /* 원하는 간격 설정 */
        }
        h3 {
            text-align: center;
        }
        h4 {
            text-align: center;
        }
        footer {
            text-align: center;
        }
    </style>
</head>
<body>
    <header>
        <h3>도서 고객 및 대여 관리 프로그램 ver 1.0</h3>
    </header>
    
    <nav>
        <ul class="nav">
            <li class="nav-item"><a href="http://localhost:8090/book/register">고객등록</a></li>
	        <li class="nav-item"><a href="http://localhost:8090/book/list">고객목록조회/수정</a></li>
	        <li class="nav-item"><a href="<c:url value='/book/rentallist'/>">고객대여리스트</a></li>
	        <li class="nav-item"><a href="<c:url value='/book/rentalamount'/>">고객대여금액조회</a></li>
	        <li class="nav-item"><a href="http://localhost:8090/book/index">홈으로</a></li>
        </ul>
    </nav>
    
    <section>
        <h4>고객 목록 조회 및 수정</h4>
        <br/>
        <!-- 여기에 MySQL에서 읽어온 데이터를 출력하는 코드를 추가할 수 있습니다. -->
        <!-- 예를 들면, Java 코드로 데이터를 읽어와서 테이블 형태로 출력하는 부분입니다. -->
        <table class="table">
	        <thead>
	            <tr>
	                <th>고객번호</th>
	                <th>고객이름</th>
	                <th>전화번호</th>
	                <th>이메일</th>
	                <th>고객등급</th>
	                <!-- 추가적인 필드들 -->
	            </tr>
	        </thead>
	        <tbody>
	            <c:forEach var="customer" items="${customerList}">
	                <tr>
	                    <td>${customer.cust_no}</td>
	                    <td>${customer.cust_name}</td>
	                    <td>${customer.phone}</td>
	                    <td>${customer.join_date}</td>
	                    <td>${customer.cust_email}</td>
	                    <td>${customer.grade}</td>
	                    <!-- 추가적인 필드들 -->
	                </tr>
	            </c:forEach>
	        </tbody>
	    </table>
    </section>
    
    <footer>
        <p>나도 할 수 있는 Java & Spring 웹 개발 종합반(김창성)</p>
    </footer>

    <!-- Bootstrap JS 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

```

7. pom.xml
``` Spring
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 https://maven.apache.org/maven-v4_0_0.xsd">
	<modelVersion>4.0.0</modelVersion>
	<groupId>com.fastcampus</groupId>
	<artifactId>book</artifactId>
	<name>BookRentalService</name>
	<packaging>war</packaging>
	<version>1.0.0-BUILD-SNAPSHOT</version>
	<properties>
		<java-version>1.6</java-version>
		<org.springframework-version>3.1.1.RELEASE</org.springframework-version>
		<org.aspectj-version>1.6.10</org.aspectj-version>
		<org.slf4j-version>1.6.6</org.slf4j-version>
	</properties>
	<dependencies>
	
		<!-- Spring -->
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-context</artifactId>
			<version>${org.springframework-version}</version>
			<exclusions>
				<!-- Exclude Commons Logging in favor of SLF4j -->
				<exclusion>
					<groupId>commons-logging</groupId>
					<artifactId>commons-logging</artifactId>
				 </exclusion>
			</exclusions>
		</dependency>
		
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-webmvc</artifactId>
			<version>${org.springframework-version}</version>
		</dependency>
		
		<!-- DB connection(2024-01-21) -->
		<dependency>
	         <groupId>mysql</groupId>
	         <artifactId>mysql-connector-java</artifactId>
	         <version>5.1.41</version>
	    </dependency>
	    <!-- MyBatis 3.4 -->
	    <dependency>
	        <groupId>org.mybatis</groupId>
	        <artifactId>mybatis</artifactId>
	        <version>3.4.1</version>
	    </dependency>
	    <!-- MyBatis-Spring 1.3-->
	    <dependency>
	        <groupId>org.mybatis</groupId>
	        <artifactId>mybatis-spring</artifactId>
	        <version>1.3.0</version>
	    </dependency>
	    <!-- Spring-JDBC -->
	    <dependency>
	        <groupId>org.springframework</groupId>
	        <artifactId>spring-jdbc</artifactId>
	        <version>${org.springframework-version}</version>
	    </dependency>
				
		<!-- AspectJ -->
		<dependency>
			<groupId>org.aspectj</groupId>
			<artifactId>aspectjrt</artifactId>
			<version>${org.aspectj-version}</version>
		</dependency>	
		
		<!-- Logging -->
		<dependency>
			<groupId>org.slf4j</groupId>
			<artifactId>slf4j-api</artifactId>
			<version>${org.slf4j-version}</version>
		</dependency>
		<dependency>
			<groupId>org.slf4j</groupId>
			<artifactId>jcl-over-slf4j</artifactId>
			<version>${org.slf4j-version}</version>
			<scope>runtime</scope>
		</dependency>
		<dependency>
			<groupId>org.slf4j</groupId>
			<artifactId>slf4j-log4j12</artifactId>
			<version>${org.slf4j-version}</version>
			<scope>runtime</scope>
		</dependency>
		<dependency>
			<groupId>log4j</groupId>
			<artifactId>log4j</artifactId>
			<version>1.2.15</version>
			<exclusions>
				<exclusion>
					<groupId>javax.mail</groupId>
					<artifactId>mail</artifactId>
				</exclusion>
				<exclusion>
					<groupId>javax.jms</groupId>
					<artifactId>jms</artifactId>
				</exclusion>
				<exclusion>
					<groupId>com.sun.jdmk</groupId>
					<artifactId>jmxtools</artifactId>
				</exclusion>
				<exclusion>
					<groupId>com.sun.jmx</groupId>
					<artifactId>jmxri</artifactId>
				</exclusion>
			</exclusions>
			<scope>runtime</scope>
		</dependency>

		<!-- @Inject -->
		<dependency>
			<groupId>javax.inject</groupId>
			<artifactId>javax.inject</artifactId>
			<version>1</version>
		</dependency>
				
		<!-- Servlet -->
		<dependency>
			<groupId>javax.servlet</groupId>
			<artifactId>servlet-api</artifactId>
			<version>2.5</version>
			<scope>provided</scope>
		</dependency>
		<dependency>
			<groupId>javax.servlet.jsp</groupId>
			<artifactId>jsp-api</artifactId>
			<version>2.1</version>
			<scope>provided</scope>
		</dependency>
		<dependency>
			<groupId>javax.servlet</groupId>
			<artifactId>jstl</artifactId>
			<version>1.2</version>
		</dependency>
	
		<!-- Test -->
		<dependency>
			<groupId>junit</groupId>
			<artifactId>junit</artifactId>
			<version>4.7</version>
			<scope>test</scope>
		</dependency>        
	</dependencies>
    <build>
        <plugins>
            <plugin>
                <artifactId>maven-eclipse-plugin</artifactId>
                <version>2.9</version>
                <configuration>
                    <additionalProjectnatures>
                        <projectnature>org.springframework.ide.eclipse.core.springnature</projectnature>
                    </additionalProjectnatures>
                    <additionalBuildcommands>
                        <buildcommand>org.springframework.ide.eclipse.core.springbuilder</buildcommand>
                    </additionalBuildcommands>
                    <downloadSources>true</downloadSources>
                    <downloadJavadocs>true</downloadJavadocs>
                </configuration>
            </plugin>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>2.5.1</version>
                <configuration>
                    <source>1.6</source>
                    <target>1.6</target>
                    <compilerArgument>-Xlint:all</compilerArgument>
                    <showWarnings>true</showWarnings>
                    <showDeprecation>true</showDeprecation>
                </configuration>
            </plugin>
            <plugin>
                <groupId>org.codehaus.mojo</groupId>
                <artifactId>exec-maven-plugin</artifactId>
                <version>1.2.1</version>
                <configuration>
                    <mainClass>org.test.int1.Main</mainClass>
                </configuration>
            </plugin>
        </plugins>
    </build>
</project>

```

Chrome의 "http://localhost:8090/book/list"에서 MySQL 표가 보이지 않는 이유를 가장 상세하게 알려주세요.
저는 Spring을 처음 사용해본 사용자입니다.

🔔 Query 56
"model.addAttribute("customerList", customerList);"
STS3의 MemberController에 있는 이 "customerList"는 무엇을 의미하나요?
MySQL의 실제 테이블명을 입력하는 것인가요? 무엇인가요?

🔔 Query 57
"jdbc:mysql://localhost:3306/bookrentalservice"
STS3의 application.properties에 있는 이 "url"이 맞는지 MySQL에서 확인하는 방법은 무엇인가요?

🔔 Query 58
MySQL 서버 상태 확인:

MySQL 서버가 정상적으로 실행 중이고, 해당 데이터베이스에 테이블과 데이터가 제대로 존재하는지 확인합니다.

MySQL의 서버 상태를 확인하는 방법은 무엇인가요?

🔔 Query 59
"com.mysql.cj.jdbc.Driver"
이 주소가 맞는지 아닌지, jdbc가 설치되어있는지 아닌지 어떻게 알까요?

🔔 Query 60
"https://dev.mysql.com/downloads/connector/j/"
사이트에 들어가보니 Windows용 파일은 없는 것 같은데 있을까요?

🔔 Query 61
```
<dependency>
    <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <version>버전</version>
</dependency>
```
이 코드의 "버전"은 어떤 것의 버전을 의미하나요?

🔔 Query 62
아래 코드는 어느 프로그램의 어느 경로의 어느 파일에 입력되어야 됩니까?
``` java
Class.forName("com.mysql.cj.jdbc.Driver");
```

🔔 Query 63
아래 JDBC 드라이버 정보는 정확한 것입니까?
어떻게 확인합니까?
``` properties
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver

```

🔔 Query 64
위에서 오랜 시간 대화한 우리의 대화 내용을 토대로 Spring Legacy Project 코드를 STS3에 작성하였습니다.
하지만 "http://localhost:8090/book/list"에는 여전히 member_tbl 표가 보이지 않습니다.
콘솔 내용은 아래와 같습니다.
어떻게 하면 "http://localhost:8090/book/list"에서 member_tbl 표를 볼 수 있을까요?

``` console
1월 21, 2024 10:47:08 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 서버 버전 이름:    Apache Tomcat/9.0.85
1월 21, 2024 10:47:08 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: Server 빌드 시각:  Jan 5 2024 08:28:07 UTC
1월 21, 2024 10:47:08 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: Server 버전 번호:  9.0.85.0
1월 21, 2024 10:47:08 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 운영체제 이름:     Windows 10
1월 21, 2024 10:47:08 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 운영체제 버전:     10.0
1월 21, 2024 10:47:08 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 아키텍처:          amd64
1월 21, 2024 10:47:08 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 자바 홈:           C:\jdk11
1월 21, 2024 10:47:08 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: JVM 버전:          11.0.0.1+3-5
1월 21, 2024 10:47:08 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: JVM 벤더:          Oracle Corporation
1월 21, 2024 10:47:08 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: CATALINA_BASE:     C:\Users\ceoba\Documents\workspace-sts-3.9.17.RELEASE\.metadata\.plugins\org.eclipse.wst.server.core\tmp0
1월 21, 2024 10:47:08 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: CATALINA_HOME:     C:\apache-tomcat-9.0.85
1월 21, 2024 10:47:08 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  -Dcatalina.base=C:\Users\ceoba\Documents\workspace-sts-3.9.17.RELEASE\.metadata\.plugins\org.eclipse.wst.server.core\tmp0
1월 21, 2024 10:47:08 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  -Dcatalina.home=C:\apache-tomcat-9.0.85
1월 21, 2024 10:47:08 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  -Dwtp.deploy=C:\Users\ceoba\Documents\workspace-sts-3.9.17.RELEASE\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps
1월 21, 2024 10:47:08 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  --add-opens=java.rmi/sun.rmi.transport=ALL-UNNAMED
1월 21, 2024 10:47:08 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  --add-opens=java.base/java.io=ALL-UNNAMED
1월 21, 2024 10:47:08 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  --add-opens=java.base/java.util=ALL-UNNAMED
1월 21, 2024 10:47:08 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  --add-opens=java.base/java.util.concurrent=ALL-UNNAMED
1월 21, 2024 10:47:08 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  --add-opens=java.rmi/sun.rmi.transport=ALL-UNNAMED
1월 21, 2024 10:47:08 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  -Dfile.encoding=MS949
1월 21, 2024 10:47:08 오후 org.apache.catalina.core.AprLifecycleListener lifecycleEvent
INFO: 프로덕션 환경들에서 최적의 성능을 제공하는, APR 기반 Apache Tomcat Native 라이브러리가, 다음 java.library.path에서 발견되지 않습니다: [C:\jdk11\bin;C:\Windows\Sun\Java\bin;C:\Windows\system32;C:\Windows;C:/jdk11/bin/server;C:/jdk11/bin;C:\jdk11\bin;C:\Program Files\MySQL\MySQL Server 8.0\bin;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\Program Files\Bandizip\;C:\Program Files\Microsoft VS Code\bin;C:\Program Files\MySQL\MySQL Shell 8.0\bin\;C:\Users\ceoba\AppData\Local\Microsoft\WindowsApps;;C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2023.2.5\bin;;C:\Program Files (x86)\ESTsoft\ALSee\x64;C:\sts-3.9.17.RELEASE;;.]
1월 21, 2024 10:47:09 오후 org.apache.coyote.AbstractProtocol init
INFO: 프로토콜 핸들러 ["http-nio-8090"]을(를) 초기화합니다.
1월 21, 2024 10:47:09 오후 org.apache.catalina.startup.Catalina load
INFO: [1019] 밀리초 내에 서버가 초기화되었습니다.
1월 21, 2024 10:47:09 오후 org.apache.catalina.core.StandardService startInternal
INFO: 서비스 [Catalina]을(를) 시작합니다.
1월 21, 2024 10:47:09 오후 org.apache.catalina.core.StandardEngine startInternal
INFO: 서버 엔진을 시작합니다: [Apache Tomcat/9.0.85]
1월 21, 2024 10:47:10 오후 org.apache.catalina.util.SessionIdGeneratorBase createSecureRandom
WARNING: [SHA1PRNG] 알고리즘을 사용하여, 세션 ID를 생성하기 위한 SecureRandom 객체를 생성하는데, [636] 밀리초가 소요됐습니다.
1월 21, 2024 10:47:13 오후 org.apache.jasper.servlet.TldScanner scanJars
INFO: 적어도 하나의 JAR가 TLD들을 찾기 위해 스캔되었으나 아무 것도 찾지 못했습니다. 스캔했으나 TLD가 없는 JAR들의 전체 목록을 보시려면, 로그 레벨을 디버그 레벨로 설정하십시오. 스캔 과정에서 불필요한 JAR들을 건너뛰면, 시스템 시작 시간과 JSP 컴파일 시간을 단축시킬 수 있습니다.
1월 21, 2024 10:47:13 오후 org.apache.catalina.core.ApplicationContext log
INFO: No Spring WebApplicationInitializer types detected on classpath
1월 21, 2024 10:47:13 오후 org.apache.catalina.core.ApplicationContext log
INFO: Initializing Spring root WebApplicationContext
INFO : org.springframework.web.context.ContextLoader - Root WebApplicationContext: initialization started
INFO : org.springframework.web.context.support.XmlWebApplicationContext - Refreshing Root WebApplicationContext: startup date [Sun Jan 21 22:47:13 KST 2024]; root of context hierarchy
INFO : org.springframework.beans.factory.xml.XmlBeanDefinitionReader - Loading XML bean definitions from ServletContext resource [/WEB-INF/spring/root-context.xml]
INFO : org.springframework.beans.factory.support.DefaultListableBeanFactory - Pre-instantiating singletons in org.springframework.beans.factory.support.DefaultListableBeanFactory@5597ca3: defining beans []; root of factory hierarchy
INFO : org.springframework.web.context.ContextLoader - Root WebApplicationContext: initialization completed in 2581 ms
1월 21, 2024 10:47:16 오후 org.apache.catalina.core.ApplicationContext log
INFO: Initializing Spring FrameworkServlet 'appServlet'
INFO : org.springframework.web.servlet.DispatcherServlet - FrameworkServlet 'appServlet': initialization started
INFO : org.springframework.web.context.support.XmlWebApplicationContext - Refreshing WebApplicationContext for namespace 'appServlet-servlet': startup date [Sun Jan 21 22:47:16 KST 2024]; parent: Root WebApplicationContext
INFO : org.springframework.beans.factory.xml.XmlBeanDefinitionReader - Loading XML bean definitions from ServletContext resource [/WEB-INF/spring/appServlet/servlet-context.xml]
INFO : org.springframework.context.annotation.ClassPathBeanDefinitionScanner - JSR-250 'javax.annotation.ManagedBean' found and supported for component scanning
INFO : org.springframework.context.annotation.ClassPathBeanDefinitionScanner - JSR-330 'javax.inject.Named' annotation found and supported for component scanning
INFO : org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor - JSR-330 'javax.inject.Inject' annotation found and supported for autowiring
INFO : org.springframework.beans.factory.support.DefaultListableBeanFactory - Pre-instantiating singletons in org.springframework.beans.factory.support.DefaultListableBeanFactory@284c4f02: defining beans [org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping#0,org.springframework.format.support.FormattingConversionServiceFactoryBean#0,org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter#0,org.springframework.web.servlet.handler.MappedInterceptor#0,org.springframework.web.servlet.mvc.method.annotation.ExceptionHandlerExceptionResolver#0,org.springframework.web.servlet.mvc.annotation.ResponseStatusExceptionResolver#0,org.springframework.web.servlet.mvc.support.DefaultHandlerExceptionResolver#0,org.springframework.web.servlet.handler.BeanNameUrlHandlerMapping,org.springframework.web.servlet.mvc.HttpRequestHandlerAdapter,org.springframework.web.servlet.mvc.SimpleControllerHandlerAdapter,org.springframework.web.servlet.resource.ResourceHttpRequestHandler#0,org.springframework.web.servlet.handler.SimpleUrlHandlerMapping#0,org.springframework.web.servlet.view.InternalResourceViewResolver#0,homeController,org.springframework.context.annotation.internalConfigurationAnnotationProcessor,org.springframework.context.annotation.internalAutowiredAnnotationProcessor,org.springframework.context.annotation.internalRequiredAnnotationProcessor,org.springframework.context.annotation.internalCommonAnnotationProcessor,org.springframework.context.annotation.ConfigurationClassPostProcessor$ImportAwareBeanPostProcessor#0]; parent: org.springframework.beans.factory.support.DefaultListableBeanFactory@5597ca3
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/index],methods=[],params=[],headers=[],consumes=[],produces=[],custom=[]}" onto public java.lang.String com.fastcampus.book.HomeController.home()
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/register],methods=[],params=[],headers=[],consumes=[],produces=[],custom=[]}" onto public java.lang.String com.fastcampus.book.HomeController.showRegisterPage()
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/list],methods=[],params=[],headers=[],consumes=[],produces=[],custom=[]}" onto public java.lang.String com.fastcampus.book.HomeController.showListPage()
INFO : org.springframework.web.servlet.handler.SimpleUrlHandlerMapping - Mapped URL path [/resources/**] onto handler 'org.springframework.web.servlet.resource.ResourceHttpRequestHandler#0'
INFO : org.springframework.web.servlet.DispatcherServlet - FrameworkServlet 'appServlet': initialization completed in 1303 ms
1월 21, 2024 10:47:17 오후 org.apache.coyote.AbstractProtocol start
INFO: 프로토콜 핸들러 ["http-nio-8090"]을(를) 시작합니다.
1월 21, 2024 10:47:17 오후 org.apache.catalina.startup.Catalina start
INFO: 서버가 [8253] 밀리초 내에 시작되었습니다.
WARN : org.springframework.web.servlet.PageNotFound - No mapping found for HTTP request with URI [/book/] in DispatcherServlet with name 'appServlet'

```

🔔 Query 65
<tbody> 태그에 문제가 있는 것 같은데 제가 무엇을 수정해야 될까요?
``` list.jsp
	        <tbody>
	            <c:forEach var="bookrentalservice" items="${customerList}">
	                <tr>
	                    <td>${bookrentalservice.cust_no}</td>
	                    <td>${bookrentalservice.cust_name}</td>
	                    <td>${bookrentalservice.phone}</td>
	                    <td>${bookrentalservice.join_date}</td>
	                    <td>${bookrentalservice.cust_email}</td>
	                    <td>${bookrentalservice.grade}</td>
	                    <!-- 추가적인 필드들 -->
	                </tr>
	            </c:forEach>
	        </tbody>
```

🔔
STS3에서 Hibernate dependency 코드를 pom.xml에 입력하려고 하는데 아래 코드가 적절한가요?

``` xml
		<dependency>
			<groupId>org.hibernate</groupId>
			<artifactId>hibernate-core</artifactId>
			<version>${org.hibernate-version}</version>
		</dependency>
```

🔔
아래 코드의 <dependency> 부분에 빨간색 밑줄이 그어졌는데 이유가 무엇인가요?
코드는 잘 작성된 것 같습니다.

``` xml
		<dependency>
			<groupId>org.hibernate</groupId>
			<artifactId>hibernate-core</artifactId>
			<version>${org.hibernate-version}</version>
		</dependency>
```

🔔
빨간색 밑줄을 클릭하니까 아래와 같은 오류 메시지가 발견되었습니다.
무슨 뜻인가요?
Missing artifact org.hibernate:hibernate-core:jar:${org.hibernate-version}

🔔
STS3에서 MySQL 관련 코드를 pom.xml에 입력하려고 하는데 아래 코드가 적절한가요?

``` xml
		<!-- MySQL --><!-- MySQL DB에 접근하기 위한 MySQL JDBC 드라이버 관련 dependency -->
		
		<dependency><!-- codejava.net 코드 --><!-- 코드 추가 -->
			<groupId>mysql</groupId>
			<artifactId>mysql-connector-java</artifactId>
			<version>8.0.14</version>
			<scope>runtime</scope>
		</dependency>
```

🔔
Servelet 관련 코드 입력중 빨간색 밑줄을 클릭하니까 아래와 같은 오류 메시지가 발견되었습니다.
어떻게 해결해야 되나요?

``` error
Missing artifact javax.servlet:servlet-api:jar:3.1.0
```

``` xml
		<dependency>
			<groupId>javax.servlet</groupId>
			<artifactId>servlet-api</artifactId>
			<version>3.1.0</version><!-- codejava.net 코드 --><!-- 코드 수정 : 최신 버전 -->
			<scope>provided</scope>
		</dependency>
```

🔔
아래 오류는 무엇을 의미하나요?

``` error
cvc-complex-type.2.4.a: Invalid content was found starting with element '{"http://maven.apache.org/POM/4.0.0":scpoe}'. One of '{"http://maven.apache.org/POM/4.0.0":type, "http://
 maven.apache.org/POM/4.0.0":classifier, "http://maven.apache.org/POM/4.0.0":scope, "http://maven.apache.org/POM/4.0.0":systemPath, "http://maven.apache.org/POM/
 4.0.0":exclusions, "http://maven.apache.org/POM/4.0.0":optional}' is expected.
```

제가 작성한 코드는 아래와 같습니다.

``` xml
		<dependency>
			<groupId>javax.servlet.jsp</groupId>
			<artifactId>javax.servlet.jsp-api</artifactId>
			<version>2.3.1</version>
			<scpoe>provided</scpoe>
		</dependency>
```

🔔
Servlet 관련해서 아래의 두 dependency 코드가 중복되어 충돌되는 문제가 발생될 가능성이 있을까요?

``` xml
		<dependency>
			<groupId>javax.servlet.jsp</groupId>
			<artifactId>javax.servlet.jsp-api</artifactId>
			<version>2.3.1</version>
			<scope>provided</scope>
		</dependency>
		
		<dependency>
			<groupId>javax.servlet.jsp</groupId>
			<artifactId>jsp-api</artifactId>
			<version>2.1</version>
			<scope>provided</scope>
		</dependency>
```

🔔
아래 문장은 무엇을 의미하나요?

The field id is annotated with @Id and @GeneratedValue annotations to indicate that this field is primary key and its value is auto generated.

🔔
아래 코드의 두 행에 오류가 나타났습니다.
``` java
package com.fastcampus.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;
 
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;
 
public class WebAppInitializer implements WebApplicationInitializer {
    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        AnnotationConfigWebApplicationContext appContext = new AnnotationConfigWebApplicationContext();
        appContext.register(WebMvcConfig.class);
          
        ServletRegistration.Dynamic dispatcher = servletContext.addServlet(
                "SpringDispatcher", new DispatcherServlet(appContext));
        dispatcher.setLoadOnStartup(1);
        dispatcher.addMapping("/");
          
    }
}

```

1.
first : The import javax.servlet.ServletRegistration cannot be resolved
``` java
import javax.servlet.ServletRegistration;
```

2.
second : Multiple markers at this line
	- ServletRegistration cannot be resolved to a type
	- The method addServlet(String, DispatcherServlet) is undefined for the type 
	 ServletContext
``` java
ServletRegistration.Dynamic dispatcher = servletContext.addServlet(
```

이유가 무엇인가요?
이유가 분명히 작성되어 있지만 Spring 코드를 처음 작성해봐서 잘 모르겠습니다.
가장 쉽고 가장 상세하게 설명해주세요.

🔔
위 query의 답변 내용대로 pom.xml에서 Servlet 버전을 2.5에서 3.1.0으로 수정하였습니다.
그런데 "Missing artifact javax.servlet:servlet-api:jar:3.1.0"와 같은 에러가 발생하였습니다.
추가적으로 다운로드하거나 수정해야 될 것이 무엇입니까?

🔔
pom.xml에 중앙 저장소 관련 코드를 추가하였는데 위 오류가 사라지지 않습니다.

``` xml
<repositories>
    <repository>
        <id>central</id>
        <url>https://repo.maven.apache.org/maven2</url>
    </repository>
</repositories>
```

Servlet 관련해서 "https://repo.maven.apache.org/maven2/" 이곳에는 servletapi, servlets 등이 있습니다.
하지만 이 Servlet 관련 데이터를 자동으로 받아오지는 못하는 것 같습니다.

Servlet 관련 데이터를 STS3에 수동으로 추가할 수 있는 방법이 있을까요?

C 드라이브의 repository를 임의로 삭제할 수 있지만 다시 빌드하는 방법은 모릅니다.

🔔
빌드하는 과정에서 아래와 같은 오류가 발생되었는데 어떻게 해결할 수 있나요?

``` error
[ERROR] Failed to execute goal on project [36mcustomer[m: [1;31mCould not resolve dependencies for project com.fastcampus:customer:war:1.0.0-BUILD-SNAPSHOT: javax.servlet:servlet-api:jar:3.1.0 was not found in https://repo.maven.apache.org/maven2 during a previous attempt. This failure was cached in the local repository and resolution is not reattempted until the update interval of central has elapsed or updates are forced[m -> [1m[Help 1][m
```

🔔
아래 오류는 무엇을 뜻하나요?

``` error
Multiple markers at this line
	- The type javax.servlet.ServletContext cannot be resolved. It is indirectly referenced from required .
	 class files
	- The type javax.servlet.ServletException cannot be resolved. It is indirectly referenced from required .
	 class files
```

``` java
package com.fastcampus.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;
 
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;
 
public class WebAppInitializer implements WebApplicationInitializer {
    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        AnnotationConfigWebApplicationContext appContext = new AnnotationConfigWebApplicationContext();
        appContext.register(WebMvcConfig.class);
          
        ServletRegistration.Dynamic dispatcher = servletContext.addServlet(
                "SpringDispatcher", new DispatcherServlet(appContext));
        dispatcher.setLoadOnStartup(1);
        dispatcher.addMapping("/");
          
    }
}
```

pom.xml의 javax.servlet 버전을 3.1.0으로 업데이트 후 오류가 발생됐습니다.

``` xml
<dependency>
    <groupId>javax.servlet</groupId>
    <artifactId>javax.servlet-api</artifactId>
    <version>3.1.0</version>
    <scope>provided</scope>
</dependency>
```

🔔
Tomcat 서버 관련해서 왜 아래와 같은 오류가 발생된 것인가요?

``` error
Publishing failed with multiple errors
Error reading file C:\Users\ksgme\.m2\repository\org\springframework\spring-orm\3.1.1.RELEASE\spring-orm-3.1.1.RELEASE.jar
C:\Users\ksgme\.m2\repository\org\springframework\spring-orm\3.1.1.RELEASE\spring-orm-3.1.1.RELEASE.jar (지정된 파일을 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\org\springframework\spring-jdbc\3.1.1.RELEASE\spring-jdbc-3.1.1.RELEASE.jar
C:\Users\ksgme\.m2\repository\org\springframework\spring-jdbc\3.1.1.RELEASE\spring-jdbc-3.1.1.RELEASE.jar (지정된 경로를 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\org\springframework\spring-tx\3.1.1.RELEASE\spring-tx-3.1.1.RELEASE.jar
C:\Users\ksgme\.m2\repository\org\springframework\spring-tx\3.1.1.RELEASE\spring-tx-3.1.1.RELEASE.jar (지정된 경로를 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\org\springframework\data\spring-data-jpa\2.1.5.RELEASE\spring-data-jpa-2.1.5.RELEASE.jar
C:\Users\ksgme\.m2\repository\org\springframework\data\spring-data-jpa\2.1.5.RELEASE\spring-data-jpa-2.1.5.RELEASE.jar (지정된 파일을 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\org\springframework\data\spring-data-commons\2.1.5.RELEASE\spring-data-commons-2.1.5.RELEASE.jar
C:\Users\ksgme\.m2\repository\org\springframework\data\spring-data-commons\2.1.5.RELEASE\spring-data-commons-2.1.5.RELEASE.jar (지정된 경로를 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\org\hibernate\hibernate-core\5.5.7.Final\hibernate-core-5.5.7.Final.jar
C:\Users\ksgme\.m2\repository\org\hibernate\hibernate-core\5.5.7.Final\hibernate-core-5.5.7.Final.jar (지정된 파일을 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\org\jboss\logging\jboss-logging\3.4.2.Final\jboss-logging-3.4.2.Final.jar
C:\Users\ksgme\.m2\repository\org\jboss\logging\jboss-logging\3.4.2.Final\jboss-logging-3.4.2.Final.jar (지정된 경로를 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\javax\persistence\javax.persistence-api\2.2\javax.persistence-api-2.2.jar
C:\Users\ksgme\.m2\repository\javax\persistence\javax.persistence-api\2.2\javax.persistence-api-2.2.jar (지정된 경로를 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\org\javassist\javassist\3.27.0-GA\javassist-3.27.0-GA.jar
C:\Users\ksgme\.m2\repository\org\javassist\javassist\3.27.0-GA\javassist-3.27.0-GA.jar (지정된 경로를 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\net\bytebuddy\byte-buddy\1.11.12\byte-buddy-1.11.12.jar
C:\Users\ksgme\.m2\repository\net\bytebuddy\byte-buddy\1.11.12\byte-buddy-1.11.12.jar (지정된 경로를 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\antlr\antlr\2.7.7\antlr-2.7.7.jar
C:\Users\ksgme\.m2\repository\antlr\antlr\2.7.7\antlr-2.7.7.jar (지정된 경로를 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\org\jboss\spec\javax\transaction\jboss-transaction-api_1.2_spec\1.1.1.Final\jboss-transaction-api_1.2_spec-1.1.1.Final.jar
C:\Users\ksgme\.m2\repository\org\jboss\spec\javax\transaction\jboss-transaction-api_1.2_spec\1.1.1.Final\jboss-transaction-api_1.2_spec-1.1.1.Final.jar (지정된 경로를 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\org\jboss\jandex\2.2.3.Final\jandex-2.2.3.Final.jar
C:\Users\ksgme\.m2\repository\org\jboss\jandex\2.2.3.Final\jandex-2.2.3.Final.jar (지정된 경로를 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\com\fasterxml\classmate\1.5.1\classmate-1.5.1.jar
C:\Users\ksgme\.m2\repository\com\fasterxml\classmate\1.5.1\classmate-1.5.1.jar (지정된 경로를 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\javax\activation\javax.activation-api\1.2.0\javax.activation-api-1.2.0.jar
C:\Users\ksgme\.m2\repository\javax\activation\javax.activation-api\1.2.0\javax.activation-api-1.2.0.jar (지정된 경로를 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\org\hibernate\common\hibernate-commons-annotations\5.1.2.Final\hibernate-commons-annotations-5.1.2.Final.jar
C:\Users\ksgme\.m2\repository\org\hibernate\common\hibernate-commons-annotations\5.1.2.Final\hibernate-commons-annotations-5.1.2.Final.jar (지정된 경로를 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\javax\xml\bind\jaxb-api\2.3.1\jaxb-api-2.3.1.jar
C:\Users\ksgme\.m2\repository\javax\xml\bind\jaxb-api\2.3.1\jaxb-api-2.3.1.jar (지정된 경로를 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\org\glassfish\jaxb\jaxb-runtime\2.3.1\jaxb-runtime-2.3.1.jar
C:\Users\ksgme\.m2\repository\org\glassfish\jaxb\jaxb-runtime\2.3.1\jaxb-runtime-2.3.1.jar (지정된 경로를 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\org\glassfish\jaxb\txw2\2.3.1\txw2-2.3.1.jar
C:\Users\ksgme\.m2\repository\org\glassfish\jaxb\txw2\2.3.1\txw2-2.3.1.jar (지정된 경로를 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\com\sun\istack\istack-commons-runtime\3.0.7\istack-commons-runtime-3.0.7.jar
C:\Users\ksgme\.m2\repository\com\sun\istack\istack-commons-runtime\3.0.7\istack-commons-runtime-3.0.7.jar (지정된 경로를 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\org\jvnet\staxex\stax-ex\1.8\stax-ex-1.8.jar
C:\Users\ksgme\.m2\repository\org\jvnet\staxex\stax-ex\1.8\stax-ex-1.8.jar (지정된 경로를 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\com\sun\xml\fastinfoset\FastInfoset\1.2.15\FastInfoset-1.2.15.jar
C:\Users\ksgme\.m2\repository\com\sun\xml\fastinfoset\FastInfoset\1.2.15\FastInfoset-1.2.15.jar (지정된 경로를 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\mysql\mysql-connector-java\8.0.14\mysql-connector-java-8.0.14.jar
C:\Users\ksgme\.m2\repository\mysql\mysql-connector-java\8.0.14\mysql-connector-java-8.0.14.jar (지정된 파일을 찾을 수 없습니다)
Error reading file C:\Users\ksgme\.m2\repository\com\google\protobuf\protobuf-java\3.6.1\protobuf-java-3.6.1.jar
C:\Users\ksgme\.m2\repository\com\google\protobuf\protobuf-java\3.6.1\protobuf-java-3.6.1.jar (지정된 경로를 찾을 수 없습니다)
```

🔔
아래는 무슨 오류인가요?

``` error
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/C:/STS3/sts-3.9.17.RELEASE/plugins/org.eclipse.m2e.maven.runtime.slf4j.simple_1.18.0.20210402-1458/jars/slf4j-simple-1.7.5.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [file:/C:/STS3/sts-3.9.17.RELEASE/configuration/org.eclipse.osgi/6/0/.cp/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.slf4j.impl.SimpleLoggerFactory]
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/C:/STS3/sts-3.9.17.RELEASE/plugins/org.eclipse.m2e.maven.runtime.slf4j.simple_1.18.0.20210402-1458/jars/slf4j-simple-1.7.5.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [file:/C:/STS3/sts-3.9.17.RELEASE/configuration/org.eclipse.osgi/6/0/.cp/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.slf4j.impl.SimpleLoggerFactory]
[INFO] Scanning for projects...
[INFO] 
[INFO] [1m----------------------< [0;36mcom.fastcampus:customer[0;1m >-----------------------[m
[INFO] [1mBuilding customer 1.0.0-BUILD-SNAPSHOT[m
[INFO] [1m--------------------------------[ war ]---------------------------------[m
[INFO] Downloading from : https://mvnrepository.com/artifact/javax.servlet/javax.servlet-api/javax/servlet/servlet-api/3.1.0/servlet-api-3.1.0.pom
[INFO] [1m------------------------------------------------------------------------[m
[INFO] [1;31mBUILD FAILURE[m
[INFO] [1m------------------------------------------------------------------------[m
[INFO] Total time:  0.861 s
[INFO] Finished at: 2024-01-22T15:32:24+09:00
[INFO] [1m------------------------------------------------------------------------[m
[ERROR] Failed to execute goal on project [36mcustomer[m: [1;31mCould not resolve dependencies for project com.fastcampus:customer:war:1.0.0-BUILD-SNAPSHOT: Failed to collect dependencies at javax.servlet:servlet-api:jar:3.1.0[m: Failed to read artifact descriptor for javax.servlet:servlet-api:jar:3.1.0: Could not transfer artifact javax.servlet:servlet-api:pom:3.1.0 from/to central (https://mvnrepository.com/artifact/javax.servlet/javax.servlet-api): Access denied to https://mvnrepository.com/artifact/javax.servlet/javax.servlet-api/javax/servlet/servlet-api/3.1.0/servlet-api-3.1.0.pom. Error code 403, -> [1m[Help 1][m
[ERROR] 
[ERROR] To see the full stack trace of the errors, re-run Maven with the [1m-e[m switch.
[ERROR] Re-run Maven using the [1m-X[m switch to enable full debug logging.
[ERROR] 
[ERROR] For more information about the errors and possible solutions, please read the following articles:
[ERROR] [1m[Help 1][m http://cwiki.apache.org/confluence/display/MAVEN/DependencyResolutionException
```

🔔
Tomcat 서버 실행 중 아래와 같은 오류가 발생됐습니다.
어떻게 해결할 수 있습니까?

``` console
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 서버 버전 이름:    Apache Tomcat/9.0.52
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: Server 빌드 시각:  Jul 31 2021 04:12:17 UTC
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: Server 버전 번호:  9.0.52.0
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 운영체제 이름:     Windows 10
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 운영체제 버전:     10.0
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 아키텍처:          amd64
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 자바 홈:           C:\jdk11
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: JVM 버전:          11.0.21+9-LTS-193
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: JVM 벤더:          Oracle Corporation
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: CATALINA_BASE:     C:\fastcampus\.metadata\.plugins\org.eclipse.wst.server.core\tmp0
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: CATALINA_HOME:     C:\Tomcat9
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  -Dcatalina.base=C:\fastcampus\.metadata\.plugins\org.eclipse.wst.server.core\tmp0
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  -Dcatalina.home=C:\Tomcat9
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  -Dwtp.deploy=C:\fastcampus\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  --add-opens=java.rmi/sun.rmi.transport=ALL-UNNAMED
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  --add-opens=java.base/java.io=ALL-UNNAMED
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  --add-opens=java.base/java.util=ALL-UNNAMED
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  --add-opens=java.base/java.util.concurrent=ALL-UNNAMED
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  --add-opens=java.rmi/sun.rmi.transport=ALL-UNNAMED
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  -Dfile.encoding=MS949
1월 22, 2024 3:44:59 오후 org.apache.catalina.core.AprLifecycleListener lifecycleEvent
INFO: APR 버전 [1.7.0]을(를) 사용한, APR 기반 Apache Tomcat Native 라이브러리 [1.2.30]을(를) 로드했습니다.
1월 22, 2024 3:44:59 오후 org.apache.catalina.core.AprLifecycleListener lifecycleEvent
INFO: APR 용량정보들: IPv6 [true], sendfile [true], accept filters [false], random [true], UDS [true].
1월 22, 2024 3:44:59 오후 org.apache.catalina.core.AprLifecycleListener lifecycleEvent
INFO: APR/OpenSSL 설정: useAprConnector [false], useOpenSSL [true]
1월 22, 2024 3:44:59 오후 org.apache.catalina.core.AprLifecycleListener initializeSSL
INFO: OpenSSL이 성공적으로 초기화되었습니다: [OpenSSL 1.1.1k  25 Mar 2021]
1월 22, 2024 3:44:59 오후 org.apache.coyote.AbstractProtocol init
INFO: 프로토콜 핸들러 ["http-nio-8080"]을(를) 초기화합니다.
1월 22, 2024 3:44:59 오후 org.apache.catalina.startup.Catalina load
INFO: [555] 밀리초 내에 서버가 초기화되었습니다.
1월 22, 2024 3:44:59 오후 org.apache.catalina.core.StandardService startInternal
INFO: 서비스 [Catalina]을(를) 시작합니다.
1월 22, 2024 3:44:59 오후 org.apache.catalina.core.StandardEngine startInternal
INFO: 서버 엔진을 시작합니다: [Apache Tomcat/9.0.52]
1월 22, 2024 3:45:00 오후 org.apache.catalina.util.SessionIdGeneratorBase createSecureRandom
WARNING: [SHA1PRNG] 알고리즘을 사용하여, 세션 ID를 생성하기 위한 SecureRandom 객체를 생성하는데, [536] 밀리초가 소요됐습니다.
1월 22, 2024 3:45:01 오후 org.apache.jasper.servlet.TldScanner scanJars
INFO: 적어도 하나의 JAR가 TLD들을 찾기 위해 스캔되었으나 아무 것도 찾지 못했습니다. 스캔했으나 TLD가 없는 JAR들의 전체 목록을 보시려면, 로그 레벨을 디버그 레벨로 설정하십시오. 스캔 과정에서 불필요한 JAR들을 건너뛰면, 시스템 시작 시간과 JSP 컴파일 시간을 단축시킬 수 있습니다.
1월 22, 2024 3:45:01 오후 org.apache.catalina.core.ApplicationContext log
INFO: No Spring WebApplicationInitializer types detected on classpath
1월 22, 2024 3:45:01 오후 org.apache.catalina.core.ApplicationContext log
INFO: Initializing Spring root WebApplicationContext
INFO : org.springframework.web.context.ContextLoader - Root WebApplicationContext: initialization started
INFO : org.springframework.web.context.support.XmlWebApplicationContext - Refreshing Root WebApplicationContext: startup date [Mon Jan 22 15:45:01 KST 2024]; root of context hierarchy
INFO : org.springframework.beans.factory.xml.XmlBeanDefinitionReader - Loading XML bean definitions from ServletContext resource [/WEB-INF/spring/root-context.xml]
INFO : org.springframework.beans.factory.support.DefaultListableBeanFactory - Pre-instantiating singletons in org.springframework.beans.factory.support.DefaultListableBeanFactory@64f4f12: defining beans []; root of factory hierarchy
INFO : org.springframework.web.context.ContextLoader - Root WebApplicationContext: initialization completed in 1207 ms
INFO : org.springframework.web.servlet.DispatcherServlet - FrameworkServlet 'appServlet': initialization started
1월 22, 2024 3:45:02 오후 org.apache.catalina.core.ApplicationContext log
INFO: Initializing Spring FrameworkServlet 'appServlet'
INFO : org.springframework.web.context.support.XmlWebApplicationContext - Refreshing WebApplicationContext for namespace 'appServlet-servlet': startup date [Mon Jan 22 15:45:02 KST 2024]; parent: Root WebApplicationContext
INFO : org.springframework.beans.factory.xml.XmlBeanDefinitionReader - Loading XML bean definitions from ServletContext resource [/WEB-INF/spring/appServlet/servlet-context.xml]
INFO : org.springframework.context.annotation.ClassPathBeanDefinitionScanner - JSR-250 'javax.annotation.ManagedBean' found and supported for component scanning
INFO : org.springframework.context.annotation.ClassPathBeanDefinitionScanner - JSR-330 'javax.inject.Named' annotation found and supported for component scanning
INFO : org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor - JSR-330 'javax.inject.Inject' annotation found and supported for autowiring
INFO : org.springframework.beans.factory.support.DefaultListableBeanFactory - Pre-instantiating singletons in org.springframework.beans.factory.support.DefaultListableBeanFactory@5f0f70c7: defining beans [org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping#0,org.springframework.format.support.FormattingConversionServiceFactoryBean#0,org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter#0,org.springframework.web.servlet.handler.MappedInterceptor#0,org.springframework.web.servlet.mvc.method.annotation.ExceptionHandlerExceptionResolver#0,org.springframework.web.servlet.mvc.annotation.ResponseStatusExceptionResolver#0,org.springframework.web.servlet.mvc.support.DefaultHandlerExceptionResolver#0,org.springframework.web.servlet.handler.BeanNameUrlHandlerMapping,org.springframework.web.servlet.mvc.HttpRequestHandlerAdapter,org.springframework.web.servlet.mvc.SimpleControllerHandlerAdapter,org.springframework.web.servlet.resource.ResourceHttpRequestHandler#0,org.springframework.web.servlet.handler.SimpleUrlHandlerMapping#0,org.springframework.web.servlet.view.InternalResourceViewResolver#0,homeController,org.springframework.context.annotation.internalConfigurationAnnotationProcessor,org.springframework.context.annotation.internalAutowiredAnnotationProcessor,org.springframework.context.annotation.internalRequiredAnnotationProcessor,org.springframework.context.annotation.internalCommonAnnotationProcessor,org.springframework.context.annotation.ConfigurationClassPostProcessor$ImportAwareBeanPostProcessor#0]; parent: org.springframework.beans.factory.support.DefaultListableBeanFactory@64f4f12
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/],methods=[GET],params=[],headers=[],consumes=[],produces=[],custom=[]}" onto public java.lang.String com.BookRentalService.book.HomeController.home(java.util.Locale,org.springframework.ui.Model)
INFO : org.springframework.web.servlet.handler.SimpleUrlHandlerMapping - Mapped URL path [/resources/**] onto handler 'org.springframework.web.servlet.resource.ResourceHttpRequestHandler#0'
INFO : org.springframework.web.servlet.DispatcherServlet - FrameworkServlet 'appServlet': initialization completed in 1072 ms
1월 22, 2024 3:45:05 오후 org.apache.jasper.servlet.TldScanner scanJars
INFO: 적어도 하나의 JAR가 TLD들을 찾기 위해 스캔되었으나 아무 것도 찾지 못했습니다. 스캔했으나 TLD가 없는 JAR들의 전체 목록을 보시려면, 로그 레벨을 디버그 레벨로 설정하십시오. 스캔 과정에서 불필요한 JAR들을 건너뛰면, 시스템 시작 시간과 JSP 컴파일 시간을 단축시킬 수 있습니다.
1월 22, 2024 3:45:05 오후 org.apache.catalina.core.ApplicationContext log
INFO: Spring WebApplicationInitializers detected on classpath: [com.fastcampus.config.WebAppInitializer@7aeb7bd6]
1월 22, 2024 3:45:05 오후 org.apache.catalina.core.ContainerBase startInternal
SEVERE: 자식 컨테이너를 시작 중 실패했습니다.
java.util.concurrent.ExecutionException: org.apache.catalina.LifecycleException: 구성요소 [StandardEngine[Catalina].StandardHost[localhost].StandardContext[/customer]]을(를) 시작하지 못했습니다.
	at java.base/java.util.concurrent.FutureTask.report(FutureTask.java:122)
	at java.base/java.util.concurrent.FutureTask.get(FutureTask.java:191)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:926)
	at org.apache.catalina.core.StandardHost.startInternal(StandardHost.java:835)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1396)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1386)
	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:264)
	at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
	at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:140)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:919)
	at org.apache.catalina.core.StandardEngine.startInternal(StandardEngine.java:263)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
	at org.apache.catalina.core.StandardService.startInternal(StandardService.java:432)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
	at org.apache.catalina.core.StandardServer.startInternal(StandardServer.java:927)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
	at org.apache.catalina.startup.Catalina.start(Catalina.java:772)
	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.base/java.lang.reflect.Method.invoke(Method.java:566)
	at org.apache.catalina.startup.Bootstrap.start(Bootstrap.java:345)
	at org.apache.catalina.startup.Bootstrap.main(Bootstrap.java:476)
Caused by: org.apache.catalina.LifecycleException: 구성요소 [StandardEngine[Catalina].StandardHost[localhost].StandardContext[/customer]]을(를) 시작하지 못했습니다.
	at org.apache.catalina.util.LifecycleBase.handleSubClassException(LifecycleBase.java:440)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:198)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1396)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1386)
	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:264)
	at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
	at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:140)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:919)
	... 21 more
Caused by: java.lang.Error: Unresolved compilation problems: 
	ServletRegistration cannot be resolved to a type
	The method addServlet(String, DispatcherServlet) is undefined for the type ServletContext

	at com.fastcampus.config.WebAppInitializer.onStartup(WebAppInitializer.java:18)
	at org.springframework.web.SpringServletContainerInitializer.onStartup(SpringServletContainerInitializer.java:162)
	at org.apache.catalina.core.StandardContext.startInternal(StandardContext.java:5219)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
	... 27 more

1월 22, 2024 3:45:05 오후 org.apache.catalina.core.ContainerBase startInternal
SEVERE: 자식 컨테이너를 시작 중 실패했습니다.
java.util.concurrent.ExecutionException: org.apache.catalina.LifecycleException: 자식 컨테이너를 시작 중 실패했습니다.
	at java.base/java.util.concurrent.FutureTask.report(FutureTask.java:122)
	at java.base/java.util.concurrent.FutureTask.get(FutureTask.java:191)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:926)
	at org.apache.catalina.core.StandardEngine.startInternal(StandardEngine.java:263)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
	at org.apache.catalina.core.StandardService.startInternal(StandardService.java:432)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
	at org.apache.catalina.core.StandardServer.startInternal(StandardServer.java:927)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
	at org.apache.catalina.startup.Catalina.start(Catalina.java:772)
	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.base/java.lang.reflect.Method.invoke(Method.java:566)
	at org.apache.catalina.startup.Bootstrap.start(Bootstrap.java:345)
	at org.apache.catalina.startup.Bootstrap.main(Bootstrap.java:476)
Caused by: org.apache.catalina.LifecycleException: 자식 컨테이너를 시작 중 실패했습니다.
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:938)
	at org.apache.catalina.core.StandardHost.startInternal(StandardHost.java:835)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1396)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1386)
	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:264)
	at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
	at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:140)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:919)
	... 13 more
Caused by: java.util.concurrent.ExecutionException: org.apache.catalina.LifecycleException: 구성요소 [StandardEngine[Catalina].StandardHost[localhost].StandardContext[/customer]]을(를) 시작하지 못했습니다.
	at java.base/java.util.concurrent.FutureTask.report(FutureTask.java:122)
	at java.base/java.util.concurrent.FutureTask.get(FutureTask.java:191)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:926)
	... 21 more
Caused by: org.apache.catalina.LifecycleException: 구성요소 [StandardEngine[Catalina].StandardHost[localhost].StandardContext[/customer]]을(를) 시작하지 못했습니다.
	at org.apache.catalina.util.LifecycleBase.handleSubClassException(LifecycleBase.java:440)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:198)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1396)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1386)
	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:264)
	at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
	at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:140)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:919)
	... 21 more
Caused by: java.lang.Error: Unresolved compilation problems: 
	ServletRegistration cannot be resolved to a type
	The method addServlet(String, DispatcherServlet) is undefined for the type ServletContext

	at com.fastcampus.config.WebAppInitializer.onStartup(WebAppInitializer.java:18)
	at org.springframework.web.SpringServletContainerInitializer.onStartup(SpringServletContainerInitializer.java:162)
	at org.apache.catalina.core.StandardContext.startInternal(StandardContext.java:5219)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
	... 27 more

1월 22, 2024 3:45:05 오후 org.apache.catalina.startup.Catalina start
SEVERE: 필수 항목인 서버 구성요소가 제대로 시작되지 못하여, Tomcat이 시작될 수 없습니다.
org.apache.catalina.LifecycleException: 자식 컨테이너를 시작 중 실패했습니다.
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:938)
	at org.apache.catalina.core.StandardEngine.startInternal(StandardEngine.java:263)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
	at org.apache.catalina.core.StandardService.startInternal(StandardService.java:432)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
	at org.apache.catalina.core.StandardServer.startInternal(StandardServer.java:927)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
	at org.apache.catalina.startup.Catalina.start(Catalina.java:772)
	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.base/java.lang.reflect.Method.invoke(Method.java:566)
	at org.apache.catalina.startup.Bootstrap.start(Bootstrap.java:345)
	at org.apache.catalina.startup.Bootstrap.main(Bootstrap.java:476)
Caused by: java.util.concurrent.ExecutionException: org.apache.catalina.LifecycleException: 자식 컨테이너를 시작 중 실패했습니다.
	at java.base/java.util.concurrent.FutureTask.report(FutureTask.java:122)
	at java.base/java.util.concurrent.FutureTask.get(FutureTask.java:191)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:926)
	... 13 more
Caused by: org.apache.catalina.LifecycleException: 자식 컨테이너를 시작 중 실패했습니다.
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:938)
	at org.apache.catalina.core.StandardHost.startInternal(StandardHost.java:835)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1396)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1386)
	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:264)
	at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
	at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:140)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:919)
	... 13 more
Caused by: java.util.concurrent.ExecutionException: org.apache.catalina.LifecycleException: 구성요소 [StandardEngine[Catalina].StandardHost[localhost].StandardContext[/customer]]을(를) 시작하지 못했습니다.
	at java.base/java.util.concurrent.FutureTask.report(FutureTask.java:122)
	at java.base/java.util.concurrent.FutureTask.get(FutureTask.java:191)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:926)
	... 21 more
Caused by: org.apache.catalina.LifecycleException: 구성요소 [StandardEngine[Catalina].StandardHost[localhost].StandardContext[/customer]]을(를) 시작하지 못했습니다.
	at org.apache.catalina.util.LifecycleBase.handleSubClassException(LifecycleBase.java:440)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:198)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1396)
	at org.apache.catalina.core.ContainerBase$StartChild.call(ContainerBase.java:1386)
	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:264)
	at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
	at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:140)
	at org.apache.catalina.core.ContainerBase.startInternal(ContainerBase.java:919)
	... 21 more
Caused by: java.lang.Error: Unresolved compilation problems: 
	ServletRegistration cannot be resolved to a type
	The method addServlet(String, DispatcherServlet) is undefined for the type ServletContext

	at com.fastcampus.config.WebAppInitializer.onStartup(WebAppInitializer.java:18)
	at org.springframework.web.SpringServletContainerInitializer.onStartup(SpringServletContainerInitializer.java:162)
	at org.apache.catalina.core.StandardContext.startInternal(StandardContext.java:5219)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
	... 27 more

1월 22, 2024 3:45:05 오후 org.apache.coyote.AbstractProtocol pause
INFO: 프로토콜 핸들러 ["http-nio-8080"]을(를) 일시 정지 중
1월 22, 2024 3:45:05 오후 org.apache.catalina.core.StandardService stopInternal
INFO: 서비스 [Catalina]을(를) 중지시킵니다.
1월 22, 2024 3:45:05 오후 org.apache.coyote.AbstractProtocol destroy
INFO: 프로토콜 핸들러 ["http-nio-8080"]을(를) 소멸시킵니다.
1월 22, 2024 3:45:05 오후 org.apache.catalina.loader.WebappClassLoaderBase clearReferencesObjectStreamClassCaches
WARNING: 웹 애플리케이션 [ROOT]을(를) 위해, ObjectStreamClass$Caches로부터 soft references를 폐기하지 못했습니다.
java.lang.ClassCastException: class java.io.ObjectStreamClass$Caches$1 cannot be cast to class java.util.Map (java.io.ObjectStreamClass$Caches$1 and java.util.Map are in module java.base of loader 'bootstrap')
	at org.apache.catalina.loader.WebappClassLoaderBase.clearCache(WebappClassLoaderBase.java:2325)
	at org.apache.catalina.loader.WebappClassLoaderBase.clearReferencesObjectStreamClassCaches(WebappClassLoaderBase.java:2300)
	at org.apache.catalina.loader.WebappClassLoaderBase.clearReferences(WebappClassLoaderBase.java:1669)
	at org.apache.catalina.loader.WebappClassLoaderBase.stop(WebappClassLoaderBase.java:1597)
	at org.apache.catalina.loader.WebappLoader.stopInternal(WebappLoader.java:463)
	at org.apache.catalina.util.LifecycleBase.stop(LifecycleBase.java:257)
	at org.apache.catalina.core.StandardContext.stopInternal(StandardContext.java:5515)
	at org.apache.catalina.util.LifecycleBase.stop(LifecycleBase.java:257)
	at org.apache.catalina.core.ContainerBase$StopChild.call(ContainerBase.java:1412)
	at org.apache.catalina.core.ContainerBase$StopChild.call(ContainerBase.java:1401)
	at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:264)
	at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
	at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:140)
	at org.apache.catalina.core.ContainerBase.stopInternal(ContainerBase.java:986)
	at org.apache.catalina.util.LifecycleBase.stop(LifecycleBase.java:257)
	at org.apache.catalina.util.LifecycleBase.destroy(LifecycleBase.java:293)
	at org.apache.catalina.core.ContainerBase.removeChild(ContainerBase.java:826)
	at org.apache.catalina.core.ContainerBase.destroyInternal(ContainerBase.java:1033)
	at org.apache.catalina.util.LifecycleBase.destroy(LifecycleBase.java:321)
	at org.apache.catalina.core.StandardService.destroyInternal(StandardService.java:579)
	at org.apache.catalina.util.LifecycleBase.destroy(LifecycleBase.java:321)
	at org.apache.catalina.core.StandardServer.destroyInternal(StandardServer.java:1050)
	at org.apache.catalina.util.LifecycleBase.destroy(LifecycleBase.java:321)
	at org.apache.catalina.startup.Catalina.start(Catalina.java:776)
	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.base/java.lang.reflect.Method.invoke(Method.java:566)
	at org.apache.catalina.startup.Bootstrap.start(Bootstrap.java:345)
	at org.apache.catalina.startup.Bootstrap.main(Bootstrap.java:476)

WARNING: An illegal reflective access operation has occurred
WARNING: Illegal reflective access by org.apache.catalina.loader.WebappClassLoaderBase (file:/C:/Tomcat9/lib/catalina.jar) to field java.lang.Thread.threadLocals
WARNING: Please consider reporting this to the maintainers of org.apache.catalina.loader.WebappClassLoaderBase
WARNING: Use --illegal-access=warn to enable warnings of further illegal reflective access operations
WARNING: All illegal access operations will be denied in a future release
```

🔔
아래 오류는 무엇을 뜻하나요?
사용 프로그램은 STS3입니다.

``` error
'Starting Tomcat v9.0 Server at localhost' has encountered a problem.
Server Tomcat v9.0 Server at localhost failed to start.
Server Tomcat v9.0 Server at localhost failed to start.
```

🔔
아래 index.jsp의 도입부 코드를 완성시켜주세요.

``` jsp
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//>
```

🔔
코드를 완성시켜주세요.

``` jsp
<meta http-equiv="Content-Type" content="text/html; charset=">
```

🔔
혹시 오타 하나라도 수정해야 될 부분이 있을까요?

``` jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%
	request.setCharacterEncoding("UTF-8");
	String userID = null;
	String userPassword = null;
	if(request.getParameter("userID") != null) {
		userID = (String) request.getParameter("userID");
	}
	if(request.getParameter("userPassword") != null) {
		userPassword = (String) request.getParameter("userPassword");
	}
	if(userID == null || userPassword == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('아이디 또는 패스워드가 입력되지 않았습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	UserDAO userDAO = new UserDAO();
	int result = userDAO.join(userID, userPassword);
	if (result == 1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입에 성공했습니다.');");
		script.println("location.href = 'http://localhost:8090/tutorial/index';");
		script.println("</script>");
		script.close();
		return;
	}
%>
```

🔔
혹시 오타 하나라도 수정해야 될 부분이 있을까요?
이 파일은 /tutorial/src/main/webapp/WEB-INF/views/index.jsp 입니다.
위의 /tutorial/src/main/webapp/WEB-INF/views/userJoinAction.jsp 파일과 연결시키려는 파일입니다.

``` jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>"우리의 첫 번째 페이지"</title>
</head>
<body>
	Hello World!
	<form action="http://localhost:8090/tutorial/userJoinAction" method="post">
		<input type="text" name="userID">
		<input type="password" name="userPassword">
		<input type="submit" value="회원가입">
	</form>
</body>
</html>
```

🔔
혹시 오타 하나라도 수정해야 될 부분이 있을까요?
이 두 jsp 파일을 서로 연결시켜서 회원가입 페이지를 제작하려고 합니다.

``` index.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>우리의 첫 번째 페이지</title>
</head>
<body>
    Hello World!
    <form action="${pageContext.request.contextPath}/userJoinAction" method="post">
        <input type="text" name="userID">
        <input type="password" name="userPassword">
        <input type="submit" value="회원가입">
    </form>
</body>
</html>

```

``` userJoinAction.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%
    request.setCharacterEncoding("UTF-8");
    String userID = request.getParameter("userID");
    String userPassword = request.getParameter("userPassword");

    if (userID == null || userPassword == null || userID.isEmpty() || userPassword.isEmpty()) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('아이디 또는 패스워드가 입력되지 않았습니다.');");
        script.println("history.back();");
        script.println("</script>");
        script.close();
        return;
    }

    UserDAO userDAO = new UserDAO();
    int result = userDAO.join(userID, userPassword);

    if (result == 1) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('회원가입에 성공했습니다.');");
        script.println("location.href = 'http://localhost:8090/tutorial/index';");
        script.println("</script>");
        script.close();
    } else {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('회원가입에 실패했습니다. 다시 시도해주세요.');");
        script.println("history.back();");
        script.println("</script>");
        script.close();
    }
%>

```

🔔
보내드린 것은 위에 있는 2개의 index.jsp 파일, userJoinAction.jsp와 관련된 파일 4개입니다.
새로운 파일 4개의 이름은 HomeController.java, UserDAO.java, UserDTO.java, DatabaseUtil.java 파일입니다.
오타 하나라도 수정할 부분이 있다면 말씀 부탁드리겠습니다.
저는 MySQL database와 연결되는 회원가입 페이지 생성하고 싶습니다.
작업 환경은 STS3입니다.

``` HomeController.java
package com.tutorial.tutorial;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
}

```

``` UserDAO.java
package user;

import java.sql.Connection;
import java.sql.PreparedStatement;

import util.DatabaseUtil;

public class UserDAO {
	
	public int join(String userID, String userPassword) {
		String SQL = "INSERT INTO USER VALUES (?, ?)";
		try {
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			pstmt.setString(2, userPassword);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
}

```

``` UserDTO.java
package user;

public class UserDTO {

	String userID;
	String userPassword;

	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	
}

```

``` DatabaseUtil.java
package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {

	public static Connection getConnection() {
		try {
			String dbURL = "jdbc.mysql://localhost:3306/tutorial";
			String dbID = "root";
			String dbPassword = "root";
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}

```

🔔
아직 실행이 되지 않습니다!..
혹시 "/tutorial/src/main/webapp/WEB-INF/lib/mysql-connector-java-5.1.42-bin.jar" 경로에 있는 "mysql-connector-java-5.1.42-bin.jar" 파일이 문제일까요?

🔔
알맞게 수정해주세요.
STS3 개발 환경에서 MySQL 데이터를 연동하고 싶습니다.
MVC framework 개발을 위해 Spring Legacy Project를 생성하였으며 com.tutorial.tutorial이라는 이름을 사용하였습니다.
MySQL의 아이디는 root, 비밀번호는 0000입니다.

``` HomeController.java
package com.tutorial.tutorial;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
}
```

``` UserDAO.java
package user;

import java.sql.Connection;
import java.sql.PreparedStatement;

import util.DatabaseUtil;

public class UserDAO {

    public int join(String userID, String userPassword) {
        String SQL = "INSERT INTO USER VALUES (?, ?)";
        try {
            Connection conn = DatabaseUtil.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, userID);
            pstmt.setString(2, userPassword);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

}
```

``` UserDTO.java
package user;

public class UserDTO {

	String userID;
	String userPassword;

	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	
}
```

``` DatabaseUtil.java
package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {

    public static Connection getConnection() {
        try {
            String dbURL = "jdbc:mysql://localhost:3306/tutorial/index"; // 수정: "jdbc.mysql" → "jdbc:mysql"
            String dbID = "root";
            String dbPassword = "0000";
            Class.forName("com.mysql.cj.jdbc.Driver"); // 수정: "com.mysql.jdbc.Driver" → "com.mysql.cj.jdbc.Driver"
            return DriverManager.getConnection(dbURL, dbID, dbPassword);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
```

``` index.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>우리의 첫 번째 페이지</title>
</head>
<body>
    Hello World!
    <form action="${pageContext.request.contextPath}/userJoinAction" method="post">
        <input type="text" name="userID">
        <input type="password" name="userPassword">
        <input type="submit" value="회원가입">
    </form>
</body>
</html>
```

``` userJoinAction.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%
    request.setCharacterEncoding("UTF-8");
    String userID = request.getParameter("userID");
    String userPassword = request.getParameter("userPassword");

    if (userID == null || userPassword == null || userID.isEmpty() || userPassword.isEmpty()) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('아이디 또는 패스워드가 입력되지 않았습니다.');");
        script.println("history.back();");
        script.println("</script>");
        script.close();
        return;
    }

    UserDAO userDAO = new UserDAO();
    int result = userDAO.join(userID, userPassword);

    if (result == 1) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('회원가입에 성공했습니다.');");
        script.println("location.href = '${pageContext.request.contextPath}/index';");
        script.println("</script>");
        script.close();
    } else {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('회원가입에 실패했습니다. 다시 시도해주세요.');");
        script.println("history.back();");
        script.println("</script>");
        script.close();
    }
%>
```

``` pom.xml
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 https://maven.apache.org/maven-v4_0_0.xsd">
	<modelVersion>4.0.0</modelVersion>
	<groupId>com.tutorial</groupId>
	<artifactId>tutorial</artifactId>
	<name>tutorial</name>
	<packaging>war</packaging>
	<version>1.0.0-BUILD-SNAPSHOT</version>
	<properties>
		<java-version>1.6</java-version>
		<org.springframework-version>3.1.1.RELEASE</org.springframework-version>
		<org.aspectj-version>1.6.10</org.aspectj-version>
		<org.slf4j-version>1.6.6</org.slf4j-version>
	</properties>
	<dependencies>
		<!-- Spring -->
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-context</artifactId>
			<version>${org.springframework-version}</version>
			<exclusions>
				<!-- Exclude Commons Logging in favor of SLF4j -->
				<exclusion>
					<groupId>commons-logging</groupId>
					<artifactId>commons-logging</artifactId>
				 </exclusion>
			</exclusions>
		</dependency>
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-webmvc</artifactId>
			<version>${org.springframework-version}</version>
		</dependency>
				
		<!-- AspectJ -->
		<dependency>
			<groupId>org.aspectj</groupId>
			<artifactId>aspectjrt</artifactId>
			<version>${org.aspectj-version}</version>
		</dependency>	
		
		<!-- Logging -->
		<dependency>
			<groupId>org.slf4j</groupId>
			<artifactId>slf4j-api</artifactId>
			<version>${org.slf4j-version}</version>
		</dependency>
		<dependency>
			<groupId>org.slf4j</groupId>
			<artifactId>jcl-over-slf4j</artifactId>
			<version>${org.slf4j-version}</version>
			<scope>runtime</scope>
		</dependency>
		<dependency>
			<groupId>org.slf4j</groupId>
			<artifactId>slf4j-log4j12</artifactId>
			<version>${org.slf4j-version}</version>
			<scope>runtime</scope>
		</dependency>
		<dependency>
			<groupId>log4j</groupId>
			<artifactId>log4j</artifactId>
			<version>1.2.15</version>
			<exclusions>
				<exclusion>
					<groupId>javax.mail</groupId>
					<artifactId>mail</artifactId>
				</exclusion>
				<exclusion>
					<groupId>javax.jms</groupId>
					<artifactId>jms</artifactId>
				</exclusion>
				<exclusion>
					<groupId>com.sun.jdmk</groupId>
					<artifactId>jmxtools</artifactId>
				</exclusion>
				<exclusion>
					<groupId>com.sun.jmx</groupId>
					<artifactId>jmxri</artifactId>
				</exclusion>
			</exclusions>
			<scope>runtime</scope>
		</dependency>

		<!-- @Inject -->
		<dependency>
			<groupId>javax.inject</groupId>
			<artifactId>javax.inject</artifactId>
			<version>1</version>
		</dependency>
				
		<!-- Servlet -->
		<dependency>
			<groupId>javax.servlet</groupId>
			<artifactId>servlet-api</artifactId>
			<version>2.5</version>
			<scope>provided</scope>
		</dependency>
		<dependency>
			<groupId>javax.servlet.jsp</groupId>
			<artifactId>jsp-api</artifactId>
			<version>2.1</version>
			<scope>provided</scope>
		</dependency>
		<dependency>
			<groupId>javax.servlet</groupId>
			<artifactId>jstl</artifactId>
			<version>1.2</version>
		</dependency>
	
		<!-- Test -->
		<dependency>
			<groupId>junit</groupId>
			<artifactId>junit</artifactId>
			<version>4.7</version>
			<scope>test</scope>
		</dependency>        
	</dependencies>
    <build>
        <plugins>
            <plugin>
                <artifactId>maven-eclipse-plugin</artifactId>
                <version>2.9</version>
                <configuration>
                    <additionalProjectnatures>
                        <projectnature>org.springframework.ide.eclipse.core.springnature</projectnature>
                    </additionalProjectnatures>
                    <additionalBuildcommands>
                        <buildcommand>org.springframework.ide.eclipse.core.springbuilder</buildcommand>
                    </additionalBuildcommands>
                    <downloadSources>true</downloadSources>
                    <downloadJavadocs>true</downloadJavadocs>
                </configuration>
            </plugin>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>2.5.1</version>
                <configuration>
                    <source>1.6</source>
                    <target>1.6</target>
                    <compilerArgument>-Xlint:all</compilerArgument>
                    <showWarnings>true</showWarnings>
                    <showDeprecation>true</showDeprecation>
                </configuration>
            </plugin>
            <plugin>
                <groupId>org.codehaus.mojo</groupId>
                <artifactId>exec-maven-plugin</artifactId>
                <version>1.2.1</version>
                <configuration>
                    <mainClass>org.test.int1.Main</mainClass>
                </configuration>
            </plugin>
        </plugins>
    </build>
</project>
```

``` MySQL database and table
CREATE DATABASE tutorial;
USE tutorial;

CREATE TABLE user (
	userID VARCHAR(20),
    userPassword VARCHAR(64)
);

INSERT INTO user
	VALUES('1', '123');

SELECT * FROM user;
```

🔔
위 내용을 따라했는데도 회원가입 버튼을 클릭한 후 '회원가입에 성공했습니다.' 문구가 나오지 않고 404 에러 코드 페이지만 출력되었습니다.
어떻게 해야 '회원가입에 성공했습니다.' 문구를 출력할 수 있을까요?
아래는 tutorial이라는 Spring Legacy Project을 Run As 한 뒤의 콘솔창 내용입니다.

``` console
1월 23, 2024 6:57:42 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 서버 버전 이름:    Apache Tomcat/9.0.85
1월 23, 2024 6:57:42 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: Server 빌드 시각:  Jan 5 2024 08:28:07 UTC
1월 23, 2024 6:57:42 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: Server 버전 번호:  9.0.85.0
1월 23, 2024 6:57:42 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 운영체제 이름:     Windows 10
1월 23, 2024 6:57:42 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 운영체제 버전:     10.0
1월 23, 2024 6:57:42 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 아키텍처:          amd64
1월 23, 2024 6:57:42 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 자바 홈:           C:\jdk11
1월 23, 2024 6:57:42 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: JVM 버전:          11.0.0.1+3-5
1월 23, 2024 6:57:42 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: JVM 벤더:          Oracle Corporation
1월 23, 2024 6:57:42 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: CATALINA_BASE:     C:\Users\ceoba\Documents\workspace-sts-3.9.17.RELEASE\.metadata\.plugins\org.eclipse.wst.server.core\tmp0
1월 23, 2024 6:57:42 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: CATALINA_HOME:     C:\apache-tomcat-9.0.85
1월 23, 2024 6:57:42 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  -Dcatalina.base=C:\Users\ceoba\Documents\workspace-sts-3.9.17.RELEASE\.metadata\.plugins\org.eclipse.wst.server.core\tmp0
1월 23, 2024 6:57:42 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  -Dcatalina.home=C:\apache-tomcat-9.0.85
1월 23, 2024 6:57:42 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  -Dwtp.deploy=C:\Users\ceoba\Documents\workspace-sts-3.9.17.RELEASE\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps
1월 23, 2024 6:57:42 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  --add-opens=java.rmi/sun.rmi.transport=ALL-UNNAMED
1월 23, 2024 6:57:42 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  --add-opens=java.base/java.io=ALL-UNNAMED
1월 23, 2024 6:57:42 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  --add-opens=java.base/java.util=ALL-UNNAMED
1월 23, 2024 6:57:42 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  --add-opens=java.base/java.util.concurrent=ALL-UNNAMED
1월 23, 2024 6:57:42 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  --add-opens=java.rmi/sun.rmi.transport=ALL-UNNAMED
1월 23, 2024 6:57:42 오후 org.apache.catalina.startup.VersionLoggerListener log
INFO: 명령 행 아규먼트:  -Dfile.encoding=MS949
1월 23, 2024 6:57:42 오후 org.apache.catalina.core.AprLifecycleListener lifecycleEvent
INFO: 프로덕션 환경들에서 최적의 성능을 제공하는, APR 기반 Apache Tomcat Native 라이브러리가, 다음 java.library.path에서 발견되지 않습니다: [C:\jdk11\bin;C:\Windows\Sun\Java\bin;C:\Windows\system32;C:\Windows;C:/jdk11/bin/server;C:/jdk11/bin;C:\jdk11\bin;C:\Program Files\MySQL\MySQL Server 8.0\bin;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\Program Files\Bandizip\;C:\Program Files\Microsoft VS Code\bin;C:\Program Files\MySQL\MySQL Shell 8.0\bin\;C:\Users\ceoba\AppData\Local\Microsoft\WindowsApps;;C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2023.2.5\bin;;C:\Program Files (x86)\ESTsoft\ALSee\x64;C:\sts-3.9.17.RELEASE;;.]
1월 23, 2024 6:57:43 오후 org.apache.coyote.AbstractProtocol init
INFO: 프로토콜 핸들러 ["http-nio-8090"]을(를) 초기화합니다.
1월 23, 2024 6:57:43 오후 org.apache.catalina.startup.Catalina load
INFO: [906] 밀리초 내에 서버가 초기화되었습니다.
1월 23, 2024 6:57:43 오후 org.apache.catalina.core.StandardService startInternal
INFO: 서비스 [Catalina]을(를) 시작합니다.
1월 23, 2024 6:57:43 오후 org.apache.catalina.core.StandardEngine startInternal
INFO: 서버 엔진을 시작합니다: [Apache Tomcat/9.0.85]
1월 23, 2024 6:57:44 오후 org.apache.catalina.util.SessionIdGeneratorBase createSecureRandom
WARNING: [SHA1PRNG] 알고리즘을 사용하여, 세션 ID를 생성하기 위한 SecureRandom 객체를 생성하는데, [680] 밀리초가 소요됐습니다.
1월 23, 2024 6:57:46 오후 org.apache.jasper.servlet.TldScanner scanJars
INFO: 적어도 하나의 JAR가 TLD들을 찾기 위해 스캔되었으나 아무 것도 찾지 못했습니다. 스캔했으나 TLD가 없는 JAR들의 전체 목록을 보시려면, 로그 레벨을 디버그 레벨로 설정하십시오. 스캔 과정에서 불필요한 JAR들을 건너뛰면, 시스템 시작 시간과 JSP 컴파일 시간을 단축시킬 수 있습니다.
1월 23, 2024 6:57:46 오후 org.apache.catalina.core.ApplicationContext log
INFO: No Spring WebApplicationInitializer types detected on classpath
1월 23, 2024 6:57:46 오후 org.apache.catalina.core.ApplicationContext log
INFO: Initializing Spring root WebApplicationContext
INFO : org.springframework.web.context.ContextLoader - Root WebApplicationContext: initialization started
INFO : org.springframework.web.context.support.XmlWebApplicationContext - Refreshing Root WebApplicationContext: startup date [Tue Jan 23 18:57:46 KST 2024]; root of context hierarchy
INFO : org.springframework.beans.factory.xml.XmlBeanDefinitionReader - Loading XML bean definitions from ServletContext resource [/WEB-INF/spring/root-context.xml]
INFO : org.springframework.beans.factory.support.DefaultListableBeanFactory - Pre-instantiating singletons in org.springframework.beans.factory.support.DefaultListableBeanFactory@28f154cc: defining beans []; root of factory hierarchy
INFO : org.springframework.web.context.ContextLoader - Root WebApplicationContext: initialization completed in 1578 ms
1월 23, 2024 6:57:47 오후 org.apache.catalina.core.ApplicationContext log
INFO: Initializing Spring FrameworkServlet 'appServlet'
INFO : org.springframework.web.servlet.DispatcherServlet - FrameworkServlet 'appServlet': initialization started
INFO : org.springframework.web.context.support.XmlWebApplicationContext - Refreshing WebApplicationContext for namespace 'appServlet-servlet': startup date [Tue Jan 23 18:57:47 KST 2024]; parent: Root WebApplicationContext
INFO : org.springframework.beans.factory.xml.XmlBeanDefinitionReader - Loading XML bean definitions from ServletContext resource [/WEB-INF/spring/appServlet/servlet-context.xml]
INFO : org.springframework.context.annotation.ClassPathBeanDefinitionScanner - JSR-250 'javax.annotation.ManagedBean' found and supported for component scanning
INFO : org.springframework.context.annotation.ClassPathBeanDefinitionScanner - JSR-330 'javax.inject.Named' annotation found and supported for component scanning
INFO : org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor - JSR-330 'javax.inject.Inject' annotation found and supported for autowiring
INFO : org.springframework.beans.factory.support.DefaultListableBeanFactory - Pre-instantiating singletons in org.springframework.beans.factory.support.DefaultListableBeanFactory@58601e7a: defining beans [org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping#0,org.springframework.format.support.FormattingConversionServiceFactoryBean#0,org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter#0,org.springframework.web.servlet.handler.MappedInterceptor#0,org.springframework.web.servlet.mvc.method.annotation.ExceptionHandlerExceptionResolver#0,org.springframework.web.servlet.mvc.annotation.ResponseStatusExceptionResolver#0,org.springframework.web.servlet.mvc.support.DefaultHandlerExceptionResolver#0,org.springframework.web.servlet.handler.BeanNameUrlHandlerMapping,org.springframework.web.servlet.mvc.HttpRequestHandlerAdapter,org.springframework.web.servlet.mvc.SimpleControllerHandlerAdapter,org.springframework.web.servlet.resource.ResourceHttpRequestHandler#0,org.springframework.web.servlet.handler.SimpleUrlHandlerMapping#0,org.springframework.web.servlet.view.InternalResourceViewResolver#0,homeController,org.springframework.context.annotation.internalConfigurationAnnotationProcessor,org.springframework.context.annotation.internalAutowiredAnnotationProcessor,org.springframework.context.annotation.internalRequiredAnnotationProcessor,org.springframework.context.annotation.internalCommonAnnotationProcessor,org.springframework.context.annotation.ConfigurationClassPostProcessor$ImportAwareBeanPostProcessor#0]; parent: org.springframework.beans.factory.support.DefaultListableBeanFactory@28f154cc
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/index],methods=[GET],params=[],headers=[],consumes=[],produces=[],custom=[]}" onto public java.lang.String com.tutorial.tutorial.HomeController.home(java.util.Locale,org.springframework.ui.Model)
INFO : org.springframework.web.servlet.handler.SimpleUrlHandlerMapping - Mapped URL path [/resources/**] onto handler 'org.springframework.web.servlet.resource.ResourceHttpRequestHandler#0'
INFO : org.springframework.web.servlet.DispatcherServlet - FrameworkServlet 'appServlet': initialization completed in 1479 ms
1월 23, 2024 6:57:51 오후 org.apache.jasper.servlet.TldScanner scanJars
INFO: 적어도 하나의 JAR가 TLD들을 찾기 위해 스캔되었으나 아무 것도 찾지 못했습니다. 스캔했으나 TLD가 없는 JAR들의 전체 목록을 보시려면, 로그 레벨을 디버그 레벨로 설정하십시오. 스캔 과정에서 불필요한 JAR들을 건너뛰면, 시스템 시작 시간과 JSP 컴파일 시간을 단축시킬 수 있습니다.
1월 23, 2024 6:57:51 오후 org.apache.catalina.core.ApplicationContext log
INFO: No Spring WebApplicationInitializer types detected on classpath
1월 23, 2024 6:57:51 오후 org.apache.catalina.core.ApplicationContext log
INFO: Initializing Spring root WebApplicationContext
INFO : org.springframework.web.context.ContextLoader - Root WebApplicationContext: initialization started
INFO : org.springframework.web.context.support.XmlWebApplicationContext - Refreshing Root WebApplicationContext: startup date [Tue Jan 23 18:57:51 KST 2024]; root of context hierarchy
INFO : org.springframework.beans.factory.xml.XmlBeanDefinitionReader - Loading XML bean definitions from ServletContext resource [/WEB-INF/spring/root-context.xml]
INFO : org.springframework.beans.factory.support.DefaultListableBeanFactory - Pre-instantiating singletons in org.springframework.beans.factory.support.DefaultListableBeanFactory@121c1a08: defining beans []; root of factory hierarchy
INFO : org.springframework.web.context.ContextLoader - Root WebApplicationContext: initialization completed in 545 ms
1월 23, 2024 6:57:52 오후 org.apache.catalina.core.ApplicationContext log
INFO: Initializing Spring FrameworkServlet 'appServlet'
INFO : org.springframework.web.servlet.DispatcherServlet - FrameworkServlet 'appServlet': initialization started
INFO : org.springframework.web.context.support.XmlWebApplicationContext - Refreshing WebApplicationContext for namespace 'appServlet-servlet': startup date [Tue Jan 23 18:57:52 KST 2024]; parent: Root WebApplicationContext
INFO : org.springframework.beans.factory.xml.XmlBeanDefinitionReader - Loading XML bean definitions from ServletContext resource [/WEB-INF/spring/appServlet/servlet-context.xml]
INFO : org.springframework.context.annotation.ClassPathBeanDefinitionScanner - JSR-250 'javax.annotation.ManagedBean' found and supported for component scanning
INFO : org.springframework.context.annotation.ClassPathBeanDefinitionScanner - JSR-330 'javax.inject.Named' annotation found and supported for component scanning
INFO : org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor - JSR-330 'javax.inject.Inject' annotation found and supported for autowiring
INFO : org.springframework.beans.factory.support.DefaultListableBeanFactory - Pre-instantiating singletons in org.springframework.beans.factory.support.DefaultListableBeanFactory@2eb0932c: defining beans [org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping#0,org.springframework.format.support.FormattingConversionServiceFactoryBean#0,org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter#0,org.springframework.web.servlet.handler.MappedInterceptor#0,org.springframework.web.servlet.mvc.method.annotation.ExceptionHandlerExceptionResolver#0,org.springframework.web.servlet.mvc.annotation.ResponseStatusExceptionResolver#0,org.springframework.web.servlet.mvc.support.DefaultHandlerExceptionResolver#0,org.springframework.web.servlet.handler.BeanNameUrlHandlerMapping,org.springframework.web.servlet.mvc.HttpRequestHandlerAdapter,org.springframework.web.servlet.mvc.SimpleControllerHandlerAdapter,org.springframework.web.servlet.resource.ResourceHttpRequestHandler#0,org.springframework.web.servlet.handler.SimpleUrlHandlerMapping#0,org.springframework.web.servlet.view.InternalResourceViewResolver#0,homeController,org.springframework.context.annotation.internalConfigurationAnnotationProcessor,org.springframework.context.annotation.internalAutowiredAnnotationProcessor,org.springframework.context.annotation.internalRequiredAnnotationProcessor,org.springframework.context.annotation.internalCommonAnnotationProcessor,org.springframework.context.annotation.ConfigurationClassPostProcessor$ImportAwareBeanPostProcessor#0]; parent: org.springframework.beans.factory.support.DefaultListableBeanFactory@121c1a08
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/index],methods=[],params=[],headers=[],consumes=[],produces=[],custom=[]}" onto public java.lang.String com.fastcampus.book.HomeController.home()
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/list],methods=[],params=[],headers=[],consumes=[],produces=[],custom=[]}" onto public java.lang.String com.fastcampus.book.HomeController.showListPage()
INFO : org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping - Mapped "{[/register],methods=[],params=[],headers=[],consumes=[],produces=[],custom=[]}" onto public java.lang.String com.fastcampus.book.HomeController.showRegisterPage()
INFO : org.springframework.web.servlet.handler.SimpleUrlHandlerMapping - Mapped URL path [/resources/**] onto handler 'org.springframework.web.servlet.resource.ResourceHttpRequestHandler#0'
INFO : org.springframework.web.servlet.DispatcherServlet - FrameworkServlet 'appServlet': initialization completed in 1321 ms
1월 23, 2024 6:57:53 오후 org.apache.coyote.AbstractProtocol start
INFO: 프로토콜 핸들러 ["http-nio-8090"]을(를) 시작합니다.
1월 23, 2024 6:57:53 오후 org.apache.catalina.startup.Catalina start
INFO: 서버가 [10594] 밀리초 내에 시작되었습니다.
WARN : org.springframework.web.servlet.PageNotFound - No mapping found for HTTP request with URI [/tutorial/] in DispatcherServlet with name 'appServlet'
INFO : com.tutorial.tutorial.HomeController - Welcome home! The client locale is ko.
```

🔔
"http://localhost:8090/tutorial/index" 주소로 페이지가 잘 출력되었습니다.
그리고 회원가입 버튼을 누르면 "http://localhost:8090/tutorial/userJoinAction" 주소로 이동하게 됩니다.
그런데 아래와 같은 오류 페이지 페이지만 출력됩니다.
데이터베이스로 넘어가는 방법은 무엇인가요?

``` error
"HTTP 상태 404 – 찾을 수 없음",
"타입 상태 보고",
"설명 Origin 서버가 대상 리소스를 위한 현재의 representation을 찾지 못했거나, 그것이 존재하는지를 밝히려 하지 않습니다.",
"Apache Tomcat/9.0.85"
```

참고로 <form>이 있는 index.jsp 파일 코드는 아래와 같습니다.
``` index.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>우리의 첫 번째 페이지</title>
</head>
<body>
    Hello World!
    <form action="${pageContext.request.contextPath}/userJoinAction" method="post">
        <input type="text" name="userID">
        <input type="password" name="userPassword">
        <input type="submit" value="회원가입">
    </form>
</body>
</html>
```

그리고 제가 처음 기획한 것은 회원가입 성공 또는 실패 메시지 출력 후 회원가입 시 입력한 데이터 내용이 MySQL의 database에 추가되는 것입니다.

관련된 내용은 위의 Query에 전부 기입되어 있으며 action 관련 코드는 아래와 같습니다.

``` userJoinAction
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%
    request.setCharacterEncoding("UTF-8");
    String userID = request.getParameter("userID");
    String userPassword = request.getParameter("userPassword");

    if (userID == null || userPassword == null || userID.isEmpty() || userPassword.isEmpty()) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('아이디 또는 패스워드가 입력되지 않았습니다.');");
        script.println("history.back();");
        script.println("</script>");
        script.close();
        return;
    }

    UserDAO userDAO = new UserDAO();
    int result = userDAO.join(userID, userPassword);

    if (result == 1) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('회원가입에 성공했습니다.');");
        script.println("location.href = '${pageContext.request.contextPath}/index';");
        script.println("</script>");
        script.close();
    } else {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('회원가입에 실패했습니다. 다시 시도해주세요.');");
        script.println("history.back();");
        script.println("</script>");
        script.close();
    }
%>
```

🔔
위 대화에서 알려주신 내용으로 코드를 수정하였더니 변화가 계속 있습니다.
이제 조금만 더 수정하면 정상적으로 실행될 것 같기는 한데요.
아래와 같은 400 오류 내용이 출력되었습니다.
"설명 클라이언트 오류로서 인지된 어떤 문제로 인하여, 서버가 해당 요청을 처리할 수 없거나, 처리하지 않을 것입니다. (예: 잘못된 요청 문법, 유효하지 않은 요청 메시지 framing, 또는 신뢰할 수 없는 요청 라우팅)."
이를 해결하고 싶습니다. 도와주세요.

🔔
답변 감사합니다.
하나씩 수정해보겠습니다.

먼저 @PostMapping을 import하는 방법을 알려주세요.

🔔
@PostMapping에 대한 import 구문을 작성하였더니 아래와 같은 오류가 발생되었습니다.
"The import org.springframework.web.bind.annotation.PostMapping cannot be resolved"
@PostMapping이 아닌 다른 대안은 없을까요?

🔔
아래는 HomeController.java 및 userJoinAction.jsp의 코드 등이 있습니다.
아래 코드들을 조합해서 코드를 알맞게 수정해주세요.

``` HomeController.java
package com.tutorial.tutorial;

import java.text.DateFormat;

import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String root() {
        return "redirect:/index";
    }
	
	// 회원가입을 처리하는 메서드
    @RequestMapping(value = "/userJoinAction", method = RequestMethod.POST)
    public String userJoinAction(@RequestParam("id") String id,
                                 @RequestParam("password") String password,
                                 Model model) {
        // 여기에 회원가입 로직을 추가하면 됩니다.
        // 예를 들어, 데이터베이스에 회원 정보를 저장하거나 기타 비즈니스 로직을 수행할 수 있습니다.

        // 가입 성공 시 "회원가입에 성공했습니다." 메시지를 모델에 추가
        model.addAttribute("message", "회원가입에 성공했습니다.");

        // 회원가입 성공 후 메인 페이지로 리다이렉트
        return "redirect:/index";
    }
    
    @RequestMapping(value = "/yourEndpoint", method = RequestMethod.POST)
    public String yourPostMethod() {
        // Your method logic here
        return "yourViewName";
    }
}
```

``` userJoinAction.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%
    request.setCharacterEncoding("UTF-8");
    String userID = request.getParameter("userID");
    String userPassword = request.getParameter("userPassword");

    if (userID == null || userPassword == null || userID.isEmpty() || userPassword.isEmpty()) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('아이디 또는 패스워드가 입력되지 않았습니다.');");
        script.println("history.back();");
        script.println("</script>");
        script.close();
        return;
    }

    UserDAO userDAO = new UserDAO();
    int result = userDAO.join(userID, userPassword);

    if (result == 1) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('회원가입에 성공했습니다.');");
        script.println("location.href = '${pageContext.request.contextPath}/index';");
        script.println("</script>");
        script.close();
    } else {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('회원가입에 실패했습니다. 다시 시도해주세요.');");
        script.println("history.back();");
        script.println("</script>");
        script.close();
    }
%>
```

``` index.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>우리의 첫 번째 페이지</title>
</head>
<body>
    Hello World!
    <form action="${pageContext.request.contextPath}/userJoinAction" method="post">
        <input type="text" name="userID">
        <input type="password" name="userPassword">
        <input type="submit" value="회원가입">
    </form>
</body>
</html>
```

🔔
그렇다면 위의 모든 내용이 반영된 HomeController.java, UserDAO.java, UserDTO.java, DatabaseUtil.java, index.jsp, userJoinAction.jsp의 코드를 상세하게 알려주세요.
단, 내게 선택권을 주지 마시고 STS3 환경에 맞게 Spring Legacy Project와 MySQL의 tutorial이라는 이름의 database를 연결시켜주세요.

🔔
"org.springframework.jdbc" 이곳에 밑줄이 그어져 있습니다.
해결 방법은 무엇인가요?
"/tutorial/src/main/java/mysql-connector-java-5.1.42-bin.jar" 파일은 준비되어 있습니다.

🔔
이번에는 "http://localhost:8090/tutorial/index"부터 실행되지 않습니다.
에러 코드는 404입니다.
에러 메시지는 "요청된 리소스 [/tutorial/index]은(는) 가용하지 않습니다."입니다.
에러 설명은 "Origin 서버가 대상 리소스를 위한 현재의 representation을 찾지 못했거나, 그것이 존재하는지를 밝히려 하지 않습니다."입니다.
해결 방법은 무엇입니까?

----- This Project End (Fail) -----
