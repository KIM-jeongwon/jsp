<%@page import="com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8"%>
<%@ page import = "com.kabank.jee.kabankBean.LottoBean" %>
<%@ page import = "java.util. *"%>
<%@ include file = "../common/head.jsp" %>
<body>
<%@ include file = "../common/header.jsp" %>
<%@ include file = "../common/nav.jsp" %>
<%!
List<LottoBean> list ;
	public int countRow(String money){
		int count = Integer.parseInt(money)/1000;
		return count;
}
	public List<LottoBean> createLottos(int count){
		list = new ArrayList<>();
	return list;
}
	public List<LottoBean> createLotto(){
		int[] lotto = new int[6];
		String st="";
		LottoBean cy= new LottoBean();
		for(int i =0; i <lotto.length; i++){
			lotto[i] = (int)(Math.random()*45)+1;
				for(int j=0; j< 6 ; j++){
					if(lotto[i]==lotto[j]){
						i--;
						break;
					}
					st+= lotto[i];
				}
			cy.setLottoNum(st);
			list.add(cy);				
			}
		
		return list;
	}
%>
	<section>
	<article>
	<%
	int count = countRow("5000");
	createLotto();
	for(LottoBean lot : list){
		%>
		
		<%=lot.getLottoNum() %>
		<% 
	}
	%>	
	</article>
	</section>
	<aside></aside>
<%@ include file = "../common/footer.jsp" %>
</body>
</html>