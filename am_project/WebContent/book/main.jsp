<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>미추홀도서관</title>
	<link rel="stylesheet" href="main.css" type="text/css" media="screen" />
	<script type="text/javascript" src="book_list.js"></script>
</head>
<body>
	<header id="main_header">
    	<div id="title">
      	  	<img src="img/logo_1.png" style="float:left">
			<span>인천광역시</span>
            <span>미추홀도서관</span>
			<span>Incheon Metropolitan City Michuhol Library</span>
        </div>
       	<nav id="main_gnb">
        	<ul>
             	<li><a href="book_list.jsp">관리자페이지</a></li>
            </ul>
        </nav>
        <nav id="main_lnb">
        	<ul>
            	<li class="menu"><a href="#">자료 검색</a>
					<div class="article">
						<a href="#">통합 검색</a>
						<a href="#">추천 도서</a>
					</div>
				</li>
             	<li class="menu"><a href="#">이용 안내</a>
					<div class="article">
						<a href="#">도서관 위치</a>
						<a href="#">도서관 안내</a>
						<a href="#">열람실 안내</a>
					</div>
				</li>
              	<li><a href="#">전자 도서관</a></li>
             	<li class="menu"><a href="#">도서관 행사</a>
					<div class="article">
						<a href="#">문화 행사</a>
						<a href="#">영화 상영</a>
					</div>
				</li>
            </ul>
        </nav>
    </header>
    <div id="content">
    	<section id="main_section">
       		<article id="serch">
				<img src="img/library1.jpg">
                <form name="form1" method="post" action="BooksController">
                	<input type="hidden" name="action" value="list">
					<input type="hidden" name="bookNumber" value=0>
					<input type="text" id="serchBookName" name="searchBookName" value=${bookDTO.searchBookName}>
                	<input type="button" id="list" value="조회" onClick="retrivalcheck()">
                </form>  
			</article>
        	<article class="main_article">
            	<ul>
					<li class="article_title">추천 도서</li>
					<img src="img/book1.jpg">
					<li class="book_title">도로시 죽이기</li>
					<li class="book_sub">고바야시 야스미<br>검은숲</li>				
					
				</ul>
                <ul>
                  	<img src="img/book2.jpg">
                  	<li class="book_title">소년이 온다</li>
					<li class="book_sub">한강<br>창비</li>		
				</ul>
                <ul>
               	  	<a href="#"><li class="plus">더보기</li></a>
                </ul>
			</article>
            <article class="main_article">
				<ul>
					<li class="article_title">어린이 영화 상영</li>
					<img src="img/movie1.jpg">
					<li class="book_title">위 베어 베어스<br>:베이비 베어스</li>
					<li class="book_sub">71분 상영</li>				
				</ul>
                <ul>
					<img src="img/movie2.jpg">
					<li class="book_title">보스 베이비</li>
					<li class="book_sub">97분 상영</li>				
				</ul>
                <ul>
                	<a href="#"><li class="plus">더보기</li></a>
                </ul>
        	</article>
            <article class="main_article">
            	<ul>
					<li class="article_title">이 달의 행사</li>
					<img src="img/event1.jpg">
					<li class="book_title">테마인문고전특강</li>
				</ul>
                <ul>
                	<a href="#"><li class="plus">더보기</li></a>
                </ul>
        	</article>
        </section>  
        <aside id="main_aside">
        	<article id="login">
            	<table border="0" margin="0" padding="0">
                	<tr>
                    	<td><input type="text" placeholder="아이디를 입력하시오." class="idpasswd"></td>
                    	<td rowspan="2"><a href="#"><input type="button" value="로그인" class="button"></a></td>
                    </tr>
                    <tr>
                    	<td><input type="password" placeholder="비밀번호를 입력하시오." class="idpasswd"></td>
                    </tr>
                </table>
                <a href="#">아이디/비밀번호찾기</a>
                <a href="#">회원가입</a>    
        	</article>
            <article id="room">
            	<ul id="room_title">
					<li>열람실 정보</li>
                </ul>
                <ul class="room_sub">
					<li>제1열람실</li>
					<li class="roomp">120 / 120</li>
                    <a href="#"><input type="button" value="예약"></a>
				</ul>
                <ul  class="room_sub">
					<li>제2열람실</li>
					<li class="roomp">120 / 120</li>
                    <a href="#"><input type="button" value="예약"></a>
				</ul>
            </article>
        </aside>
    </div>
    <footer id="main_footer">
    	<hr>
    	<a href="#"><h4>개인정보처리방침</h4></a>
        |
        <a href="#"><h4>이메일무단수집거부정책</h4></a>
        |
       	<a href="#"><h4>도서관서비스현장</h4></a>
        <address>(21588) 인천광역시 남동구 인주대로776번길 53 (구월동 610-4)</address>
    </footer>
</body>
</html>