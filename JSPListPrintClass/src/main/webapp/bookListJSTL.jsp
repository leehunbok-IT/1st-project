<%-- 
	EL과 JSTL을 이용해 도서 리스트 출력하기
	table 태그를 사용할 것  
--%>
<%@page import="java.util.ArrayList"%>
<%@ page import = "com.jspstudy.ch03.vo.Book" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL과 JSTL을 이용해 도서 리스트 출력</title>

<style>
body {
    display: flex;
    justify-content: center;
    align-items: center; 
    padding : 60px 0;
    margin: 0; 
}
.container {
	width : 620px;
	margin : auto;
	padding : 0 60px; 
	box-shadow : 10px 10px 15px rgba(0, 0, 0, 0.2); 	
}
.list_title {
	margin : 0 auto;
	text-align : center; 
	width: 620px;
	border-bottom : 3px solid #688EA6;	
	margin-bottom : 10px;
}
.table {
    width: 100%;
    text-align: left;
    margin-bottom: 20px;
}
.table th, .table td {
    padding: 10px;
    border-collapse: collapse; 
    border-bottom: 2px dotted #737373;
    vertical-align: top;
}
.table img {
    width: 95px;
}
.table td {
    padding: 15px;
    text-align: left;
}
.info {
    display: flex;
    font-size : 14px;
    flex-direction: column;
    line-height: 1.6;
}
.title {
    font-weight: bold;
    margin-bottom: 10px;
}
.author, .price, .delivery {
    margin-bottom: 10px;
}
.table tbody tr:nth-child(5) td {
    border-bottom: 3px dotted #688EA6;
}
.link {
	display : flex;
	justify-content : center;
	padding : 20px 20px 10px 20px;
	gap : 20px;
}
</style>

</head>
<body>
<% 
    ArrayList<Book> bookList = new ArrayList<>();
    bookList.add(new Book("images/javawebprogramming.jpg", "[도서]프로젝트로 배우는 자바 웹 프로그래밍", "황희정 저 | 한빛아카데미 | 2014년 01월", "30,000원 --> 24,000원(20%할인) | 포인트 2,400원(10%지급)", "도착 예상일 : 지금 주문하면 오늘 도착예정 | 판매지수 : 1,980"));
    bookList.add(new Book("images/jsp&servlet.jpg", "[도서]뇌를 자극하는 JSP & Servlet", "김윤명 저 | 한빛미디어 | 2010년 12월", "30,000원 --> 27,000원(10%할인) | 포인트 2,700원(10%지급)", "도착 예상일 : 지금 주문하면 내일 도착예정 | 판매지수 : 1,023"));
    bookList.add(new Book("images/headfirstjsp.jpg", "[도서]Head First Servlet & JSP", "케이시 시에라/김종호 역 | 한빛미디어 | 2009년 02월", "32,000원 --> 25,600원(20%할인) | 포인트 2,560원(10%지급)", "도착 예상일 : 지금 주문하면 오늘 도착예정 | 판매지수 : 1,011"));
    bookList.add(new Book("images/jsp2.3webprogramming.jpg", "[도서]최범균의 JSP2.3 웹 프로그래밍", "최범균 저 | 가메출판사 | 2013년 02월", "25,000원 --> 22,500원(10%할인) | 포인트 2,250원(10%지급)", "도착 예상일 : 지금 주문하면 오늘 도착예정 | 판매지수 : 1,012"));
    bookList.add(new Book("images/jsp&servlet_oracle&eclipse.jpg", "[도서]백견불여일타 JSP & Servlet : Oracle&Eclipse", "성윤정 저 | 로드북 | 2014년 07월", "27,000원 --> 24,300원(10%할인) | 포인트 2,430원(10%지급)", "도착 예상일 : 지금 주문하면 내일 도착예정 | 판매지수 : 1,095"));

    request.setAttribute("bookList", bookList);
%>

<div class="container">
	<div class="list_title"><h2>도서 리스트</h2></div>
	<div class="list">
		<table class="table">
			<tbody>
			<c:forEach var="book" items="${bookList}">
				<tr>
					<td><img src="${book.img}" alt="book image"></td>
					<td>
                        <div class="info">
                            <div class="title">${book.title}</div>
                            <div class="author">${book.author}</div>
                            <div class="price">${book.price}</div>
                            <div class="delivery">${book.delivery}</div>
                        </div>
                    </td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="link">
		<a href="bookList.jsp" target="_blank">도서 리스트</a>
		<a href="lottoNumList" target="_blank">로또 당첨 번호 리스트</a>
	</div>
</div>
</body>
</html>
