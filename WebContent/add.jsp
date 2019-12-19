<%@page import="com.bigdata2019.emaillist.vo.EmaillistVo"%>
<%@page import="com.bigdata2019.emaillist.dao.EmaillistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String email = request.getParameter("email");
	
	EmaillistVo vo = new EmaillistVo();
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);
	
	EmaillistDao dao = new EmaillistDao();
	dao.insert(vo);
	
	response.sendRedirect("/emaillist01");
	
	
%>