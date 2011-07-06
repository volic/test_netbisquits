<%@ page contentType="text/xml; charset=ISO-8859-1" %>
<?xml version="1.0" encoding="ISO-8859-1"?>
<page xmlns:nb="http://www.emoveo.de/netbiscuits" title="Media"> 

<jsp:include page="header.jsp" />

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
	<column>
	<biscuit type="MEDIA" id="708936499">
		<settings>
		    <showimage>true</showimage>
		    <convertimage>false</convertimage>
		    <showstream>true</showstream>
		    <showteaser>true</showteaser>
		    <showdownload>true</showdownload>
		    <showtitle>true</showtitle>
		    <redirect>fallbackonly</redirect>
		    <poster src="res/Untitled picture.png" text="poster"/>
	  	</settings>
			<headline>Simpsons</headline>
			<mediaitem id="708936499"/>
	</biscuit>		
	</column>
</container>
<container>
	<column> 
		<biscuit type="SEPARATOR">
		</biscuit>
	</column>
</container>
<container>
	<column>
	<SHOWFILE borders="top">
	   <styles>
	      <style name="text-align" value="center"/>
	      <style name="header-align" value="center"/>
	      <style name="bgcolor" value="#dddddd"/>
	      <style name="bgcolor3" value="#ffffff"/>
	      <style name="border-color" value="#aaaaaa"/>
	      <style name="header-bgcolor" value="#800000"/>
	      <style name="header-color" value="#FFFFFF"/>
	      <style name="link-color" value="#D90000"/>
	   </styles>
	   <settings>
		<showdownload>true</showdownload>
		<showstream>true</showstream>
	   </settings>
	   <headline>Showfile Demo</headline>
	   <richtext>[i]Free static text[/i] here (optional)</richtext>
	   <mediaitem id="708936499" errormsg="[b]No files found![/b] 
	       Your handset may not support this type of media."/>
	</SHOWFILE> 
	</column>
</container>
<container>
	<column> 
		<biscuit type="SEPARATOR">
		</biscuit>
	</column>
</container>
<container>
	<column> 
		<biscuit type="FLASH">
		<headline>Flash Prototype</headline>
		<flashset>
			<flash src="res/flash/flyingsnail1.swf" />
		</flashset>
		<noflash>
	     	<richtext class="error">Flash not supported.</richtext>
	    </noflash>
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
