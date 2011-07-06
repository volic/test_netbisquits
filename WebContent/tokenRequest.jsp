<%@page import="com.epam.triimob.netbiscuits.request.TokenRequest"%>
<%@page contentType="text/xml; charset=ISO-8859-1" %>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%
	session.setAttribute("tokenRequest", new TokenRequest(request.getParameter("login"),request.getParameter("password")));
 	//response.sendRedirect("home.jsp");
%>
<jsp:forward page="home.jsp"/>