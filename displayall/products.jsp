<%@ page language="java" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" language="java"%>


<html>
<head>
				<!-- ---------------------------------------------  JavaScript  --------------------------------------------- -->
	<script type='text/javascript' src='<%=getServletContext().getInitParameter("rootdwr")%>dwr/interface/UserBean.js'></script>
  	<script type='text/javascript' src='<%=getServletContext().getInitParameter("rootdwr")%>dwr/engine.js'></script>
	<script type='text/javascript' src='<%=getServletContext().getInitParameter("rootdwr")%>dwr/util.js'></script>
				
	<script src="ajiechou.js" language="javascript"></script>
	<script type="text/javascript">
		function productsDisplay(){
			createXMLHttpRequest();
			xmlHttp.onreadystatechange = processProducts;
			var now = new Date();
			xmlHttp.open("GET", "GetProducts?date="+now.getTime());
			xmlHttp.send(null);
			
		}
		function processProducts(){
		
			if(xmlHttp.readyState == 4) { 
				if(xmlHttp.status == 200) {
						var result=xmlHttp.responseXML.getElementsByTagName("count");
						var count = result[0].childNodes[0].nodeValue;
						var upc=xmlHttp.responseXML.getElementsByTagName("upc");
						var name= xmlHttp.responseXML.getElementsByTagName("name");
						var price= xmlHttp.responseXML.getElementsByTagName("price");
						var quantity= xmlHttp.responseXML.getElementsByTagName("quantity");
						
						var productsDisplayTable = document.getElementById("productsDisplayTable");
						for (var i=productsDisplayTable.rows.length-1; i>0; i--){
							productsDisplayTable.deleteRow(i);
						}
						var otr;
						var otd;
						for (var j=0; j<count; j++){
							otr = productsDisplayTable.insertRow(-1);
						
							otd = otr.insertCell();
							otd.innerHTML=upc[j].childNodes[0].nodeValue;
							otd = otr.insertCell();
							otd.innerHTML=quantity[j].childNodes[0].nodeValue;
							otd = otr.insertCell();
						//	otd.style.backgroundColor="#AAE4A7";
							otd.innerHTML=price[j].childNodes[0].nodeValue;
							otd = otr.insertCell();
							otd.innerHTML=name[j].childNodes[0].nodeValue;
						}
				}
			}
		}	
	</script>
			<!-- ---------------------------------------------  JavaScript End --------------------------------------------- -->
			
<title>美味屋</title>
<style type="text/css">
<!--
.qiangdiao {
	color: #FF3300;
	font-weight: bold;
}
-->
</style>				
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

</head>
<body  onload="productsDisplay()" >
	<table>
		<tr>
			<td>
			<table id="productsDisplayTable"  width="595" border="1" bordercolor="#000000">
				<tr>
					<td width="100" > upc</td>
					<td width="158" bgcolor="#AAE4A7">name</td>
					<td width="196">price</td>
					<td width="90" bgcolor="#AAE4A7">quantity</td>
				</tr>
			</table>
			</td>
		</tr>
	</table>
</body>
</html>









