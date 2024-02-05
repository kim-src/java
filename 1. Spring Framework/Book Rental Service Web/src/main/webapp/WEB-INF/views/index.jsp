<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>book rental service</title>
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
		    margin-right: 100px;
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
	        <li class="nav-item"><a href="http://localhost:8090/homework/register">고객등록</a></li>
	        <li class="nav-item"><a href="http://localhost:8090/homework/list">고객목록조회/수정</a></li>
	        <li class="nav-item"><a href="http://localhost:8090/homework/rentallist">고객대여리스트</a></li>
	        <li class="nav-item"><a href="http://localhost:8090/homework/rentalamount">고객대여금액조회</a></li>
	        <li class="nav-item"><a href="http://localhost:8090/homework/index">홈으로</a></li>
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
