<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<link rel="shortcut icon" href="../img/ee.ico" />
	<link rel="stylesheet" href="../css/index.css" />
	<link rel="stylesheet" href="../css/common.css" />
</head>
	<body>
		<div id="wrapper">
			<header id="index_header">
					<h1>BIT CAMP SAMPLE PROJECT</h1>
			</header>
				<section id="index_section">
					<article>
<table id ="index_table">

		<tr>
			<td colspan="5">
				<form action="burgerking/main.jsp">
					<table id="index_Login_box">
						<tr>
							<td >
							<input  id="index_input_id"  type="text" placeholder="ID 입력" />
							</td>
							<td rowspan="2">
							<button id ="index_login_btn">로그인</button>
							</td>
						</tr>
						<tr>
							<td><input id="index_input_pass" type="text" placeholder="PASSWORD 입력" /></td>
						</tr>
					</table>
				</form>
				<a id="go_admin_link" href="#">관리자</a>
				<a id="go_join_link" href="#">회원가입</a>
			</td>
		  </tr>
	   </table>
   </article>
</section>
</div>
<%@ include file = "common/footer.jsp" %>
</body>
</html>
