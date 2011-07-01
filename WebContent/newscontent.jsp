<%@ page contentType="text/xml; charset=ISO-8859-1" %>
<?xml version="1.0" encoding="ISO-8859-1"?>
<page xmlns:nb="http://www.emoveo.de/netbiscuits" title="Artikel"> 

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
		<biscuit type="ARTICLE">
		<img src="./res/biscuits/article.gif" alt="ImageArticle"/>
		<richtext>
		Verb�ndete werden aufger�stet[br]
		[b]Rice verteidigt Waffenverk�ufe an Golfstaaten[/b]
		[br][br]

		US-Au�enministerin Condoleezza Rice hat die geplanten Waffenverk�ufe an mehrere Staaten in der Golfregion verteidigt. Es handele sich nicht um ein Tauschgesch�ft, sagte sie kurz nach dem Abflug zu einer viert�gigen Nahost-Reise. Die Verk�ufe seien Ergebnis einer jahrelangen Partnerschaft und eine Anerkennung der strategischen Bedeutung der Region. Es gebe gemeinsame Ziele in der Region, was Stabilit�t und Sicherheit betreffe, so die Au�enministerin.[br]
		[br]
		Am Wochenende war bekannt geworden, dass die US-Regierung allein an Saudi-Arabien Waffen im Wert von rund 20 Milliarden Dollar (14,6 Milliarden Euro) liefern will. F�r �gypten sind Milit�rhilfen in H�he von 13 Milliarden Dollar vorgesehen. Auch Israel soll R�stungsgelder von etwa 30 Milliarden Dollar erhalten. Der US-Kongress muss den Pl�nen noch zustimmen.
		[br][br]
		[b]Waffen gegen Al Kaida[/b][br]
		[br]

		Die USA wollen mit den Lieferungen die gem��igten Kr�fte in der Region unterst�tzen, um gegen "den negativen Einfluss von Al Kaida, Hisbollah, Syrien und des Irans" vorzugehen, sagte Rice.
		[br]
		Rice wird zusammen mit ihrem Kollegen aus dem Verteidigungsressort, Robert Gates, heute im �gyptischen Badeort Scharm al Scheich erwartet. Dort steht ein Treffen mit Au�enministern aus arabischen L�ndern auf dem Programm.
		[br]
		[br][br][b][color="#db001b"][url="news.jsp"]zur�ck ...[/url][/color][/b][br]
		</richtext>
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
 				 <link href="home.jsp"/>
			</item>
			<item position="4">
			     <text> |</text>
			</item>
			<item position="5">
			     <richtext>[b]imprint[/b]</richtext>
 				 <link href="home.jsp"/>
			</item>
		</biscuit>
	</column>
</container>

</page>
