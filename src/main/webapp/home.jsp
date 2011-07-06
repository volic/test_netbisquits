<%@page import="com.epam.triimob.netbiscuits.request.TokenRequest"%>
<%@page import="com.epam.triimob.netbiscuits.utils.TemplateUtils"%>
<%@page import="com.epam.triimob.netbiscuits.xml.Authentication"%>
<%@page contentType="text/xml; charset=ISO-8859-1" %>
<%
	TokenRequest tokenRequest = (TokenRequest) session.getAttribute("tokenRequest");
	Authentication authentication = null;
	if(tokenRequest != null){
		authentication = tokenRequest.getAuthentication();
		pageContext.setAttribute("name", authentication.getFirstName() + " " + authentication.getLastName());		
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
	<% if(authentication != null){ %>
		<container>
			<column>
				<biscuit type="TEXT">
					<headline>Wellcome</headline>
					<text><%=authentication.getFirstName() + " " + authentication.getLastName()%></text>
					<richtext>[url="logout.jsp"]Log out[/url]</richtext>
				</biscuit>
			</column>
		</container>
	<% }else{ %>
	<container>
		<column>
			<biscuit type="TEXT">
				<headline>Home</headline>
				<text>Authorization
			</text>
			</biscuit>
		</column>
	</container>

	<container>
		<column>
			<biscuit type="form" action="tokenRequest.jsp" method="post">
				<input type="hidden" name="force_utc" value="true" />
				<input type="hidden" name="remember_me" value="0" />
				
				<row>

					<cell>
						<text>[b]Login:[/b]</text>
					</cell>
					<cell align="">
						<input type="text" name="login" align="">

						</input>
					</cell>
				</row>
				<row>

					<cell>
						<text>[b]Password:[/b]</text>
					</cell>
					<cell align="">
						<input type="password" name="password" align="">

						</input>
					</cell>
				</row>
				<row>
					<cell align="">
						<input type="submit" value="Authorize" align="" />
					</cell>
				</row>
			</biscuit>
		</column>
	</container>
	<% }%>
	<container>
		<column>
			<biscuit type="SEPARATOR">
				<hr />
			</biscuit>
		</column>
	</container>

	<container>
		<column>
			<biscuit type="TEASER">
				<styles>
				</styles>
				<headline>News</headline>
				<richtext align="left">[br]Developer Program &amp; Community
					Support launch in
					sept.07[br][br][b][color="#db001b"][url="news.jsp"]...
					more[/url][/color][/b][br][br]
			</richtext>
				<img src="./res/biscuits/Frame1.png" alt="myImage" />
			</biscuit>
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