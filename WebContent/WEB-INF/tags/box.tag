<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="title" required="true" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<div id=${id}>
	<div class="boxhead">
		<div class="boxhleft">
			<h1>${title}</h1>
		</div>
		<div class="boxhright"></div>
	</div>
	<div class="boxcontent">
		<jsp:doBody/>
	</div>
	<div class=boxfoot>
		<div class="boxfleft"></div>
		<div class="boxfright"></div>
	</div>
</div>
