<%@page contentType="text/xml; charset=ISO-8859-1" %>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%
	session.removeAttribute("tokenRequest");
 	response.sendRedirect("home.jsp");
%>