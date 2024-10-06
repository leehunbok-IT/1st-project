<%-- 
	스크립틀릿과 표현식을 이용해 로또 당첨 번호 출력
	table 태그를 사용하지 말 것 
--%>
<%@page import="com.jspstudy.ch03.vo.LottoNum"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로또 당첨 번호 리스트</title>
<style>
body {
    display: flex;
    justify-content: center;
    align-items: center; 
    padding : 60px 0;
    margin: 0; 
}
h2 {
    text-align: center;
    margin-bottom: 30px;
}
.container {
    width: 650px;
    margin: 20px auto;
    padding: 20px 20px 10px 20px;;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 10px 10px 15px rgba(0, 0, 0, 0.2); 
    text-align: center;
}
.time {
  display: flex;
    gap: 10px;
    justify-content: center;
    align-items: center;
    background-color: #fff; 
    padding: 5px;
    margin-bottom: 10px;
    border-radius: 2.5px;
	box-shadow: 0 0 0 10px #f0f0f0; 
    border: 2px solid #e0e0e0; 
}
.time h3 {
    color: #3366cc;
    padding: 5px 15px;
    font-size: 20px;
    font-weight: bold;
    margin: 0;
    width: 90px;
    text-align: center;
}
.time img {
    margin: 0;
	vertical-align: middle;
}
.bonus {
    font-size: 15px;
    color: #666;
	vertical-align: middle;
}
.link {
	font-size : 12px;
    display: flex;
    justify-content: center;
    padding: 20px 20px 0px 20px;
    gap: 20px;
}

.link a:hover {
    color: #0056b3;
}
</style>
</head>
<body>
    <div class="container">
        <h2>로또 당첨 번호 리스트</h2>
        <div class="lotto-list">
        <%
        ArrayList<LottoNum> lottoList = new ArrayList<LottoNum>();
        LottoNum lotto = new LottoNum("907회", 21, 27, 29, 38, 40, 44, 37);
        lottoList.add(lotto);
        lotto = new LottoNum("908회", 3, 16, 21, 22, 23, 44, 20);
        lottoList.add(lotto);
        lotto = new LottoNum("909회", 7, 24, 29, 30, 34, 35, 33);
        lottoList.add(lotto);
        lotto = new LottoNum("910회", 1, 11, 17, 27, 35, 39, 31);
        lottoList.add(lotto);
        lotto = new LottoNum("911회", 4, 5, 12, 14, 32, 42, 35);
        lottoList.add(lotto);
        lotto = new LottoNum("912회", 5, 8, 18, 21, 22, 38, 10);
        lottoList.add(lotto);
        lotto = new LottoNum("913회", 6, 14, 16, 21, 27, 37, 40);
        lottoList.add(lotto);
        lotto = new LottoNum("914회", 16, 19, 24, 33, 42, 44, 27);
        lottoList.add(lotto);
        lotto = new LottoNum("915회", 2, 6, 11, 13, 22, 37, 14);
        lottoList.add(lotto);
        lotto = new LottoNum("916회", 9, 21, 22, 32, 35, 36, 17);
        lottoList.add(lotto);

        String contextPath = request.getContextPath();
        
        for (int i = 0; i < lottoList.size(); i++) {
            LottoNum lottoNums = lottoList.get(i);
        %>
            <div class="time">
                <h3><%=lottoNums.getTimes()%></h3>
                <div>            				
                    <img src="<%=contextPath%>/images/lotto_img/ball_<%= String.format("%02d", lottoNums.getNum1()) %>.png"> 
                    <img src="<%=contextPath%>/images/lotto_img/ball_<%= String.format("%02d", lottoNums.getNum2()) %>.png">
                    <img src="<%=contextPath%>/images/lotto_img/ball_<%= String.format("%02d", lottoNums.getNum3()) %>.png">
                    <img src="<%=contextPath%>/images/lotto_img/ball_<%= String.format("%02d", lottoNums.getNum4()) %>.png">
                    <img src="<%=contextPath%>/images/lotto_img/ball_<%= String.format("%02d", lottoNums.getNum5()) %>.png">
                    <img src="<%=contextPath%>/images/lotto_img/ball_<%= String.format("%02d", lottoNums.getNum6()) %>.png">
                    <span class="bonus">&emsp; + 보너스번호</span>
                    &emsp; <img src="<%=contextPath%>/images/lotto_img/ball_<%=lottoNums.getBonusNum()%>.png">
                </div>
            </div>
        <%
        }
        %>
        </div>
    <div class="link">
        <a href="bookList.jsp" target="_blank">도서 리스트</a>
        <a href="lottoNumList.jsp" target="_blank">로또 당첨 번호 리스트</a>
    </div>
    </div>
</body>
</html>
