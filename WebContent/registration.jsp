<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="cs345" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account Activation</title>
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

		<cs345:box title="Registeration" id="registration_box">
			<div id="registration_form_box">
				<form id="reigstration_form">
					<div class="form_element">
						<label for="first_name_input">First Name: </label> <input
							type="text" name="first_name" id="first_name_input" />
					</div>
					<div class="form_element">
						<label for="last_name_input">Last Name: </label> <input
							type="text" name="last_name" id="last_name_input" />
					</div>
					<div class="form_element">
						<label for="email_input">Email Address: </label> <input
							type="text" name="email" id="email_input" />
					</div>

					<div class="form_element">
						<label for="password_input">Password: </label> <input
							type="password" name="password" id="password_input" />
					</div>

					<div class="form_element">
						<label for="confirm_password_input">Confirm Password: </label> <input
							type="password" name="confirm_password"
							id="confirm_password_input" />
					</div>

					<div class="form_element">
						<label for="bucs_num_input">Bucs Number: </label>
					</div>

					<div class="form_element">
						<input type="text" name="bucs_num" id="bucs_num_input" />
					</div>

					<div class="form_element">
						<input type="submit" value="Submit" />
					</div>
				</form>
			</div>
		</cs345:box>

	</div>
	<!--End Page Content-->
	<!--Begin Website Footer-->
	<div id="footer">&copy; Copyright 2012 SUNY Binghamton Food
		Co-Op. All Rights Reserved.</div>
	<!--End Website Footer-->
</body>
</html>