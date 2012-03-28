<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="percent" required="true" rtexprvalue="true" %>
<link rel='stylesheet' href='goal_bar_tag.css' />

<div id="goal_outer" class="rounded25">
	<div id="bar_container" class="rounded20">
		<div id="bar" class="rounded20" style="width:${percent}%;"></div>
	</div>
</div>
