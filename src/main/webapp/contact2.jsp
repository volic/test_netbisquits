<%@ page contentType="text/xml; charset=ISO-8859-1" %>
<?xml version="1.0" encoding="ISO-8859-1"?>
<page xmlns:nb="http://www.emoveo.de/netbiscuits" title="Kontakt"> 

<container>
	<column>
		<biscuit type="IMAGEHEADER" height="35" fillcolor="FFFFFF" boxing="3">
			<img src="./res/imageset/biscuitlogo/biscuitlogo300.jpg" href="home.jsp" alt="home"/> 			
			<imagesetx>
				<img src="./res/imageset/biscuitlogo/biscuitlogo100.jpg" href="home.jsp" alt="home" width="100"/> 			
				<img src="./res/imageset/biscuitlogo/biscuitlogo140.jpg" href="home.jsp" alt="home" width="140"/> 			
				<img src="./res/imageset/biscuitlogo/biscuitlogo200.jpg" href="home.jsp" alt="home" width="200"/> 			
				<img src="./res/imageset/biscuitlogo/biscuitlogo240.jpg" href="home.jsp" alt="home" width="240"/> 			
				<img src="./res/imageset/biscuitlogo/biscuitlogo300.jpg" href="home.jsp" alt="home" width="300"/> 			
				<img src="./res/imageset/biscuitlogo/biscuitlogo400.jpg" href="home.jsp" alt="home" width="400"/> 			
			</imagesetx>
		</biscuit>
	</column>
</container>

<container>
	<column>
		<biscuit type="BUTTONMENU">
			<styles>
	       		<style name="bgcolor" value="#db001b"/>
    	   		<style name="active-color" value="#979a9b"/>
    	   		<style name="active-bgcolor" value="#db001b"/>
     	   		<style name="inactive-color" value="#FFFFFF"/>
    	   		<style name="inactive-bgcolor" value="#db001b"/>
      		</styles>
			
			<items>
	  			<item active="true">
	  				<link href="home.jsp">home</link>
	  			</item>
	  			<item>
	  				<link href="home.jsp">company</link>
	  			</item>
	  			<item>
	  				<link href="home.jsp">products</link>
	  			</item>
	  			<item>
	  				<link href="home.jsp">services</link>
	  			</item>
			</items>	
		</biscuit>
	</column>
</container>

<container>
	<column>
		<biscuit type="SEPARATOR">
			<hr/>
		</biscuit>
	</column>
</container>

<container>
	<column>
		<biscuit type="TEXT">
			<headline>Netbiscuits.com[br][br]</headline>
			<richtext>powered by [br]dynetic solutions gmbh[br]Luxemburgerstr. 2[br]67659 Kaiserslautern [br][br]
			</richtext>
		</biscuit>
	</column>
</container>

<container>
	<biscuit type="form" action="./mailto" method="get">
		<row>
			<cell align="left">
				<text>[b]Name/company:[/b]</text>
			</cell>
		</row>
		<row>
			<cell align="left">
				<input type="text" name="name" maxlength="25" size="30"  align="left"/>
			</cell>
		</row>
				<row>
			<cell align="left">
				<text>[b]Email:[/b]</text>
			</cell>
		</row>
		<row>
			<cell align="left">
				<input type="text" name="email" maxlength="25" size="30"  align="left"/>
			</cell>
		</row>
		<row>
			<cell align="left">
				<text>[b]Message:[/b]</text>
			</cell>
		</row>
		<row>
			<cell align="left">
				<input type="textarea" name="message" rows="2" maxlength="25" size="30"  align="left"/>
			</cell>
		</row>
		<row>
			<cell align="left">
				<input type="hidden" name="successPage" value="./contact-sent.xml"/>
			</cell>
			<cell align="right">
				<input type="hidden" name="errorPage" value="./contact-notsent.xml"/>
			</cell>
		</row>
		<row>
			<cell align="left">
				<input type="hidden" name="recipient" value="sp@dynetic.de"/>
			</cell>
		</row>
		<row>
			<cell align="left">
				<input type="submit" value="... send" align="left"/>
			</cell>
		</row>
	</biscuit>
</container>

<container>
	<column>
		<biscuit type="SEPARATOR">
		</biscuit>
	</column>
</container>


<container>
	<column>
		<biscuit type="SEPARATOR">
			<hr/>
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
				<link href="home.jsp"/>
			</item>
			<item position="2">
			    <richtext>&#160;&#160;&#160;&#160;&#160;</richtext>
			</item>
			<item position="3">
			     <richtext>[b]contact[/b]</richtext>
 				 <link href="contact.jsp"/>
			</item>
			<item position="4">
			     <text> |</text>
			</item>
			<item position="5">
			     <richtext>[b]imprint[/b]</richtext>
 				 <link href="imprint.jsp"/>
			</item>
		</biscuit>
	</column>
</container>

</page>
