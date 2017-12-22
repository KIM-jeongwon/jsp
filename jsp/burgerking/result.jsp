<%@page import="com.sun.beans.decoder.ValueObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8"%>
<jsp:useBean id ="hamburger" class = "com.kabank.jee.kabankBean.BurgerKingBean" scope="request" />
<jsp:useBean id ="cock" class = "com.kabank.jee.kabankBean.BurgerKingBean" scope="request" />
<jsp:useBean id ="chip" class = "com.kabank.jee.kabankBean.BurgerKingBean" scope="request" />
<jsp:useBean id ="coffee" class = "com.kabank.jee.kabankBean.BurgerKingBean" scope="request" />
<jsp:useBean id ="bagel" class = "com.kabank.jee.kabankBean.BurgerKingBean" scope="request" />
<jsp:useBean id ="salad" class = "com.kabank.jee.kabankBean.BurgerKingBean" scope="request" />

<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp"%>
<body>
<a  href="#">HOME</a>
<a  href="../index.jsp">로그아웃</a>
<%@ include file="../common/nav.jsp"%>
<section>
<article>
<%@ page import ="java.util. *"%>
<%@ page import="com.kabank.jee.kabankBean.BurgerKingBean" %>

<%
/*
		<input type="hidden" name="hamburger" value="5500" /> 
		<input type="hidden" name="coke" value="1000" />
	    <input type="hidden" name="chip" value="1000" /> 
	    <input type="hidden" name="bagel" value="4000" /> 
	    <input type="hidden" name="salad" value="3000" /> 
	    <input type="hidden" name="coffee" value="900"  />
*/
		String hamburgerPrice = request.getParameter("hamburger");
		String cockPrice = request.getParameter("coke");
		String chipPrice = request.getParameter("chip");
		String bagelPrice = request.getParameter("bagel");
		String saladPrice = request.getParameter("salad");
		String coffeePrice = request.getParameter("coffee");
	    
		String hamburgerCount = request.getParameter("hamburger-count");
		String cockCount = request.getParameter("cock-count");
		String chipCount = request.getParameter("chip-count");
		String bagelCount = request.getParameter("bagel-count");
		String saladCount = request.getParameter("salad-count");
		String coffeeCount = request.getParameter("coffee-count");
		
	
		String place = request.getParameter("place");
			hamburger.setMenu("햄버거");
			hamburger.setPrice(hamburgerPrice);
			hamburger.setCount(hamburgerCount);
			
			cock.setMenu("콜라");
			cock.setPrice(cockPrice);
			cock.setCount(cockCount);
			
			chip.setMenu("감자칩");
			chip.setPrice(chipPrice);
			chip.setCount(chipCount);

			bagel.setMenu("베이글");
			bagel.setPrice(bagelPrice);
			bagel.setCount(bagelCount);

			salad.setMenu("샐러드");
			salad.setPrice(saladPrice);
			salad.setCount(saladCount);

			coffee.setMenu("커피");
			coffee.setPrice(coffeePrice);
			coffee.setCount(coffeeCount);
			
			List<BurgerKingBean> list = new ArrayList<>();
			list.add(hamburger);
			list.add(cock);
			list.add(bagel);
			list.add(salad);
			list.add(chip);
			list.add(coffee);
			int a = 0;
			int total = 0;
			%>
	 장소 : <%=place %> <br />
		-----------------------------------------------------------------------------</br>
		<%
		for(BurgerKingBean b : list){
			if(b.getCount()!=""){
			a =Integer.parseInt(b.getCount())*Integer.parseInt(b.getPrice());
			total +=a;
			%>
			주문한 물품<%=b %> 가격<%=a %> <br />
			<%
			}
%>
<%
		}
	%>
	------------------------------------------------------------------------------</br>
	총 가격은 <%=total +"원입니다." %>
	
	</article>
	</section>
	<aside></aside>
<%@ include file="../common/footer.jsp"%>
</body>
</html>