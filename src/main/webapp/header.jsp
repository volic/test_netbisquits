<%
	String uri = request.getRequestURI();
%>
<container>
	<column>
		<biscuit type="IMAGEHEADER" height="35" fillcolor="FFFFFF"
			boxing="3">
			<img src="./res/imageset/biscuitlogo/biscuitlogo300.jpg" href="home.jsp"
				alt="home" />
			<imagesetx>
				<img src="./res/imageset/biscuitlogo/biscuitlogo100.jpg" href="home.jsp"
					alt="home" width="100" />
				<img src="./res/imageset/biscuitlogo/biscuitlogo140.jpg" href="home.jsp"
					alt="home" width="140" />
				<img src="./res/imageset/biscuitlogo/biscuitlogo200.jpg" href="home.jsp"
					alt="home" width="200" />
				<img src="./res/imageset/biscuitlogo/biscuitlogo240.jpg" href="home.jsp"
					alt="home" width="240" />
				<img src="./res/imageset/biscuitlogo/biscuitlogo300.jpg" href="home.jsp"
					alt="home" width="300" />
				<img src="./res/imageset/biscuitlogo/biscuitlogo400.jpg" href="home.jsp"
					alt="home" width="400" />
			</imagesetx>
		</biscuit>
	</column>
</container>

<container>
	<column>
		<biscuit type="BUTTONMENU">
			<styles>
				<style name="bgcolor" value="#db001b" />
				<style name="active-color" value="#979a9b" />
				<style name="active-bgcolor" value="#db001b" />
				<style name="inactive-color" value="#FFFFFF" />
				<style name="inactive-bgcolor" value="#db001b" />
			</styles>
			<items>
				<item  <%if(uri.endsWith("home.jsp")){ %> active="true" <% } %>>
					<link href="home.jsp">home</link>
				</item>
				<item <%if(uri.endsWith("media.jsp")){ %> active="true" <% } %>>
					<link href="media.jsp">media</link>
				</item>
				<item <%if(uri.endsWith("searchClips.jsp")){ %> active="true" <% } %>>
					<link href="searchClips.jsp">search clips</link>
				</item>
			</items>
		</biscuit>
	</column>
</container>