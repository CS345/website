<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="cs345" tagdir="/WEB-INF/tags" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Binghamton Food Co-op</title>
<link rel='stylesheet' href='style.css' />
</head>
<body>
	<!--Begin Website Header-->
	<div class="container">
		<div id="header">
			<div id="logo">
				<img src="img/logo.png" />
			</div>
			<div id="user">
				<table id="loginfields">
					<tr>
						<td>Username</td>
						<td>Password</td>
					</tr>
					<tr>
						<td><input type="text" /></td>
						<td><input type="password" /></td>
					</tr>
					<tr>
						<td></td>
						<td><a id="forgotpw" href="#">Forgot password?</a></td>
					</tr>
				</table>
				<table id="loginbuttons">
					<tr>
						<td><a href="#">Register</a></td>
						<td><a href="#">Sign-In</a></td>
					</tr>
				</table>
			</div>

		</div>
		<div id="nav">
			<ul class="leftcolumn">
				<li><a href="#">Home</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Browse</a></li>
				<li><a href="#">Popular</a></li>
				<li><a href="#">New</a></li>
				<li><a href="#">Search</a></li>
			</ul>
			<ul class="rightcolumn">
				<li><a href="#" id="cartlink">My Cart (0)</a></li>
				<li><a href="#">Checkout</a></li>
			</ul>
		</div>
	</div>
	<!--End Website Header-->
	<!--Begin Page Content-->
	<div class="container">
		<cs345:box title="Popular Items" id="popularitems">
		Content
		</cs345:box>
		
		<cs345:box title="New Items" id="newitems">
		Content
		</cs345:box>
		
		<cs345:box title="Co-Op Goals" id="goals">
			<!-- Should get percentage dynamically -->
			<cs345:goal_bar percent="50"/>
			<cs345:goal_bar percent="75"/>
			<cs345:goal_bar percent="35"/>
		</cs345:box>
		
		
		<cs345:box title="About" id="about">
		Content
		</cs345:box>

		<cs345:box title="Facebook Feed" id="facebook">
		Content
		</cs345:box>
		
	</div>
	<!--End Page Content-->
	<!--Begin Website Footer-->
	<div id="footer">&copy; Copyright 2012 SUNY Binghamton Food
		Co-Op. All Rights Reserved.</div>
	<!--End Website Footer-->
</body>

</html>