<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, sp.in.backend.menu_item"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>The Tavern Coffee House | Menu</title>
<link rel="icon" type="image/jpg"
	href="${pageContext.request.contextPath}/images/logo(2).png">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Updock&family=Inter:wght@300;400;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/menu.css?v=<%= System.currentTimeMillis() %>">
</head>
<body class="menu-body">

	<%
	List<menu_item> items = (List<menu_item>) request.getAttribute("items");
	%>

	<header class="navbar">
		<div class="logo">
			<a href="${pageContext.request.contextPath}/home.jsp"><img
				src="images/logo(2).png" alt="Logo"
				style="width: 100px; height: auto;"></a>
		</div>
		
		
		
		<nav class="nav-container">
			<div class="nav-links">
				<a href="home.jsp">Home</a> <a href="MenuServlet">Menu</a> <a
					href="about.jsp">About Us</a> <a href="contact.jsp">Contact Us</a>
				<i class="fa-solid fa-cart-shopping"></i>
			</div>

		</nav>
	</header>

	<div class="menu-page-container">


		<div class="menu-card">
			<div class="menu-header-main">
				<p class="brand-small">Code & Coffee</p>
				<h2>Menu</h2>
				<div class="divider"></div>
			</div>

			<div class="menu-grid">
				<div class="menu-column">
					<h3>Compile-Time Classics</h3>
					<%
					if (items != null) {
						for (menu_item item : items) {
							// Matching the category from your SQL Insert
							if (item.getCategory().equalsIgnoreCase("Compile-Time Classics")) {
					%>
					<div class="menu-item">
						<a href="itemDetail?id=<%=item.getId()%>"
							style="text-decoration: none; color: inherit;"> <strong><%=item.getName()%></strong>
						</a> <span class="item-dots"></span> <span class="item-price">$<%=String.format("%.2f", item.getPrice())%></span>
					</div>
					<%
					}
					}
					}
					%>

					<div class="sub-category">
						<h3>Runtime Refreshments</h3>
						<%
						if (items != null) {
							for (menu_item item : items) {
								if (item.getCategory().equalsIgnoreCase("Runtime Refreshments")) {
						%>
						<div class="menu-item">
							<span><%=item.getName()%></span> <span class="item-dots"></span>
							<span class="item-price">$<%=String.format("%.2f", item.getPrice())%></span>
						</div>
						<%
						}
						}
						}
						%>
					</div>
				</div>

				<div class="menu-column">
					<h3>Breakfast Buffers</h3>
					<%
					if (items != null) {
						for (menu_item item : items) {
							if (item.getCategory().equalsIgnoreCase("Breakfast Buffers")) {
					%>
					<div class="menu-item">
						<span><%=item.getName()%></span> <span class="item-dots"></span> <span
							class="item-price">$<%=String.format("%.2f", item.getPrice())%></span>
					</div>
					<%
					}
					}
					}
					%>

					<div class="sub-category">
						<h3>Plugin Patches</h3>
						<%
						if (items != null) {
							for (menu_item item : items) {
								if (item.getCategory().equalsIgnoreCase("Plugin Patches")) {
						%>
						<div class="menu-item">
							<span><%=item.getName()%></span> <span class="item-dots"></span>
							<span class="item-price">$<%=String.format("%.2f", item.getPrice())%></span>
						</div>
						<%
						}
						}
						}
						%>
					</div>
				</div>
			</div>

			<div class="menu-footer">
				* Add toppings (Nutella or Cream Cheese) with extra cost. <br>
				All packages include decorated box.
			</div>
		</div>
	</div>
</body>
</html>