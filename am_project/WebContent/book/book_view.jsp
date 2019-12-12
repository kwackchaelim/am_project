<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>도서목록 등록</title>
	
	<link rel="stylesheet" href="book_view.css" type="text/css" media="screen" />
	
    <script type="text/javascript" src="book_view.js"></script>
	

</head>

<body>

<div align="center">
		<header id="main_header">
		<div id="title">
			<img src="img/logo_1.png" style="float:left">
			<a href="main.jsp"><span>인천광역시</span>
			<span>미추홀도서관</span></a>
			<span>Incheon Metropolitan City Michuhol Library</span>
		</div>
		<nav id="main_gnb">
			<ul>
				<li><a href="main.jsp">메인페이지</a></li>
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
		<nav id="route">
	    	<ul>
				<a href="main.jsp"><li>HOME</li></a>
				<li> ▶ </li>
	            <li>관리자 페이지</li>
				<li> ▶ </li>
	            <li>자료 등록</li>
			</ul>
		</nav>
	</header>
	<div id="content">
		<aside id="main_aside">
        	<article id="sub_menu">
				<ul>
					<li>자료 정리</li>
				</ul>
				<ul>
					<a href="book_list.jsp"><li>자료 검색</li></a><hr>
					<li style="font-weight: bold;">자료 등록</li><hr>
				</ul>
            </article>
		</aside>
	<section id="main_section">
	        <article id="main_article">
				<ul id="article_title">
					<li>자료 정리</li>
				</ul>
	<form name="form1" method="post" action="BookController">
	
		<input type="hidden" name="action" value=${action}>
		<input type="hidden" name="bookNumber" value=${bookDTO.bookNumber}>
		
		<table>
			<tr>
				<th>도서명</th>
				<td><input type=text size=40 name=bookName value=${bookDTO.bookName}></td>
			</tr>
			<tr>
				<th>저자</th>
				<td><input type=text size=40 name=author value=${bookDTO.author}></td>
			</tr>
			<tr>
				<th>출판사</th>
				<td><input type=text size=40 name=publishingHouse value=${bookDTO.publishingHouse}></td>
			</tr>
			<tr>
				<th>분류</th>
				<td><input type=text size=40 name=category value=${bookDTO.category}></td>
			</tr>
			<tr>
				<th>청구기호</th>
				<td><input type=text size=40 name=symbol value=${bookDTO.symbol}></td>
			</tr>
			<tr>
				<th>상태</th>
				<td><input type=text size=40 name=status value=${bookDTO.status}></td>
			</tr>
			<tr>
				<td colspan=2 align=center>
					<input type="button" id="insert" value="입력" onClick="insertcheck()">
					<input type="button" id="update" value="수정" onClick="updatecheck()">
					<input type="button" id="delete" value="삭제" onClick="deletecheck()">
					<input type="button" id="back" value="돌아가기" onClick="backcheck()">
				</td>
			</tr>
		</table>
	</form>
	</article>
	</section>
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