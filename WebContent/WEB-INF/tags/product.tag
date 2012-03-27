<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="productName" required="true" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<div id=${id} class="product">
	${productName}
</div>