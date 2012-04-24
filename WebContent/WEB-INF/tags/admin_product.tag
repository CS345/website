<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="productName" required="true" rtexprvalue="true" %>
<%@ attribute name="id" required="true" rtexprvalue="true" %>
<%@ attribute name="productSize" required="true" rtexprvalue="true" %>
<%@ attribute name="price" required="true" rtexprvalue="true" %>
<%@ attribute name="quantity" required="false" rtexprvalue="false" %>


<div id="product_${id}" class="product">
    <div>
        <table id="general_product_table" class="product_table">
            <tr>
                <td><div id="product_name">${productName}</div></td>
                <td id="product_id">${id}</td>
                <td id="product_size">${productSize}</td>
                <td id="product_price">${price}</td>
                <td>
                    <form action="#" method="post">
                        <input id="product_display_checkbox" type="checkbox" name="display" value="${productName}">
                    </form>
                </td>
            </tr>
        </table>
    </div>
</div>