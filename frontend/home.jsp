<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Code & Coffee | Dashboard </title>
<link rel="icon" type ="image/jpg" href="${pageContext.request.contextPath}/images/logo(2).png">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Updock&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}CSS/homeStyle.css">
</head>
<body>

	<header class="navbar">
		<div class="logo">
			<a href="${pageContext.request.contextPath}/home.jsp"><img
				src="images/logo(2).png" alt="Logo"
				style="width: 100px; height: auto;"></a>
		</div>
		<nav class="nav-container">
			<div class="nav-links">
				<a href="home.jsp">Home</a> <a href="menu.jsp">Menu</a> <a
					href="about.jsp">About Us</a> <a href="contact.jsp">Contact Us</a>
			</div>
			<div class="nav-auth">
				<a href="login.jsp" class="login-link">Sign In</a> <a
					href="signup.jsp" class="signup-btn">SignUp</a>
			</div>
		</nav>
	</header>
	<div class="bg-container">
		<div class="Code-Coffee">Code & Coffee</div>
		<div class="tagline">Brewing Logic, One Cup at a Time</div>
		<div></div>
		<a href="${pageContext.request.contextPath}/menu.jsp"
			class="order-btn"> Order Now </a>
	</div>
</body>
</html>