<%@page import="guestbook.GuestBookDao"%>
<%@page import="guestbook.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String password = request.getParameter("pass");
	String content = request.getParameter("content");

	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setContent(content);

	GuestBookDao dao = new GuestBookDao();
	boolean result = dao.insert(vo);

	response.sendRedirect("/guestbook/index.jsp"); // 주소창 변경
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록 추가</title>
</head>
<body>
	<%
		if(result==true){
	%>
	<h1>성공했습니다.</h1>
	
	<%}else{ %>
	
	<h1>실패했습니다.</h1>
	<%} %>
</body>
</html>