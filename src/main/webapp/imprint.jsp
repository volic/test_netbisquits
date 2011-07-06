<%@ page contentType="text/xml; charset=ISO-8859-1" %>
<?xml version="1.0" encoding="ISO-8859-1"?>
<page xmlns:nb="http://www.emoveo.de/netbiscuits" title="Impressum"> 

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
			<richtext>[br][b]Netbiscuits.com[/b][br][br] powered by[br][b]dynetic solutions GmbH[/b][br]Luxemburger Straße 2[br]67657 Kaiserslautern[br]GERMANY[br][br]Telefon: +49 631 30314-00[br]Telefax: +49 631 30314-14[br][br]E-Mail: info@dynetic.de[br]URL: http://www.dynetic.de/[br][br]</richtext>
			<richtext>Registergericht: Amtsgericht Kaiserslautern[br]Registernummer: HR B 3604[br][br]Umsatzsteuer-Identifikationsnummer gemäß  27 a UStG:[br]DE 211216994[br][br]Geschäftsführung:[br]Dipl.-Wirtsch.-Ing. Guido Moggert -[br]Finance[br]</richtext>
			<richtext>Dipl.-Wirtsch.-Ing. Michael Neidhöfer -[br]Sales &amp; Marketing[br]Dipl.-Wirtsch.-Ing. Christian Reitz -[br]Software &amp; Technology[br]Martin Süß - IT &amp; Operations</richtext>
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
