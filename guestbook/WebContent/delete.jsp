<%@page import="guestbook.GuestBookDao"%>
<%@page import="guestbook.GuestbookVo"%>

<%
	String no = request.getParameter( "no" );
	String password = request.getParameter( "password" );
	
	GuestbookVo vo = new GuestbookVo();
	vo.setNo( Long.parseLong( no ) );
	vo.setPassword(password);
	
	GuestBookDao dao = new GuestBookDao();
	dao.delete(vo);
	
	response.sendRedirect( "/guestbook" );
%>