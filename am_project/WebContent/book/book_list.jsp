<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>���������ȸ</title>
	<link rel="stylesheet" href="book.css" type="text/css" media="screen" />
	<script type="text/javascript" src="book_list.js"></script>
</head>
<body>
<div align=center>
	<header id="main_header">
		<div id="title">
			<img src="img/logo_1.png" style="float:left">
			<a href="main.jsp"><span>��õ������</span>
			<span>����Ȧ������</span></a>
			<span>Incheon Metropolitan City Michuhol Library</span>
		</div>
		<nav id="main_gnb">
			<ul>
				<li><a href="main.jsp">����������</a></li>
			</ul>
		</nav>
		<nav id="main_lnb">
			<ul>
				<li class="menu"><a href="#">�ڷ� �˻�</a>
					<div class="article">
						<a href="#">���� �˻�</a>
						<a href="#">��õ ����</a>
					</div>
				</li>
        	    <li class="menu"><a href="#">�̿� �ȳ�</a>
					<div class="article">
						<a href="#">������ ��ġ</a>
						<a href="#">������ �ȳ�</a>
						<a href="#">������ �ȳ�</a>
					</div>
				</li>
           		<li><a href="#">���� ������</a></li>
         		<li class="menu"><a href="#">������ ���</a>
					<div class="article">
						<a href="#">��ȭ ���</a>
						<a href="#">��ȭ ��</a>
					</div>
				</li>
        	</ul>
		</nav>
		<nav id="route">
	    	<ul>
				<a href="main.jsp"><li>HOME</li></a>
				<li> �� </li>
	            <li>������ ������</li>
				<li> �� </li>
	            <li>�ڷ� �˻�</li>
			</ul>
		</nav>
	</header>
	<div id="content">
		<aside id="main_aside">
        	<article id="sub_menu">
				<ul>
					<li>�ڷ� ����</li>
				</ul>
				<ul>
					<li style="font-weight: bold;">�ڷ� �˻�</li><hr>
					<a href="book_view.jsp"><li>�ڷ� ���</li></a><hr>
				</ul>
            </article>
		</aside>
	<section id="main_section">
	        <article id="main_article">
				<ul id="article_title">
					<li>�ڷ� �˻�</li>
				</ul>
	<form name="form1" method="post" action="BookController">
		<input type="hidden" name="action" value="list">
		<input type="hidden" name="bookNumber" value=0>
	
		<table border=1>
			<tr>
				<td colspan=7 align=right id="table_title">
        			<span>������</span>
    				<input type="text" align="left " name="searchBookName" value=${bookDTO.searchBookName}>
    				<input type="button" id="list" align=right value="�˻�" onClick="retrivalcheck()">
    				<input type="button" id="list1" align=right value="�߰�" onClick="addcheck()">
				</td>
			</tr>
			<tr>
				<th>��ȣ</th>
				<th>������</th>
				<th>����</th>
				<th>���ǻ�</th>
				<th>�з�</th>
				<th>û����ȣ</th>
				<th>����</th>
			</tr>
			<c:forEach var="i" items="${bookList}">
				<tr>
					<td><a href="javascript:editcheck(${i.bookNumber})">${i.bookNumber}</a></td>
					<td>${i.bookName}</td>
					<td>${i.author}</td>
					<td>${i.publishingHouse}</td>
					<td>${i.category}</td>
					<td>${i.symbol}</td>
					<td>${i.status}</td>
				</tr>
			</c:forEach>			
		</table>
	</form>
	</article>
</section>
	</div>
</body>
</html>