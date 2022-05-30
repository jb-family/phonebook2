<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>

<%
	
	//파라미터 꺼내기
	int id = Integer.parseInt(request.getParameter("id"));
	System.out.println(id);

	//id의 데이터 가져오기
	PhoneDao phoneDao = new PhoneDao();
	PersonVo personVo = phoneDao.getPerson(id);
	System.out.println(personVo);
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>전화번호 부</h1>
	<h2>수정폼</h2>
	<p>수정화면입니다. 아래 항목을 수정하고 "수정"버튼을 클릭하세요</p>
	<form action="./pbc">
		이름(name) <input type="text" name="name" value="<%= personVo.getName() %>"><br>
		핸드폰(hp) <input type="text" name="hp" value="<%= personVo.getHp() %>"><br>
		회사(company) <input type="text" name="company" value="<%= personVo.getCompany() %>"><br>
		<input hidden="" type="text" name="id" value="<%= personVo.getPersonId() %>"><br>
		<input hidden="" type="text" name="action" value="update"><br>
		<button>수정</button>
	</form>
</body>
</html>