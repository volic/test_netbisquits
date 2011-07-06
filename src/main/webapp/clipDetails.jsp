<%@page import="com.epam.triimob.netbiscuits.xml.Show"%>
<%@page import="com.epam.triimob.netbiscuits.request.TokenRequest"%>
<%@page import="com.epam.triimob.netbiscuits.utils.TemplateUtils"%>
<%@page import="com.epam.triimob.netbiscuits.xml.Authentication"%>
<%@ page contentType="text/xml; charset=ISO-8859-1" %>
<%
	TokenRequest tokenRequest = (TokenRequest) session.getAttribute("tokenRequest");
	Show clip = null;
	int clipId = request.getParameter("id");
	if(tokenRequest != null){
		for( Show searchClip :tokenRequest.getClips()){
			if(searchClip.getId() == clipId){
				clip = searchClip;
			}	
		}
	}
	else
	{
		request.sendRedirect("home.jsp");
	}
	
	pageContext.setAttribute("isloggedIn",tokenRequest != null);
%>

<?xml version="1.0" encoding="ISO-8859-1"?>
<page xmlns:nb="http://www.emoveo.de/netbiscuits" title="Netbiscuits">

	<jsp:include page="header.jsp" />
	<container>
		<column>
			<biscuit type="SEPARATOR">
				<hr />
			</biscuit>
		</column>
	</container>

	<container>
		<column>
			<% if(clip == null){ %>
				<FORWARD url="search.jsp" timer="2"/>	
			<%}else{%>
			<biscuit type="SEPARATOR">
				<TEASER behavior="fold">
				    <headline><%=clip.getTitle() %></headline>
				    <img src="<%=clip.getThumbUrl() %>" alt="Alt Text" zoom="true"/>
				    <text align="left">
				        [b]Title:[/b] <%=clip.getName() %>[br]
				        [b]Description:[/b] <%=clip.getDescription() %>[br]
				        [b]Duration:[/b] <%=clip.getDuration() %>
				    </text>
				</TEASER>
			</biscuit>
			<%}%>
		</column>
	</container>

	<container>
		<column>
			<biscuit type="SEPARATOR">
				<hr />
			</biscuit>
		</column>
	</container>

	<container>
		<column>
			<biscuit type="PAGEFOOTER">
				<styles>
					<style name="color" value="#FFFFFF"></style>
					<style name="link-color" value="#FFFFFF"></style>
					<style name="bgcolor" value="#db001b"></style>
				</styles>
				<item position="1">
					<richtext>[b]home[/b]</richtext>
					<link href="home.jsp" />
				</item>
				<item position="2">
					<richtext>&#160;&#160;&#160;&#160;&#160;</richtext>
				</item>
				<item position="3">
					<richtext>[b]contact[/b]</richtext>
					<link href="contact.jsp" />
				</item>
				<item position="4">
					<text> |</text>
				</item>
				<item position="5">
					<richtext>[b]imprint[/b]</richtext>
					<link href="imprint.jsp" />
				</item>
			</biscuit>
		</column>
	</container>

</page>