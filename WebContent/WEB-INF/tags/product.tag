<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="productName" required="true" rtexprvalue="true" %>
<%@ attribute name="id" required="true" rtexprvalue="true" %>
<%@ attribute name="productSize" required="true" rtexprvalue="true" %>
<%@ attribute name="price" required="true" rtexprvalue="true" %>
<%@ attribute name="quantity" required="true" rtexprvalue="true" %>


<div id=${id} class="product">
    <div>
        <table class="product_table">
            <tr>
                <td><div class="product_name">${productName}</div></td>
                <td id="id">${id}</td>
                <td id="size">${productSize}</td>
                <td id="price">${price}</td>
                <td>
                    <form action="#" method="post">
                        <input id="qty" type="text" name="quantity" value="${quantity}">
                        <input type="submit" name="add" value="Add to Cart">
                    </form>
                </td>
            </tr>
        </table>
    </div>
</div>