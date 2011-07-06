<%@page import="java.util.ArrayList"%>
<%@page import="com.epam.triimob.netbiscuits.xml.Show"%>
<%@page import="java.util.List"%>
<%@page import="com.epam.triimob.netbiscuits.request.TokenRequest"%>
<%@page import="com.epam.triimob.netbiscuits.utils.TemplateUtils"%>
<%@page import="com.epam.triimob.netbiscuits.xml.Authentication"%>
<%@page contentType="text/xml; charset=ISO-8859-1" %>
<%
	TokenRequest tokenRequest = (TokenRequest) session
			.getAttribute("tokenRequest");
	Authentication authentication = null;
	List<Show> clips = new ArrayList<Show>();
	if (tokenRequest != null) {
		authentication = tokenRequest.getAuthentication();
		tokenRequest.searchRequest(tokenRequest.getApiToken());
		if (tokenRequest.getClips() != null) {
			clips = tokenRequest.getClips();
		}

	}
%>

<?xml version="1.0" encoding="ISO-8859-1"?>
<page xmlns:nb="http://www.emoveo.de/netbiscuits" title="Search Clips">

	<jsp:include page="header.jsp" />
	
	<container>
		<column>
			<biscuit type="SEPARATOR">
				<hr />
			</biscuit>
		</column>
	</container>
	<container>
	<%
		if (tokenRequest == null) {
	%>
		<column>
			<biscuit type="TEXT">
				<headline>Sorry. Log in please.</headline>
				<richtext>[url="home.jsp"]Log in[/url]</richtext>
			</biscuit>
		</column>
	<%
		} else {
	%>
		<column>
			<LIST cols="2">
			   	<styles>
				    <style name="bgcolor2" value="#dddddd"/>
				    <style name="bgcolor3" value="#eeeeee"/>
		  		</styles>
		  		<headline>Clips</headline>
		  		<%if(clips == null){ %>
			  		<text>Sorry can't find Clips</text>
		  		<%
					}else{	%>
					<items>
					<%
		  			for (Show clip : clips) {
		  			%>
				     <item>
					       <img src="<%=clip.getThumbUrl()%>" alt=""/>
					       <text href="demo/link.jsp">
					         <%=clip.getName()%>
					       </text>
				     </item>
		  			<%
		  				}
					%>
					</items>
					<%
		  			}
		  		%>
		  		
	  		</LIST>
		</column>
		<%
			}
		%>
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