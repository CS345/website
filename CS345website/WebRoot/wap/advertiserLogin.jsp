<%@ page contentType="text/vnd.wap.wml;charset=UTF-8"%>
<?xml version="1.0"?>
<!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/ wml_1.1.xml">
<wml>
<card title="美味屋">

<p> 
	用户名: <input name="input1" size="10"/><br/> 
	密码:  <input name="input2" size="10" /><br/>
	<a href="http://<%=getServletContext().getInitParameter("rooturl")%>WapAdvertiserLogin?username=$(input1)&amp;password=$(input2)">登陆</a>
</p>

</card> 


</wml>