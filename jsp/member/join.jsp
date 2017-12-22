<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
</head>
	<%@ include file="../common/head.jsp"%>
		<header  id="join_header">
					<h1>회원 가입 </h1>
		</header>
<body>
		<section>
	<article>
		<form action="../index.jsp">
<table id ="join_table">
 <tr >
 	<td>아이디 </td>
 	<td id="join_table_can">
 	 <input id= "join_id" name= "join_id" type="text"  placeholder ="아이디 입력" />	
 	 <button id= "check_dupl_btn" name="check_dupl_btn" >중복확인</button>
 	 </td>
 	<tr >
 	<td>암호</td>
 	<td id="join_table_can">
 	<input id = "join_pass" name= "join_pass" type="text" placeholder ="암호 입력"  /></td>
 	</tr>
 	<tr >
 	<td>암호확인</td>
 	<td id="join_table_can">
 	<input  id= "join_pass" name= "join_pass" type="text" placeholder ="암호확인"  /></td>
 	</tr>
 	<tr >
 	<td>이름</td>
 	<td id="join_table_can">
 	 	<input type="text" name= "join_name" id="join_name" placeholder = "이름 입력"/></td>
 	</tr>	
 	<tr>
 	<td>가입일</td>
 	<td id="join_table_can"><input type="date" /></td>
 	</tr>
 	<tr >
 	<td>주민번호</td>
 	<td id="join_table_can">
 	<input type="text" name= "join_ssn" id= "join_name" placeholder ="주민등록번호 입력"/></td>
 	</tr>
 	<tr>
 	<td>주소</td>
 	<td id="join_table_can">
 	 	<input type="text" name= "join_addr" id="join_addr" placeholder ="주소 입력"/></td>
	</tr>
 	<tr>
 	<td>이메일</td>
 	<td id="join_table_can">
 	 	<input type="email" name= "join_email" id="join_email" placeholder ="E-mail 입력"/>
 	 	<select name="email_select" class="box" id="email_select" onChange="checkemailaddy();">
         <option value="" selected>선택하세요</option>
        <option value="naver.com">naver.com</option>
        <option value="hotmail.com">hotmail.com</option>
        <option value="hanmail.com">hanmail.com</option>
        <option value="yahoo.co.kr">yahoo.co.kr</option>
</select>
 	 	</td>
 	</tr>
 	<tr>
 	<td>전화번호</td>
 	<td id="join_table_can">
 	010 -
 	<input pattern="[0-9]{4}" type="tel" name= "phoneNum" placeholder ="앞자리 번호"/> -
 	<input pattern="[0-9]{4}" type="tel" name= "phoneNum" placeholder ="뒷자리 번호"/></td>
 </tr>
	<tr>
		<td colspan="2" >
		<button id="join_confirm_btn" >회원가입</button>
		</td>
	</tr>
 			</table>
 		</form>
	</article>
</section>
<%@ include file = "../common/footer.jsp"%>
<script src="../../js/join.js"></script>
</body>
</html>